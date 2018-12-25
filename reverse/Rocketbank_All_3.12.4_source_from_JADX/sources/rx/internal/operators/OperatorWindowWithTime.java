package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;
import rx.subjects.UnicastSubject;
import rx.subscriptions.Subscriptions;

public final class OperatorWindowWithTime<T> implements Operator<Observable<T>, T> {
    static final Object NEXT_SUBJECT = new Object();
    final Scheduler scheduler;
    final int size;
    final long timeshift;
    final long timespan;
    final TimeUnit unit;

    static final class CountedSerializedSubject<T> {
        final Observer<T> consumer;
        int count;
        final Observable<T> producer;

        public CountedSerializedSubject(Observer<T> observer, Observable<T> observable) {
            this.consumer = new SerializedObserver(observer);
            this.producer = observable;
        }
    }

    static final class State<T> {
        static final State<Object> EMPTY = new State(null, null, 0);
        final Observer<T> consumer;
        final int count;
        final Observable<T> producer;

        public State(Observer<T> observer, Observable<T> observable, int i) {
            this.consumer = observer;
            this.producer = observable;
            this.count = i;
        }

        public final State<T> next() {
            return new State(this.consumer, this.producer, this.count + 1);
        }

        public final State<T> create(Observer<T> observer, Observable<T> observable) {
            return new State(observer, observable, 0);
        }

        public final State<T> clear() {
            return empty();
        }

        public static <T> State<T> empty() {
            return EMPTY;
        }
    }

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        boolean emitting;
        final Object guard = new Object();
        List<Object> queue;
        volatile State<T> state = State.empty();
        final Worker worker;

        /* renamed from: rx.internal.operators.OperatorWindowWithTime$ExactSubscriber$2 */
        class C21082 implements Action0 {
            C21082() {
            }

            public void call() {
                ExactSubscriber.this.nextWindow();
            }
        }

        public ExactSubscriber(Subscriber<? super Observable<T>> subscriber, Worker worker) {
            this.child = new SerializedSubscriber(subscriber);
            this.worker = worker;
            subscriber.add(Subscriptions.create(new Action0(OperatorWindowWithTime.this) {
                public void call() {
                    if (ExactSubscriber.this.state.consumer == null) {
                        ExactSubscriber.this.unsubscribe();
                    }
                }
            }));
        }

        public final void onStart() {
            request(Long.MAX_VALUE);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r5) {
            /*
            r4 = this;
            r0 = r4.guard;
            monitor-enter(r0);
            r1 = r4.emitting;	 Catch:{ all -> 0x0064 }
            if (r1 == 0) goto L_0x0019;
        L_0x0007:
            r1 = r4.queue;	 Catch:{ all -> 0x0064 }
            if (r1 != 0) goto L_0x0012;
        L_0x000b:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0064 }
            r1.<init>();	 Catch:{ all -> 0x0064 }
            r4.queue = r1;	 Catch:{ all -> 0x0064 }
        L_0x0012:
            r1 = r4.queue;	 Catch:{ all -> 0x0064 }
            r1.add(r5);	 Catch:{ all -> 0x0064 }
            monitor-exit(r0);	 Catch:{ all -> 0x0064 }
            return;
        L_0x0019:
            r1 = 1;
            r4.emitting = r1;	 Catch:{ all -> 0x0064 }
            monitor-exit(r0);	 Catch:{ all -> 0x0064 }
            r0 = 0;
            r5 = r4.emitValue(r5);	 Catch:{ all -> 0x0055 }
            if (r5 != 0) goto L_0x002e;
        L_0x0024:
            r5 = r4.guard;
            monitor-enter(r5);
            r4.emitting = r0;	 Catch:{ all -> 0x002b }
            monitor-exit(r5);	 Catch:{ all -> 0x002b }
            return;
        L_0x002b:
            r0 = move-exception;
            monitor-exit(r5);	 Catch:{ all -> 0x002b }
            throw r0;
        L_0x002e:
            r5 = r4.guard;	 Catch:{ all -> 0x0055 }
            monitor-enter(r5);	 Catch:{ all -> 0x0055 }
            r2 = r4.queue;	 Catch:{ all -> 0x004d }
            if (r2 != 0) goto L_0x0039;
        L_0x0035:
            r4.emitting = r0;	 Catch:{ all -> 0x004d }
            monitor-exit(r5);	 Catch:{ all -> 0x0053 }
            return;
        L_0x0039:
            r3 = 0;
            r4.queue = r3;	 Catch:{ all -> 0x004d }
            monitor-exit(r5);	 Catch:{ all -> 0x004d }
            r5 = r4.drain(r2);	 Catch:{ all -> 0x0055 }
            if (r5 != 0) goto L_0x002e;
        L_0x0043:
            r5 = r4.guard;
            monitor-enter(r5);
            r4.emitting = r0;	 Catch:{ all -> 0x004a }
            monitor-exit(r5);	 Catch:{ all -> 0x004a }
            return;
        L_0x004a:
            r0 = move-exception;
            monitor-exit(r5);	 Catch:{ all -> 0x004a }
            throw r0;
        L_0x004d:
            r2 = move-exception;
            r1 = r0;
        L_0x004f:
            monitor-exit(r5);	 Catch:{ all -> 0x0053 }
            throw r2;	 Catch:{ all -> 0x0051 }
        L_0x0051:
            r5 = move-exception;
            goto L_0x0057;
        L_0x0053:
            r2 = move-exception;
            goto L_0x004f;
        L_0x0055:
            r5 = move-exception;
            r1 = r0;
        L_0x0057:
            if (r1 != 0) goto L_0x0063;
        L_0x0059:
            r1 = r4.guard;
            monitor-enter(r1);
            r4.emitting = r0;	 Catch:{ all -> 0x0060 }
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            goto L_0x0063;
        L_0x0060:
            r5 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            throw r5;
        L_0x0063:
            throw r5;
        L_0x0064:
            r5 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0064 }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.onNext(java.lang.Object):void");
        }

        final boolean drain(List<Object> list) {
            if (list == null) {
                return true;
            }
            for (Object next : list) {
                if (next == OperatorWindowWithTime.NEXT_SUBJECT) {
                    if (!replaceSubject()) {
                        return false;
                    }
                } else if (NotificationLite.isError(next)) {
                    error(NotificationLite.getError(next));
                    break;
                } else if (NotificationLite.isCompleted(next)) {
                    complete();
                    break;
                } else if (!emitValue(next)) {
                    return false;
                }
            }
            return true;
        }

        final boolean replaceSubject() {
            Observer observer = this.state.consumer;
            if (observer != null) {
                observer.onCompleted();
            }
            if (this.child.isUnsubscribed()) {
                this.state = this.state.clear();
                unsubscribe();
                return false;
            }
            Object create = UnicastSubject.create();
            this.state = this.state.create(create, create);
            this.child.onNext(create);
            return true;
        }

        final boolean emitValue(T t) {
            State state = this.state;
            if (state.consumer == null) {
                if (!replaceSubject()) {
                    return null;
                }
                state = this.state;
            }
            state.consumer.onNext(t);
            if (state.count == OperatorWindowWithTime.this.size - 1) {
                state.consumer.onCompleted();
                t = state.clear();
            } else {
                t = state.next();
            }
            this.state = t;
            return true;
        }

        public final void onError(Throwable th) {
            synchronized (this.guard) {
                if (this.emitting) {
                    this.queue = Collections.singletonList(NotificationLite.error(th));
                    return;
                }
                this.queue = null;
                this.emitting = true;
                error(th);
            }
        }

        final void error(Throwable th) {
            Observer observer = this.state.consumer;
            this.state = this.state.clear();
            if (observer != null) {
                observer.onError(th);
            }
            this.child.onError(th);
            unsubscribe();
        }

        final void complete() {
            Observer observer = this.state.consumer;
            this.state = this.state.clear();
            if (observer != null) {
                observer.onCompleted();
            }
            this.child.onCompleted();
            unsubscribe();
        }

        public final void onCompleted() {
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(NotificationLite.completed());
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                try {
                    drain(list);
                    complete();
                } catch (Throwable th) {
                    error(th);
                }
            }
        }

        final void scheduleExact() {
            this.worker.schedulePeriodically(new C21082(), 0, OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void nextWindow() {
            /*
            r6 = this;
            r0 = r6.guard;
            monitor-enter(r0);
            r1 = r6.emitting;	 Catch:{ all -> 0x0069 }
            if (r1 == 0) goto L_0x001b;
        L_0x0007:
            r1 = r6.queue;	 Catch:{ all -> 0x0069 }
            if (r1 != 0) goto L_0x0012;
        L_0x000b:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0069 }
            r1.<init>();	 Catch:{ all -> 0x0069 }
            r6.queue = r1;	 Catch:{ all -> 0x0069 }
        L_0x0012:
            r1 = r6.queue;	 Catch:{ all -> 0x0069 }
            r2 = rx.internal.operators.OperatorWindowWithTime.NEXT_SUBJECT;	 Catch:{ all -> 0x0069 }
            r1.add(r2);	 Catch:{ all -> 0x0069 }
            monitor-exit(r0);	 Catch:{ all -> 0x0069 }
            return;
        L_0x001b:
            r1 = 1;
            r6.emitting = r1;	 Catch:{ all -> 0x0069 }
            monitor-exit(r0);	 Catch:{ all -> 0x0069 }
            r0 = 0;
            r2 = r6.replaceSubject();	 Catch:{ all -> 0x005a }
            if (r2 != 0) goto L_0x0030;
        L_0x0026:
            r2 = r6.guard;
            monitor-enter(r2);
            r6.emitting = r0;	 Catch:{ all -> 0x002d }
            monitor-exit(r2);	 Catch:{ all -> 0x002d }
            return;
        L_0x002d:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x002d }
            throw r0;
        L_0x0030:
            r2 = r6.guard;	 Catch:{ all -> 0x005a }
            monitor-enter(r2);	 Catch:{ all -> 0x005a }
            r3 = r6.queue;	 Catch:{ all -> 0x004f }
            if (r3 != 0) goto L_0x003b;
        L_0x0037:
            r6.emitting = r0;	 Catch:{ all -> 0x004f }
            monitor-exit(r2);	 Catch:{ all -> 0x0058 }
            return;
        L_0x003b:
            r4 = 0;
            r6.queue = r4;	 Catch:{ all -> 0x004f }
            monitor-exit(r2);	 Catch:{ all -> 0x004f }
            r2 = r6.drain(r3);	 Catch:{ all -> 0x005a }
            if (r2 != 0) goto L_0x0030;
        L_0x0045:
            r2 = r6.guard;
            monitor-enter(r2);
            r6.emitting = r0;	 Catch:{ all -> 0x004c }
            monitor-exit(r2);	 Catch:{ all -> 0x004c }
            return;
        L_0x004c:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x004c }
            throw r0;
        L_0x004f:
            r3 = move-exception;
            r1 = r0;
        L_0x0051:
            monitor-exit(r2);	 Catch:{ all -> 0x0058 }
            throw r3;	 Catch:{ all -> 0x0053 }
        L_0x0053:
            r2 = move-exception;
            r5 = r2;
            r2 = r1;
            r1 = r5;
            goto L_0x005c;
        L_0x0058:
            r3 = move-exception;
            goto L_0x0051;
        L_0x005a:
            r1 = move-exception;
            r2 = r0;
        L_0x005c:
            if (r2 != 0) goto L_0x0068;
        L_0x005e:
            r2 = r6.guard;
            monitor-enter(r2);
            r6.emitting = r0;	 Catch:{ all -> 0x0065 }
            monitor-exit(r2);	 Catch:{ all -> 0x0065 }
            goto L_0x0068;
        L_0x0065:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x0065 }
            throw r0;
        L_0x0068:
            throw r1;
        L_0x0069:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0069 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.nextWindow():void");
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<CountedSerializedSubject<T>> chunks = new LinkedList();
        boolean done;
        final Object guard = new Object();
        final Worker worker;

        /* renamed from: rx.internal.operators.OperatorWindowWithTime$InexactSubscriber$1 */
        class C21091 implements Action0 {
            C21091() {
            }

            public void call() {
                InexactSubscriber.this.startNewChunk();
            }
        }

        public InexactSubscriber(Subscriber<? super Observable<T>> subscriber, Worker worker) {
            super(subscriber);
            this.child = subscriber;
            this.worker = worker;
        }

        public final void onStart() {
            request(Long.MAX_VALUE);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r6) {
            /*
            r5 = this;
            r0 = r5.guard;
            monitor-enter(r0);
            r1 = r5.done;	 Catch:{ all -> 0x0057 }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x0057 }
            return;
        L_0x0009:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0057 }
            r2 = r5.chunks;	 Catch:{ all -> 0x0057 }
            r1.<init>(r2);	 Catch:{ all -> 0x0057 }
            r2 = r5.chunks;	 Catch:{ all -> 0x0057 }
            r2 = r2.iterator();	 Catch:{ all -> 0x0057 }
        L_0x0016:
            r3 = r2.hasNext();	 Catch:{ all -> 0x0057 }
            if (r3 == 0) goto L_0x0032;
        L_0x001c:
            r3 = r2.next();	 Catch:{ all -> 0x0057 }
            r3 = (rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject) r3;	 Catch:{ all -> 0x0057 }
            r4 = r3.count;	 Catch:{ all -> 0x0057 }
            r4 = r4 + 1;
            r3.count = r4;	 Catch:{ all -> 0x0057 }
            r3 = rx.internal.operators.OperatorWindowWithTime.this;	 Catch:{ all -> 0x0057 }
            r3 = r3.size;	 Catch:{ all -> 0x0057 }
            if (r4 != r3) goto L_0x0016;
        L_0x002e:
            r2.remove();	 Catch:{ all -> 0x0057 }
            goto L_0x0016;
        L_0x0032:
            monitor-exit(r0);	 Catch:{ all -> 0x0057 }
            r0 = r1.iterator();
        L_0x0037:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x0056;
        L_0x003d:
            r1 = r0.next();
            r1 = (rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject) r1;
            r2 = r1.consumer;
            r2.onNext(r6);
            r2 = r1.count;
            r3 = rx.internal.operators.OperatorWindowWithTime.this;
            r3 = r3.size;
            if (r2 != r3) goto L_0x0037;
        L_0x0050:
            r1 = r1.consumer;
            r1.onCompleted();
            goto L_0x0037;
        L_0x0056:
            return;
        L_0x0057:
            r6 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0057 }
            throw r6;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.onNext(java.lang.Object):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onError(java.lang.Throwable r4) {
            /*
            r3 = this;
            r0 = r3.guard;
            monitor-enter(r0);
            r1 = r3.done;	 Catch:{ all -> 0x0035 }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            return;
        L_0x0009:
            r1 = 1;
            r3.done = r1;	 Catch:{ all -> 0x0035 }
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0035 }
            r2 = r3.chunks;	 Catch:{ all -> 0x0035 }
            r1.<init>(r2);	 Catch:{ all -> 0x0035 }
            r2 = r3.chunks;	 Catch:{ all -> 0x0035 }
            r2.clear();	 Catch:{ all -> 0x0035 }
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            r0 = r1.iterator();
        L_0x001d:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x002f;
        L_0x0023:
            r1 = r0.next();
            r1 = (rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject) r1;
            r1 = r1.consumer;
            r1.onError(r4);
            goto L_0x001d;
        L_0x002f:
            r0 = r3.child;
            r0.onError(r4);
            return;
        L_0x0035:
            r4 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.onError(java.lang.Throwable):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onCompleted() {
            /*
            r3 = this;
            r0 = r3.guard;
            monitor-enter(r0);
            r1 = r3.done;	 Catch:{ all -> 0x0035 }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            return;
        L_0x0009:
            r1 = 1;
            r3.done = r1;	 Catch:{ all -> 0x0035 }
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0035 }
            r2 = r3.chunks;	 Catch:{ all -> 0x0035 }
            r1.<init>(r2);	 Catch:{ all -> 0x0035 }
            r2 = r3.chunks;	 Catch:{ all -> 0x0035 }
            r2.clear();	 Catch:{ all -> 0x0035 }
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            r0 = r1.iterator();
        L_0x001d:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x002f;
        L_0x0023:
            r1 = r0.next();
            r1 = (rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject) r1;
            r1 = r1.consumer;
            r1.onCompleted();
            goto L_0x001d;
        L_0x002f:
            r0 = r3.child;
            r0.onCompleted();
            return;
        L_0x0035:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0035 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.onCompleted():void");
        }

        final void scheduleChunk() {
            this.worker.schedulePeriodically(new C21091(), OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.unit);
        }

        final void startNewChunk() {
            final CountedSerializedSubject createCountedSerializedSubject = createCountedSerializedSubject();
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.chunks.add(createCountedSerializedSubject);
                try {
                    this.child.onNext(createCountedSerializedSubject.producer);
                    this.worker.schedule(new Action0() {
                        public void call() {
                            InexactSubscriber.this.terminateChunk(createCountedSerializedSubject);
                        }
                    }, OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void terminateChunk(rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject<T> r4) {
            /*
            r3 = this;
            r0 = r3.guard;
            monitor-enter(r0);
            r1 = r3.done;	 Catch:{ all -> 0x002c }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            return;
        L_0x0009:
            r1 = r3.chunks;	 Catch:{ all -> 0x002c }
            r1 = r1.iterator();	 Catch:{ all -> 0x002c }
        L_0x000f:
            r2 = r1.hasNext();	 Catch:{ all -> 0x002c }
            if (r2 == 0) goto L_0x0022;
        L_0x0015:
            r2 = r1.next();	 Catch:{ all -> 0x002c }
            r2 = (rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject) r2;	 Catch:{ all -> 0x002c }
            if (r2 != r4) goto L_0x000f;
        L_0x001d:
            r2 = 1;
            r1.remove();	 Catch:{ all -> 0x002c }
            goto L_0x0023;
        L_0x0022:
            r2 = 0;
        L_0x0023:
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            if (r2 == 0) goto L_0x002b;
        L_0x0026:
            r4 = r4.consumer;
            r4.onCompleted();
        L_0x002b:
            return;
        L_0x002c:
            r4 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.terminateChunk(rx.internal.operators.OperatorWindowWithTime$CountedSerializedSubject):void");
        }

        final CountedSerializedSubject<T> createCountedSerializedSubject() {
            Object create = UnicastSubject.create();
            return new CountedSerializedSubject(create, create);
        }
    }

    public OperatorWindowWithTime(long j, long j2, TimeUnit timeUnit, int i, Scheduler scheduler) {
        this.timespan = j;
        this.timeshift = j2;
        this.unit = timeUnit;
        this.size = i;
        this.scheduler = scheduler;
    }

    public final Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        if (this.timespan == this.timeshift) {
            Subscriber exactSubscriber = new ExactSubscriber(subscriber, createWorker);
            exactSubscriber.add(createWorker);
            exactSubscriber.scheduleExact();
            return exactSubscriber;
        }
        exactSubscriber = new InexactSubscriber(subscriber, createWorker);
        exactSubscriber.add(createWorker);
        exactSubscriber.startNewChunk();
        exactSubscriber.scheduleChunk();
        return exactSubscriber;
    }
}
