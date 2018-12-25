package ru.rocketbank.core.utils.rx;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: RetryWithDelay.kt */
public final class RetryWithDelay implements Func1<Observable<? extends Throwable>, Observable<?>> {
    private final long mDelay;
    private int mRetryCount = 0;
    private final int mRetryLimit;
    private final TimeUnit mTimeUnit;

    public RetryWithDelay(int i, long j, TimeUnit timeUnit) {
        Intrinsics.checkParameterIsNotNull(timeUnit, "mTimeUnit");
        this.mRetryLimit = i;
        this.mDelay = j;
        this.mTimeUnit = timeUnit;
    }

    public final Observable<?> call(Observable<? extends Throwable> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "attempts");
        observable = observable.flatMap(new RetryWithDelay$call$1(this));
        Intrinsics.checkExpressionValueIsNotNull(observable, "attempts.flatMap(Func1<k…le>(throwable)\n        })");
        return observable;
    }
}
