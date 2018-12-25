package ru.rocketbank.core.utils.rx;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.functions.Func1;

public class RetryWithDelayIf implements Func1<Observable<? extends Throwable>, Observable<?>> {
    private long delay;
    private Func1<Throwable, Boolean> ifFunction;
    private TimeUnit timeUnit;

    /* renamed from: ru.rocketbank.core.utils.rx.RetryWithDelayIf$1 */
    class C14381 implements Func1<Throwable, Observable<?>> {
        C14381() {
        }

        public Observable<?> call(Throwable th) {
            if (((Boolean) RetryWithDelayIf.this.ifFunction.call(th)).booleanValue()) {
                return Observable.timer(RetryWithDelayIf.this.delay, RetryWithDelayIf.this.timeUnit);
            }
            return Observable.error(th);
        }
    }

    public RetryWithDelayIf(long j, TimeUnit timeUnit, Func1<Throwable, Boolean> func1) {
        this.delay = j;
        this.timeUnit = timeUnit;
        this.ifFunction = func1;
    }

    public Observable<?> call(Observable<? extends Throwable> observable) {
        return observable.flatMap(new C14381());
    }
}
