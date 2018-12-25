package rx.internal.util;

import java.util.concurrent.atomic.AtomicLong;
import rx.Producer;
import rx.annotations.Experimental;

@Experimental
public final class BackpressureDrainManager extends AtomicLong implements Producer {
    private static final long serialVersionUID = 2826241102729529449L;
    final BackpressureQueueCallback actual;
    boolean emitting;
    Throwable exception;
    volatile boolean terminated;

    public interface BackpressureQueueCallback {
        boolean accept(Object obj);

        void complete(Throwable th);

        Object peek();

        Object poll();
    }

    public BackpressureDrainManager(BackpressureQueueCallback backpressureQueueCallback) {
        this.actual = backpressureQueueCallback;
    }

    public final boolean isTerminated() {
        return this.terminated;
    }

    public final void terminate() {
        this.terminated = true;
    }

    public final void terminate(Throwable th) {
        if (!this.terminated) {
            this.exception = th;
            this.terminated = true;
        }
    }

    public final void terminateAndDrain() {
        this.terminated = true;
        drain();
    }

    public final void terminateAndDrain(Throwable th) {
        if (!this.terminated) {
            this.exception = th;
            this.terminated = true;
            drain();
        }
    }

    public final void request(long j) {
        if (j != 0) {
            Object obj;
            long j2;
            long j3;
            do {
                j2 = get();
                obj = j2 == 0 ? 1 : null;
                if (j2 == Long.MAX_VALUE) {
                    break;
                } else if (j == Long.MAX_VALUE) {
                    obj = 1;
                    j3 = j;
                } else {
                    j3 = j2 > Long.MAX_VALUE - j ? Long.MAX_VALUE : j2 + j;
                }
            } while (!compareAndSet(j2, j3));
            if (obj != null) {
                drain();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void drain() {
        /*
        r13 = this;
        monitor-enter(r13);
        r0 = r13.emitting;	 Catch:{ all -> 0x0095 }
        if (r0 == 0) goto L_0x0007;
    L_0x0005:
        monitor-exit(r13);	 Catch:{ all -> 0x0095 }
        return;
    L_0x0007:
        r0 = 1;
        r13.emitting = r0;	 Catch:{ all -> 0x0095 }
        r1 = r13.terminated;	 Catch:{ all -> 0x0095 }
        monitor-exit(r13);	 Catch:{ all -> 0x0095 }
        r2 = r13.get();
        r4 = 0;
        r5 = r13.actual;	 Catch:{ all -> 0x0088 }
    L_0x0014:
        r6 = r4;
    L_0x0015:
        r7 = 0;
        r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1));
        if (r9 > 0) goto L_0x001d;
    L_0x001b:
        if (r1 == 0) goto L_0x0047;
    L_0x001d:
        if (r1 == 0) goto L_0x0032;
    L_0x001f:
        r9 = r5.peek();	 Catch:{ all -> 0x0088 }
        if (r9 != 0) goto L_0x002e;
    L_0x0025:
        r1 = r13.exception;	 Catch:{ all -> 0x002b }
        r5.complete(r1);	 Catch:{ all -> 0x002b }
        return;
    L_0x002b:
        r1 = move-exception;
        goto L_0x008a;
    L_0x002e:
        r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1));
        if (r9 == 0) goto L_0x0047;
    L_0x0032:
        r9 = r5.poll();	 Catch:{ all -> 0x0088 }
        if (r9 == 0) goto L_0x0047;
    L_0x0038:
        r7 = r5.accept(r9);	 Catch:{ all -> 0x0088 }
        if (r7 == 0) goto L_0x003f;
    L_0x003e:
        return;
    L_0x003f:
        r7 = 1;
        r9 = r2 - r7;
        r6 = r6 + 1;
        r2 = r9;
        goto L_0x0015;
    L_0x0047:
        monitor-enter(r13);	 Catch:{ all -> 0x0088 }
        r1 = r13.terminated;	 Catch:{ all -> 0x0082 }
        r2 = r5.peek();	 Catch:{ all -> 0x0082 }
        if (r2 == 0) goto L_0x0052;
    L_0x0050:
        r2 = r0;
        goto L_0x0053;
    L_0x0052:
        r2 = r4;
    L_0x0053:
        r9 = r13.get();	 Catch:{ all -> 0x0082 }
        r11 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r3 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r3 != 0) goto L_0x006a;
    L_0x0060:
        if (r2 != 0) goto L_0x0068;
    L_0x0062:
        if (r1 != 0) goto L_0x0068;
    L_0x0064:
        r13.emitting = r4;	 Catch:{ all -> 0x0086 }
        monitor-exit(r13);	 Catch:{ all -> 0x0086 }
        return;
    L_0x0068:
        r2 = r11;
        goto L_0x007c;
    L_0x006a:
        r3 = -r6;
        r9 = (long) r3;
        r9 = r13.addAndGet(r9);	 Catch:{ all -> 0x0082 }
        r3 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
        if (r3 == 0) goto L_0x0076;
    L_0x0074:
        if (r2 != 0) goto L_0x007b;
    L_0x0076:
        if (r1 == 0) goto L_0x007e;
    L_0x0078:
        if (r2 == 0) goto L_0x007b;
    L_0x007a:
        goto L_0x007e;
    L_0x007b:
        r2 = r9;
    L_0x007c:
        monitor-exit(r13);	 Catch:{ all -> 0x0082 }
        goto L_0x0014;
    L_0x007e:
        r13.emitting = r4;	 Catch:{ all -> 0x0086 }
        monitor-exit(r13);	 Catch:{ all -> 0x0086 }
        return;
    L_0x0082:
        r1 = move-exception;
        r0 = r4;
    L_0x0084:
        monitor-exit(r13);	 Catch:{ all -> 0x0086 }
        throw r1;	 Catch:{ all -> 0x002b }
    L_0x0086:
        r1 = move-exception;
        goto L_0x0084;
    L_0x0088:
        r1 = move-exception;
        r0 = r4;
    L_0x008a:
        if (r0 != 0) goto L_0x0094;
    L_0x008c:
        monitor-enter(r13);
        r13.emitting = r4;	 Catch:{ all -> 0x0091 }
        monitor-exit(r13);	 Catch:{ all -> 0x0091 }
        goto L_0x0094;
    L_0x0091:
        r0 = move-exception;
        monitor-exit(r13);	 Catch:{ all -> 0x0091 }
        throw r0;
    L_0x0094:
        throw r1;
    L_0x0095:
        r0 = move-exception;
        monitor-exit(r13);	 Catch:{ all -> 0x0095 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.BackpressureDrainManager.drain():void");
    }
}
