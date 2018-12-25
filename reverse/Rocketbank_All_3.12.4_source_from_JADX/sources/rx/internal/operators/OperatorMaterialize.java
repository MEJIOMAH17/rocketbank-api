package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Notification;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.plugins.RxJavaHooks;

public final class OperatorMaterialize<T> implements Operator<Notification<T>, T> {

    static final class Holder {
        static final OperatorMaterialize<Object> INSTANCE = new OperatorMaterialize();

        Holder() {
        }
    }

    static class ParentSubscriber<T> extends Subscriber<T> {
        private boolean busy;
        private final Subscriber<? super Notification<T>> child;
        private boolean missed;
        private final AtomicLong requested = new AtomicLong();
        private volatile Notification<T> terminalNotification;

        ParentSubscriber(Subscriber<? super Notification<T>> subscriber) {
            this.child = subscriber;
        }

        public void onStart() {
            request(0);
        }

        void requestMore(long j) {
            BackpressureUtils.getAndAddRequest(this.requested, j);
            request(j);
            drain();
        }

        public void onCompleted() {
            this.terminalNotification = Notification.createOnCompleted();
            drain();
        }

        public void onError(Throwable th) {
            this.terminalNotification = Notification.createOnError(th);
            RxJavaHooks.onError(th);
            drain();
        }

        public void onNext(T t) {
            this.child.onNext(Notification.createOnNext(t));
            decrementRequested();
        }

        private void decrementRequested() {
            AtomicLong atomicLong = this.requested;
            long j;
            do {
                j = atomicLong.get();
                if (j == Long.MAX_VALUE) {
                    return;
                }
            } while (!atomicLong.compareAndSet(j, j - 1));
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void drain() {
            /*
            r7 = this;
            monitor-enter(r7);
            r0 = r7.busy;	 Catch:{ all -> 0x0049 }
            if (r0 == 0) goto L_0x000a;
        L_0x0005:
            r0 = 1;
            r7.missed = r0;	 Catch:{ all -> 0x0049 }
            monitor-exit(r7);	 Catch:{ all -> 0x0049 }
            return;
        L_0x000a:
            monitor-exit(r7);	 Catch:{ all -> 0x0049 }
            r0 = r7.requested;
        L_0x000d:
            r1 = r7.child;
            r1 = r1.isUnsubscribed();
            if (r1 != 0) goto L_0x0048;
        L_0x0015:
            r1 = r7.terminalNotification;
            if (r1 == 0) goto L_0x0039;
        L_0x0019:
            r2 = r0.get();
            r4 = 0;
            r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r6 <= 0) goto L_0x0039;
        L_0x0023:
            r0 = 0;
            r7.terminalNotification = r0;
            r0 = r7.child;
            r0.onNext(r1);
            r0 = r7.child;
            r0 = r0.isUnsubscribed();
            if (r0 != 0) goto L_0x0038;
        L_0x0033:
            r0 = r7.child;
            r0.onCompleted();
        L_0x0038:
            return;
        L_0x0039:
            monitor-enter(r7);
            r1 = r7.missed;	 Catch:{ all -> 0x0045 }
            if (r1 != 0) goto L_0x0043;
        L_0x003e:
            r0 = 0;
            r7.busy = r0;	 Catch:{ all -> 0x0045 }
            monitor-exit(r7);	 Catch:{ all -> 0x0045 }
            return;
        L_0x0043:
            monitor-exit(r7);	 Catch:{ all -> 0x0045 }
            goto L_0x000d;
        L_0x0045:
            r0 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x0045 }
            throw r0;
        L_0x0048:
            return;
        L_0x0049:
            r0 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x0049 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMaterialize.ParentSubscriber.drain():void");
        }
    }

    public static <T> OperatorMaterialize<T> instance() {
        return Holder.INSTANCE;
    }

    OperatorMaterialize() {
    }

    public final Subscriber<? super T> call(Subscriber<? super Notification<T>> subscriber) {
        final Subscriber<? super T> parentSubscriber = new ParentSubscriber(subscriber);
        subscriber.add(parentSubscriber);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                if (j > 0) {
                    parentSubscriber.requestMore(j);
                }
            }
        });
        return parentSubscriber;
    }
}
