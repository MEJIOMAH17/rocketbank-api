package rx;

import java.util.concurrent.TimeUnit;
import rx.annotations.Experimental;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.schedulers.SchedulerWhen;
import rx.internal.subscriptions.SequentialSubscription;

public abstract class Scheduler {
    static final long CLOCK_DRIFT_TOLERANCE_NANOS = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());

    public static abstract class Worker implements Subscription {
        public abstract Subscription schedule(Action0 action0);

        public abstract Subscription schedule(Action0 action0, long j, TimeUnit timeUnit);

        public Subscription schedulePeriodically(Action0 action0, long j, long j2, TimeUnit timeUnit) {
            long j3 = j;
            TimeUnit timeUnit2 = timeUnit;
            final long toNanos = timeUnit2.toNanos(j2);
            final long toNanos2 = TimeUnit.MILLISECONDS.toNanos(now());
            final long toNanos3 = toNanos2 + timeUnit2.toNanos(j3);
            Object sequentialSubscription = new SequentialSubscription();
            Subscription sequentialSubscription2 = new SequentialSubscription(sequentialSubscription);
            final Action0 action02 = action0;
            final Subscription subscription = sequentialSubscription2;
            sequentialSubscription.replace(schedule(new Action0() {
                long count;
                long lastNowNanos = toNanos2;
                long startInNanos = toNanos3;

                public void call() {
                    action02.call();
                    if (!subscription.isUnsubscribed()) {
                        long j;
                        long j2;
                        long toNanos = TimeUnit.MILLISECONDS.toNanos(Worker.this.now());
                        if (toNanos + Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS >= this.lastNowNanos) {
                            if (toNanos < (this.lastNowNanos + toNanos) + Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS) {
                                j = this.startInNanos;
                                long j3 = this.count + 1;
                                this.count = j3;
                                j2 = j + (j3 * toNanos);
                                this.lastNowNanos = toNanos;
                                subscription.replace(Worker.this.schedule(this, j2 - toNanos, TimeUnit.NANOSECONDS));
                            }
                        }
                        long j4 = toNanos + toNanos;
                        j = toNanos;
                        long j5 = this.count + 1;
                        this.count = j5;
                        this.startInNanos = j4 - (j * j5);
                        j2 = j4;
                        this.lastNowNanos = toNanos;
                        subscription.replace(Worker.this.schedule(this, j2 - toNanos, TimeUnit.NANOSECONDS));
                    }
                }
            }, j3, timeUnit2));
            return sequentialSubscription2;
        }

        public long now() {
            return System.currentTimeMillis();
        }
    }

    public abstract Worker createWorker();

    public long now() {
        return System.currentTimeMillis();
    }

    @Experimental
    public <S extends Scheduler & Subscription> S when(Func1<Observable<Observable<Completable>>, Completable> func1) {
        return new SchedulerWhen(func1, this);
    }
}
