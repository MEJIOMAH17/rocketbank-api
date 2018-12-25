package ru.rocketbank.core.utils.rx;

import java.io.Serializable;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: RetryWithDelay.kt */
final class RetryWithDelay$call$1<T, R> implements Func1<Throwable, Observable<?>> {
    final /* synthetic */ RetryWithDelay this$0;

    RetryWithDelay$call$1(RetryWithDelay retryWithDelay) {
        this.this$0 = retryWithDelay;
    }

    public final Observable<? extends Serializable> call(Throwable th) {
        if (this.this$0.mRetryCount >= this.this$0.mRetryLimit) {
            return Observable.error(th);
        }
        th = this.this$0;
        th.mRetryCount = th.mRetryCount + 1;
        return Observable.timer(this.this$0.mDelay, this.this$0.mTimeUnit);
    }
}
