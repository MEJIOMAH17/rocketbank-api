package rx.internal.operators;

import rx.Single;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

public final class SingleOperatorOnErrorResumeNext<T> implements OnSubscribe<T> {
    private final Single<? extends T> originalSingle;
    final Func1<Throwable, ? extends Single<? extends T>> resumeFunctionInCaseOfError;

    private SingleOperatorOnErrorResumeNext(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        if (single == null) {
            throw new NullPointerException("originalSingle must not be null");
        } else if (func1 == null) {
            throw new NullPointerException("resumeFunctionInCaseOfError must not be null");
        } else {
            this.originalSingle = single;
            this.resumeFunctionInCaseOfError = func1;
        }
    }

    public static <T> SingleOperatorOnErrorResumeNext<T> withFunction(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        return new SingleOperatorOnErrorResumeNext(single, func1);
    }

    public static <T> SingleOperatorOnErrorResumeNext<T> withOther(Single<? extends T> single, final Single<? extends T> single2) {
        if (single2 != null) {
            return new SingleOperatorOnErrorResumeNext(single, new Func1<Throwable, Single<? extends T>>() {
                public final Single<? extends T> call(Throwable th) {
                    return single2;
                }
            });
        }
        throw new NullPointerException("resumeSingleInCaseOfError must not be null");
    }

    public final void call(final SingleSubscriber<? super T> singleSubscriber) {
        SingleSubscriber c19572 = new SingleSubscriber<T>() {
            public void onSuccess(T t) {
                singleSubscriber.onSuccess(t);
            }

            public void onError(Throwable th) {
                try {
                    ((Single) SingleOperatorOnErrorResumeNext.this.resumeFunctionInCaseOfError.call(th)).subscribe(singleSubscriber);
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, singleSubscriber);
                }
            }
        };
        singleSubscriber.add(c19572);
        this.originalSingle.subscribe(c19572);
    }
}
