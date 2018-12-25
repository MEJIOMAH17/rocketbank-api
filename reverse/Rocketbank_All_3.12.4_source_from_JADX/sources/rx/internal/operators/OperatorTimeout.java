package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;

public final class OperatorTimeout<T> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.OperatorTimeout$1 */
    class C21001 implements FirstTimeoutStub<T> {
        final /* synthetic */ TimeUnit val$timeUnit;
        final /* synthetic */ long val$timeout;

        C21001(long j, TimeUnit timeUnit) {
            this.val$timeout = j;
            this.val$timeUnit = timeUnit;
        }

        public Subscription call(final TimeoutSubscriber<T> timeoutSubscriber, final Long l, Worker worker) {
            return worker.schedule(new Action0() {
                public void call() {
                    timeoutSubscriber.onTimeout(l.longValue());
                }
            }, this.val$timeout, this.val$timeUnit);
        }
    }

    /* renamed from: rx.internal.operators.OperatorTimeout$2 */
    class C21022 implements TimeoutStub<T> {
        final /* synthetic */ TimeUnit val$timeUnit;
        final /* synthetic */ long val$timeout;

        C21022(long j, TimeUnit timeUnit) {
            this.val$timeout = j;
            this.val$timeUnit = timeUnit;
        }

        public Subscription call(final TimeoutSubscriber<T> timeoutSubscriber, final Long l, T t, Worker worker) {
            return worker.schedule(new Action0() {
                public void call() {
                    timeoutSubscriber.onTimeout(l.longValue());
                }
            }, this.val$timeout, this.val$timeUnit);
        }
    }

    public final /* bridge */ /* synthetic */ Subscriber call(Subscriber subscriber) {
        return super.call(subscriber);
    }

    public OperatorTimeout(long j, TimeUnit timeUnit, Observable<? extends T> observable, Scheduler scheduler) {
        super(new C21001(j, timeUnit), new C21022(j, timeUnit), observable, scheduler);
    }
}
