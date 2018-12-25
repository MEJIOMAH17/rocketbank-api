package rx.internal.operators;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeJoin<TLeft, TRight, TLeftDuration, TRightDuration, R> implements OnSubscribe<R> {
    final Observable<TLeft> left;
    final Func1<TLeft, Observable<TLeftDuration>> leftDurationSelector;
    final Func2<TLeft, TRight, R> resultSelector;
    final Observable<TRight> right;
    final Func1<TRight, Observable<TRightDuration>> rightDurationSelector;

    final class ResultSink extends HashMap<Integer, TLeft> {
        private static final long serialVersionUID = 3491669543549085380L;
        final CompositeSubscription group = new CompositeSubscription();
        boolean leftDone;
        int leftId;
        boolean rightDone;
        int rightId;
        final Map<Integer, TRight> rightMap = new HashMap();
        final Subscriber<? super R> subscriber;

        final class LeftSubscriber extends Subscriber<TLeft> {

            final class LeftDurationSubscriber extends Subscriber<TLeftDuration> {
                final int id;
                boolean once = true;

                public LeftDurationSubscriber(int i) {
                    this.id = i;
                }

                public final void onNext(TLeftDuration tLeftDuration) {
                    onCompleted();
                }

                public final void onError(Throwable th) {
                    LeftSubscriber.this.onError(th);
                }

                public final void onCompleted() {
                    if (this.once) {
                        this.once = false;
                        LeftSubscriber.this.expire(this.id, this);
                    }
                }
            }

            LeftSubscriber() {
            }

            protected final void expire(int i, Subscription subscription) {
                synchronized (ResultSink.this) {
                    i = (ResultSink.this.leftMap().remove(Integer.valueOf(i)) == 0 || ResultSink.this.leftMap().isEmpty() == 0 || ResultSink.this.leftDone == 0) ? 0 : 1;
                }
                if (i != 0) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(subscription);
            }

            public final void onNext(TLeft tLeft) {
                synchronized (ResultSink.this) {
                    ResultSink resultSink = ResultSink.this;
                    int i = resultSink.leftId;
                    resultSink.leftId = i + 1;
                    ResultSink.this.leftMap().put(Integer.valueOf(i), tLeft);
                    int i2 = ResultSink.this.rightId;
                }
                try {
                    Observable observable = (Observable) OnSubscribeJoin.this.leftDurationSelector.call(tLeft);
                    Object leftDurationSubscriber = new LeftDurationSubscriber(i);
                    ResultSink.this.group.add(leftDurationSubscriber);
                    observable.unsafeSubscribe(leftDurationSubscriber);
                    List<Object> arrayList = new ArrayList();
                    synchronized (ResultSink.this) {
                        for (Entry entry : ResultSink.this.rightMap.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    for (Object call : arrayList) {
                        ResultSink.this.subscriber.onNext(OnSubscribeJoin.this.resultSelector.call(tLeft, call));
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) this);
                }
            }

            public final void onError(Throwable th) {
                ResultSink.this.subscriber.onError(th);
                ResultSink.this.subscriber.unsubscribe();
            }

            public final void onCompleted() {
                synchronized (ResultSink.this) {
                    boolean z = true;
                    ResultSink.this.leftDone = true;
                    if (!ResultSink.this.rightDone) {
                        if (!ResultSink.this.leftMap().isEmpty()) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(this);
            }
        }

        final class RightSubscriber extends Subscriber<TRight> {

            final class RightDurationSubscriber extends Subscriber<TRightDuration> {
                final int id;
                boolean once = true;

                public RightDurationSubscriber(int i) {
                    this.id = i;
                }

                public final void onNext(TRightDuration tRightDuration) {
                    onCompleted();
                }

                public final void onError(Throwable th) {
                    RightSubscriber.this.onError(th);
                }

                public final void onCompleted() {
                    if (this.once) {
                        this.once = false;
                        RightSubscriber.this.expire(this.id, this);
                    }
                }
            }

            RightSubscriber() {
            }

            final void expire(int i, Subscription subscription) {
                synchronized (ResultSink.this) {
                    i = (ResultSink.this.rightMap.remove(Integer.valueOf(i)) == 0 || ResultSink.this.rightMap.isEmpty() == 0 || ResultSink.this.rightDone == 0) ? 0 : 1;
                }
                if (i != 0) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(subscription);
            }

            public final void onNext(TRight tRight) {
                synchronized (ResultSink.this) {
                    ResultSink resultSink = ResultSink.this;
                    int i = resultSink.rightId;
                    resultSink.rightId = i + 1;
                    ResultSink.this.rightMap.put(Integer.valueOf(i), tRight);
                    int i2 = ResultSink.this.leftId;
                }
                ResultSink.this.group.add(new SerialSubscription());
                try {
                    Observable observable = (Observable) OnSubscribeJoin.this.rightDurationSelector.call(tRight);
                    Object rightDurationSubscriber = new RightDurationSubscriber(i);
                    ResultSink.this.group.add(rightDurationSubscriber);
                    observable.unsafeSubscribe(rightDurationSubscriber);
                    List<Object> arrayList = new ArrayList();
                    synchronized (ResultSink.this) {
                        for (Entry entry : ResultSink.this.leftMap().entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    for (Object call : arrayList) {
                        ResultSink.this.subscriber.onNext(OnSubscribeJoin.this.resultSelector.call(call, tRight));
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) this);
                }
            }

            public final void onError(Throwable th) {
                ResultSink.this.subscriber.onError(th);
                ResultSink.this.subscriber.unsubscribe();
            }

            public final void onCompleted() {
                synchronized (ResultSink.this) {
                    boolean z = true;
                    ResultSink.this.rightDone = true;
                    if (!ResultSink.this.leftDone) {
                        if (!ResultSink.this.rightMap.isEmpty()) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(this);
            }
        }

        final HashMap<Integer, TLeft> leftMap() {
            return this;
        }

        public ResultSink(Subscriber<? super R> subscriber) {
            this.subscriber = subscriber;
        }

        public final void run() {
            this.subscriber.add(this.group);
            Object leftSubscriber = new LeftSubscriber();
            Object rightSubscriber = new RightSubscriber();
            this.group.add(leftSubscriber);
            this.group.add(rightSubscriber);
            OnSubscribeJoin.this.left.unsafeSubscribe(leftSubscriber);
            OnSubscribeJoin.this.right.unsafeSubscribe(rightSubscriber);
        }
    }

    public OnSubscribeJoin(Observable<TLeft> observable, Observable<TRight> observable2, Func1<TLeft, Observable<TLeftDuration>> func1, Func1<TRight, Observable<TRightDuration>> func12, Func2<TLeft, TRight, R> func2) {
        this.left = observable;
        this.right = observable2;
        this.leftDurationSelector = func1;
        this.rightDurationSelector = func12;
        this.resultSelector = func2;
    }

    public final void call(Subscriber<? super R> subscriber) {
        new ResultSink(new SerializedSubscriber(subscriber)).run();
    }
}
