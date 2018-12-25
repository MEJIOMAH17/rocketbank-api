package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.util.UtilityFunctions;

public final class OperatorDistinctUntilChanged<T, U> implements Operator<T, T>, Func2<U, U, Boolean> {
    final Func2<? super U, ? super U, Boolean> comparator;
    final Func1<? super T, ? extends U> keySelector;

    static final class Holder {
        static final OperatorDistinctUntilChanged<?, ?> INSTANCE = new OperatorDistinctUntilChanged(UtilityFunctions.identity());

        Holder() {
        }
    }

    public static <T> OperatorDistinctUntilChanged<T, T> instance() {
        return Holder.INSTANCE;
    }

    public OperatorDistinctUntilChanged(Func1<? super T, ? extends U> func1) {
        this.keySelector = func1;
        this.comparator = this;
    }

    public OperatorDistinctUntilChanged(Func2<? super U, ? super U, Boolean> func2) {
        this.keySelector = UtilityFunctions.identity();
        this.comparator = func2;
    }

    public final Boolean call(U u, U u2) {
        if (u != u2) {
            if (u == null || u.equals(u2) == null) {
                u = null;
                return Boolean.valueOf(u);
            }
        }
        u = true;
        return Boolean.valueOf(u);
    }

    public final Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<T>(subscriber) {
            boolean hasPrevious;
            U previousKey;

            public void onNext(T t) {
                try {
                    Object call = OperatorDistinctUntilChanged.this.keySelector.call(t);
                    Object obj = this.previousKey;
                    this.previousKey = call;
                    if (this.hasPrevious) {
                        try {
                            if (((Boolean) OperatorDistinctUntilChanged.this.comparator.call(obj, call)).booleanValue()) {
                                request(1);
                                return;
                            } else {
                                subscriber.onNext(t);
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, subscriber, call);
                            return;
                        }
                    }
                    this.hasPrevious = true;
                    subscriber.onNext(t);
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, subscriber, (Object) t);
                }
            }

            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            public void onCompleted() {
                subscriber.onCompleted();
            }
        };
    }
}
