package rx.internal.operators;

import java.util.ArrayList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.producers.ProducerArbiter;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.UtilityFunctions;
import rx.observables.GroupedObservable;
import rx.observers.Subscribers;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.Subscriptions;

public final class OperatorGroupBy<T, K, V> implements Operator<GroupedObservable<K, V>, T> {
    final int bufferSize;
    final boolean delayError;
    final Func1<? super T, ? extends K> keySelector;
    final Func1<Action1<K>, Map<K, Object>> mapFactory;
    final Func1<? super T, ? extends V> valueSelector;

    public static final class GroupByProducer implements Producer {
        final GroupBySubscriber<?, ?, ?> parent;

        public GroupByProducer(GroupBySubscriber<?, ?, ?> groupBySubscriber) {
            this.parent = groupBySubscriber;
        }

        public final void request(long j) {
            this.parent.requestMore(j);
        }
    }

    public static final class GroupBySubscriber<T, K, V> extends Subscriber<T> {
        static final Object NULL_KEY = new Object();
        final Subscriber<? super GroupedObservable<K, V>> actual;
        final int bufferSize;
        final AtomicBoolean cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final Queue<K> evictedKeys;
        final AtomicInteger groupCount;
        final Map<Object, GroupedUnicast<K, V>> groups;
        final Func1<? super T, ? extends K> keySelector;
        final GroupByProducer producer;
        final Queue<GroupedObservable<K, V>> queue = new ConcurrentLinkedQueue();
        final AtomicLong requested;
        /* renamed from: s */
        final ProducerArbiter f766s = new ProducerArbiter();
        final Func1<? super T, ? extends V> valueSelector;
        final AtomicInteger wip;

        static class EvictionAction<K> implements Action1<K> {
            final Queue<K> evictedKeys;

            EvictionAction(Queue<K> queue) {
                this.evictedKeys = queue;
            }

            public void call(K k) {
                this.evictedKeys.offer(k);
            }
        }

        public GroupBySubscriber(Subscriber<? super GroupedObservable<K, V>> subscriber, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z, Func1<Action1<K>, Map<K, Object>> func13) {
            this.actual = subscriber;
            this.keySelector = func1;
            this.valueSelector = func12;
            this.bufferSize = i;
            this.delayError = z;
            this.f766s.request((long) i);
            this.producer = new GroupByProducer(this);
            this.cancelled = new AtomicBoolean();
            this.requested = new AtomicLong();
            this.groupCount = new AtomicInteger(1);
            this.wip = new AtomicInteger();
            if (func13 == null) {
                this.groups = new ConcurrentHashMap();
                this.evictedKeys = null;
                return;
            }
            this.evictedKeys = new ConcurrentLinkedQueue();
            this.groups = createMap(func13, new EvictionAction(this.evictedKeys));
        }

        private Map<Object, GroupedUnicast<K, V>> createMap(Func1<Action1<K>, Map<K, Object>> func1, Action1<K> action1) {
            return (Map) func1.call(action1);
        }

        public final void setProducer(Producer producer) {
            this.f766s.setProducer(producer);
        }

        public final void onNext(T t) {
            if (!this.done) {
                Queue queue = this.queue;
                Subscriber subscriber = this.actual;
                try {
                    Object obj;
                    Object call = this.keySelector.call(t);
                    Object obj2 = 1;
                    if (call != null) {
                        obj = call;
                    } else {
                        obj = NULL_KEY;
                    }
                    GroupedUnicast groupedUnicast = (GroupedUnicast) this.groups.get(obj);
                    if (groupedUnicast == null) {
                        if (!this.cancelled.get()) {
                            groupedUnicast = GroupedUnicast.createWith(call, this.bufferSize, this, this.delayError);
                            this.groups.put(obj, groupedUnicast);
                            this.groupCount.getAndIncrement();
                            obj2 = null;
                            queue.offer(groupedUnicast);
                            drain();
                        } else {
                            return;
                        }
                    }
                    try {
                        groupedUnicast.onNext(this.valueSelector.call(t));
                        if (this.evictedKeys != null) {
                            while (true) {
                                t = this.evictedKeys.poll();
                                if (t == null) {
                                    break;
                                }
                                GroupedUnicast groupedUnicast2 = (GroupedUnicast) this.groups.get(t);
                                if (groupedUnicast2 != null) {
                                    groupedUnicast2.onComplete();
                                }
                            }
                        }
                        if (obj2 != null) {
                            this.f766s.request(1);
                        }
                    } catch (T t2) {
                        unsubscribe();
                        errorAll(subscriber, queue, t2);
                    }
                } catch (T t22) {
                    unsubscribe();
                    errorAll(subscriber, queue, t22);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            this.groupCount.decrementAndGet();
            drain();
        }

        public final void onCompleted() {
            if (!this.done) {
                for (GroupedUnicast onComplete : this.groups.values()) {
                    onComplete.onComplete();
                }
                this.groups.clear();
                if (this.evictedKeys != null) {
                    this.evictedKeys.clear();
                }
                this.done = true;
                this.groupCount.decrementAndGet();
                drain();
            }
        }

        public final void requestMore(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            }
            BackpressureUtils.getAndAddRequest(this.requested, j);
            drain();
        }

        public final void cancel() {
            if (this.cancelled.compareAndSet(false, true) && this.groupCount.decrementAndGet() == 0) {
                unsubscribe();
            }
        }

        public final void cancel(K k) {
            if (k == null) {
                k = NULL_KEY;
            }
            if (this.groups.remove(k) != null && this.groupCount.decrementAndGet() == null) {
                unsubscribe();
            }
        }

        final void drain() {
            if (this.wip.getAndIncrement() == 0) {
                Queue queue = this.queue;
                Subscriber subscriber = this.actual;
                int i = 1;
                while (!checkTerminated(this.done, queue.isEmpty(), subscriber, queue)) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        GroupedObservable groupedObservable = (GroupedObservable) queue.poll();
                        boolean z2 = groupedObservable == null;
                        if (!checkTerminated(z, z2, subscriber, queue)) {
                            if (z2) {
                                break;
                            }
                            subscriber.onNext(groupedObservable);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (j2 != 0) {
                        if (j != Long.MAX_VALUE) {
                            BackpressureUtils.produced(this.requested, j2);
                        }
                        this.f766s.request(j2);
                    }
                    i = this.wip.addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }

        final void errorAll(Subscriber<? super GroupedObservable<K, V>> subscriber, Queue<?> queue, Throwable th) {
            queue.clear();
            queue = new ArrayList(this.groups.values());
            this.groups.clear();
            if (this.evictedKeys != null) {
                this.evictedKeys.clear();
            }
            queue = queue.iterator();
            while (queue.hasNext()) {
                ((GroupedUnicast) queue.next()).onError(th);
            }
            subscriber.onError(th);
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<? super GroupedObservable<K, V>> subscriber, Queue<?> queue) {
            if (z) {
                z = this.error;
                if (z) {
                    errorAll(subscriber, queue, z);
                    return true;
                } else if (z2) {
                    this.actual.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }

    static final class GroupedUnicast<K, T> extends GroupedObservable<K, T> {
        final State<T, K> state;

        public static <T, K> GroupedUnicast<K, T> createWith(K k, int i, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z) {
            return new GroupedUnicast(k, new State(i, groupBySubscriber, k, z));
        }

        protected GroupedUnicast(K k, State<T, K> state) {
            super(k, state);
            this.state = state;
        }

        public final void onNext(T t) {
            this.state.onNext(t);
        }

        public final void onError(Throwable th) {
            this.state.onError(th);
        }

        public final void onComplete() {
            this.state.onComplete();
        }
    }

    static final class State<T, K> extends AtomicInteger implements OnSubscribe<T>, Producer, Subscription {
        private static final long serialVersionUID = -3852313036005250360L;
        final AtomicReference<Subscriber<? super T>> actual;
        final AtomicBoolean cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final K key;
        final AtomicBoolean once;
        final GroupBySubscriber<?, K, T> parent;
        final Queue<Object> queue = new ConcurrentLinkedQueue();
        final AtomicLong requested;

        public State(int i, GroupBySubscriber<?, K, T> groupBySubscriber, K k, boolean z) {
            this.parent = groupBySubscriber;
            this.key = k;
            this.delayError = z;
            this.cancelled = new AtomicBoolean();
            this.actual = new AtomicReference();
            this.once = new AtomicBoolean();
            this.requested = new AtomicLong();
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was ".concat(String.valueOf(j)));
            } else if (j != 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                drain();
            }
        }

        public final boolean isUnsubscribed() {
            return this.cancelled.get();
        }

        public final void unsubscribe() {
            if (this.cancelled.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.parent.cancel(this.key);
            }
        }

        public final void call(Subscriber<? super T> subscriber) {
            if (this.once.compareAndSet(false, true)) {
                subscriber.add(this);
                subscriber.setProducer(this);
                this.actual.lazySet(subscriber);
                drain();
                return;
            }
            subscriber.onError(new IllegalStateException("Only one Subscriber allowed!"));
        }

        public final void onNext(T t) {
            if (t == null) {
                this.error = new NullPointerException();
                this.done = true;
            } else {
                this.queue.offer(NotificationLite.next(t));
            }
            drain();
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public final void onComplete() {
            this.done = true;
            drain();
        }

        final void drain() {
            if (getAndIncrement() == 0) {
                Queue queue = this.queue;
                boolean z = this.delayError;
                Subscriber subscriber = (Subscriber) this.actual.get();
                int i = 1;
                while (true) {
                    if (subscriber != null) {
                        if (!checkTerminated(this.done, queue.isEmpty(), subscriber, z)) {
                            long j = this.requested.get();
                            long j2 = 0;
                            while (j2 != j) {
                                boolean z2 = this.done;
                                Object poll = queue.poll();
                                boolean z3 = poll == null;
                                if (!checkTerminated(z2, z3, subscriber, z)) {
                                    if (z3) {
                                        break;
                                    }
                                    subscriber.onNext(NotificationLite.getValue(poll));
                                    j2++;
                                } else {
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                if (j != Long.MAX_VALUE) {
                                    BackpressureUtils.produced(this.requested, j2);
                                }
                                this.parent.f766s.request(j2);
                            }
                        } else {
                            return;
                        }
                    }
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                    if (subscriber == null) {
                        subscriber = (Subscriber) this.actual.get();
                    }
                }
            }
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3) {
            if (this.cancelled.get()) {
                this.queue.clear();
                this.parent.cancel(this.key);
                return true;
            }
            if (z) {
                if (!z3) {
                    z = this.error;
                    if (z) {
                        this.queue.clear();
                        subscriber.onError(z);
                        return true;
                    } else if (z2) {
                        subscriber.onCompleted();
                        return true;
                    }
                } else if (z2) {
                    z = this.error;
                    if (z) {
                        subscriber.onError(z);
                    } else {
                        subscriber.onCompleted();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1) {
        this(func1, UtilityFunctions.identity(), RxRingBuffer.SIZE, false, null);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(func1, func12, RxRingBuffer.SIZE, false, null);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func1<Action1<K>, Map<K, Object>> func13) {
        this(func1, func12, RxRingBuffer.SIZE, false, func13);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z, Func1<Action1<K>, Map<K, Object>> func13) {
        this.keySelector = func1;
        this.valueSelector = func12;
        this.bufferSize = i;
        this.delayError = z;
        this.mapFactory = func13;
    }

    public final Subscriber<? super T> call(Subscriber<? super GroupedObservable<K, V>> subscriber) {
        try {
            final Subscriber groupBySubscriber = new GroupBySubscriber(subscriber, this.keySelector, this.valueSelector, this.bufferSize, this.delayError, this.mapFactory);
            subscriber.add(Subscriptions.create(new Action0() {
                public void call() {
                    groupBySubscriber.cancel();
                }
            }));
            subscriber.setProducer(groupBySubscriber.producer);
            return groupBySubscriber;
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, (Observer) subscriber);
            subscriber = Subscribers.empty();
            subscriber.unsubscribe();
            return subscriber;
        }
    }
}
