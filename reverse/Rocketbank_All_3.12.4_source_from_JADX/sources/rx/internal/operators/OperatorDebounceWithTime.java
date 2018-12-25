package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

public final class OperatorDebounceWithTime<T> implements Operator<T, T> {
    final Scheduler scheduler;
    final long timeout;
    final TimeUnit unit;

    static final class DebounceState<T> {
        boolean emitting;
        boolean hasValue;
        int index;
        boolean terminate;
        T value;

        DebounceState() {
        }

        public final synchronized int next(T t) {
            int i;
            this.value = t;
            this.hasValue = true;
            i = this.index + 1;
            this.index = i;
            return i;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void emit(int r3, rx.Subscriber<T> r4, rx.Subscriber<?> r5) {
            /*
            r2 = this;
            monitor-enter(r2);
            r0 = r2.emitting;	 Catch:{ all -> 0x0035 }
            if (r0 != 0) goto L_0x0033;
        L_0x0005:
            r0 = r2.hasValue;	 Catch:{ all -> 0x0035 }
            if (r0 == 0) goto L_0x0033;
        L_0x0009:
            r0 = r2.index;	 Catch:{ all -> 0x0035 }
            if (r3 == r0) goto L_0x000e;
        L_0x000d:
            goto L_0x0033;
        L_0x000e:
            r3 = r2.value;	 Catch:{ all -> 0x0035 }
            r0 = 0;
            r2.value = r0;	 Catch:{ all -> 0x0035 }
            r0 = 0;
            r2.hasValue = r0;	 Catch:{ all -> 0x0035 }
            r1 = 1;
            r2.emitting = r1;	 Catch:{ all -> 0x0035 }
            monitor-exit(r2);	 Catch:{ all -> 0x0035 }
            r4.onNext(r3);	 Catch:{ Throwable -> 0x002e }
            monitor-enter(r2);
            r3 = r2.terminate;	 Catch:{ all -> 0x002b }
            if (r3 != 0) goto L_0x0026;
        L_0x0022:
            r2.emitting = r0;	 Catch:{ all -> 0x002b }
            monitor-exit(r2);	 Catch:{ all -> 0x002b }
            return;
        L_0x0026:
            monitor-exit(r2);	 Catch:{ all -> 0x002b }
            r4.onCompleted();
            return;
        L_0x002b:
            r3 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x002b }
            throw r3;
        L_0x002e:
            r4 = move-exception;
            rx.exceptions.Exceptions.throwOrReport(r4, r5, r3);
            return;
        L_0x0033:
            monitor-exit(r2);	 Catch:{ all -> 0x0035 }
            return;
        L_0x0035:
            r3 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x0035 }
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorDebounceWithTime.DebounceState.emit(int, rx.Subscriber, rx.Subscriber):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void emitAndComplete(rx.Subscriber<T> r5, rx.Subscriber<?> r6) {
            /*
            r4 = this;
            monitor-enter(r4);
            r0 = r4.emitting;	 Catch:{ all -> 0x0026 }
            r1 = 1;
            if (r0 == 0) goto L_0x000a;
        L_0x0006:
            r4.terminate = r1;	 Catch:{ all -> 0x0026 }
            monitor-exit(r4);	 Catch:{ all -> 0x0026 }
            return;
        L_0x000a:
            r0 = r4.value;	 Catch:{ all -> 0x0026 }
            r2 = r4.hasValue;	 Catch:{ all -> 0x0026 }
            r3 = 0;
            r4.value = r3;	 Catch:{ all -> 0x0026 }
            r3 = 0;
            r4.hasValue = r3;	 Catch:{ all -> 0x0026 }
            r4.emitting = r1;	 Catch:{ all -> 0x0026 }
            monitor-exit(r4);	 Catch:{ all -> 0x0026 }
            if (r2 == 0) goto L_0x0022;
        L_0x0019:
            r5.onNext(r0);	 Catch:{ Throwable -> 0x001d }
            goto L_0x0022;
        L_0x001d:
            r5 = move-exception;
            rx.exceptions.Exceptions.throwOrReport(r5, r6, r0);
            return;
        L_0x0022:
            r5.onCompleted();
            return;
        L_0x0026:
            r5 = move-exception;
            monitor-exit(r4);	 Catch:{ all -> 0x0026 }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorDebounceWithTime.DebounceState.emitAndComplete(rx.Subscriber, rx.Subscriber):void");
        }

        public final synchronized void clear() {
            this.index++;
            this.value = null;
            this.hasValue = false;
        }
    }

    public OperatorDebounceWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final Object createWorker = this.scheduler.createWorker();
        final SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        final Object serialSubscription = new SerialSubscription();
        serializedSubscriber.add(createWorker);
        serializedSubscriber.add(serialSubscription);
        return new Subscriber<T>(subscriber) {
            final Subscriber<?> self = this;
            final DebounceState<T> state = new DebounceState();

            public void onStart() {
                request(Long.MAX_VALUE);
            }

            public void onNext(T t) {
                t = this.state.next(t);
                serialSubscription.set(createWorker.schedule(new Action0() {
                    public void call() {
                        C18941.this.state.emit(t, serializedSubscriber, C18941.this.self);
                    }
                }, OperatorDebounceWithTime.this.timeout, OperatorDebounceWithTime.this.unit));
            }

            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                unsubscribe();
                this.state.clear();
            }

            public void onCompleted() {
                this.state.emitAndComplete(serializedSubscriber, this);
            }
        };
    }
}
