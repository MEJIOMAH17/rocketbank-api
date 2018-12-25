package ru.rocketbank.core.utils.rx;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.functions.Func1;

public class RetryWithDelayAndLimitIf implements Func1<Observable<? extends Throwable>, Observable<?>> {
    private long delay;
    private Func1<Throwable, Boolean> ifFunction;
    private int retryCount = 0;
    private int retryLimit;
    private TimeUnit timeUnit;

    /* renamed from: ru.rocketbank.core.utils.rx.RetryWithDelayAndLimitIf$1 */
    class C14371 implements Func1<Throwable, Observable<?>> {
        C14371() {
        }

        public Observable<?> call(Throwable th) {
            if (!((Boolean) RetryWithDelayAndLimitIf.this.ifFunction.call(th)).booleanValue()) {
                return Observable.error(th);
            }
            if (RetryWithDelayAndLimitIf.this.retryCount >= RetryWithDelayAndLimitIf.this.retryLimit) {
                return Observable.error(th);
            }
            RetryWithDelayAndLimitIf.this.retryCount = RetryWithDelayAndLimitIf.this.retryCount + 1;
            return Observable.timer(RetryWithDelayAndLimitIf.this.delay, RetryWithDelayAndLimitIf.this.timeUnit);
        }
    }

    public RetryWithDelayAndLimitIf(int i, long j, TimeUnit timeUnit, Func1<Throwable, Boolean> func1) {
        this.retryLimit = i;
        this.delay = j;
        this.timeUnit = timeUnit;
        this.ifFunction = func1;
    }

    public Observable<?> call(Observable<? extends Throwable> observable) {
        return observable.flatMap(new C14371());
    }
}
