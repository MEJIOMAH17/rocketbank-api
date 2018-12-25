package rx.internal.producers;

import rx.Producer;

public final class ProducerArbiter implements Producer {
    static final Producer NULL_PRODUCER = new C17271();
    Producer currentProducer;
    boolean emitting;
    long missedProduced;
    Producer missedProducer;
    long missedRequested;
    long requested;

    /* renamed from: rx.internal.producers.ProducerArbiter$1 */
    static class C17271 implements Producer {
        public final void request(long j) {
        }

        C17271() {
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void request(long r7) {
        /*
        r6 = this;
        r0 = 0;
        r2 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1));
        if (r2 >= 0) goto L_0x000e;
    L_0x0006:
        r7 = new java.lang.IllegalArgumentException;
        r8 = "n >= 0 required";
        r7.<init>(r8);
        throw r7;
    L_0x000e:
        r2 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1));
        if (r2 != 0) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        monitor-enter(r6);
        r2 = r6.emitting;	 Catch:{ all -> 0x0048 }
        if (r2 == 0) goto L_0x0020;
    L_0x0018:
        r0 = r6.missedRequested;	 Catch:{ all -> 0x0048 }
        r2 = r0 + r7;
        r6.missedRequested = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r6);	 Catch:{ all -> 0x0048 }
        return;
    L_0x0020:
        r2 = 1;
        r6.emitting = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r6);	 Catch:{ all -> 0x0048 }
        r2 = r6.requested;	 Catch:{ all -> 0x003e }
        r4 = r2 + r7;
        r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r2 >= 0) goto L_0x0031;
    L_0x002c:
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
    L_0x0031:
        r6.requested = r4;	 Catch:{ all -> 0x003e }
        r0 = r6.currentProducer;	 Catch:{ all -> 0x003e }
        if (r0 == 0) goto L_0x003a;
    L_0x0037:
        r0.request(r7);	 Catch:{ all -> 0x003e }
    L_0x003a:
        r6.emitLoop();	 Catch:{ all -> 0x003e }
        return;
    L_0x003e:
        r7 = move-exception;
        monitor-enter(r6);
        r8 = 0;
        r6.emitting = r8;	 Catch:{ all -> 0x0045 }
        monitor-exit(r6);	 Catch:{ all -> 0x0045 }
        throw r7;
    L_0x0045:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0045 }
        throw r7;
    L_0x0048:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0048 }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerArbiter.request(long):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void produced(long r8) {
        /*
        r7 = this;
        r0 = 0;
        r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1));
        if (r2 > 0) goto L_0x000e;
    L_0x0006:
        r8 = new java.lang.IllegalArgumentException;
        r9 = "n > 0 required";
        r8.<init>(r9);
        throw r8;
    L_0x000e:
        monitor-enter(r7);
        r2 = r7.emitting;	 Catch:{ all -> 0x0048 }
        if (r2 == 0) goto L_0x001b;
    L_0x0013:
        r0 = r7.missedProduced;	 Catch:{ all -> 0x0048 }
        r2 = r0 + r8;
        r7.missedProduced = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r7);	 Catch:{ all -> 0x0048 }
        return;
    L_0x001b:
        r2 = 1;
        r7.emitting = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r7);	 Catch:{ all -> 0x0048 }
        r2 = r7.requested;	 Catch:{ all -> 0x003e }
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 == 0) goto L_0x003a;
    L_0x002a:
        r4 = r2 - r8;
        r8 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r8 >= 0) goto L_0x0038;
    L_0x0030:
        r8 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x003e }
        r9 = "more items arrived than were requested";
        r8.<init>(r9);	 Catch:{ all -> 0x003e }
        throw r8;	 Catch:{ all -> 0x003e }
    L_0x0038:
        r7.requested = r4;	 Catch:{ all -> 0x003e }
    L_0x003a:
        r7.emitLoop();	 Catch:{ all -> 0x003e }
        return;
    L_0x003e:
        r8 = move-exception;
        monitor-enter(r7);
        r9 = 0;
        r7.emitting = r9;	 Catch:{ all -> 0x0045 }
        monitor-exit(r7);	 Catch:{ all -> 0x0045 }
        throw r8;
    L_0x0045:
        r8 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0045 }
        throw r8;
    L_0x0048:
        r8 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0048 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerArbiter.produced(long):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setProducer(rx.Producer r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = r2.emitting;	 Catch:{ all -> 0x0028 }
        if (r0 == 0) goto L_0x000d;
    L_0x0005:
        if (r3 != 0) goto L_0x0009;
    L_0x0007:
        r3 = NULL_PRODUCER;	 Catch:{ all -> 0x0028 }
    L_0x0009:
        r2.missedProducer = r3;	 Catch:{ all -> 0x0028 }
        monitor-exit(r2);	 Catch:{ all -> 0x0028 }
        return;
    L_0x000d:
        r0 = 1;
        r2.emitting = r0;	 Catch:{ all -> 0x0028 }
        monitor-exit(r2);	 Catch:{ all -> 0x0028 }
        r2.currentProducer = r3;	 Catch:{ all -> 0x001e }
        if (r3 == 0) goto L_0x001a;
    L_0x0015:
        r0 = r2.requested;	 Catch:{ all -> 0x001e }
        r3.request(r0);	 Catch:{ all -> 0x001e }
    L_0x001a:
        r2.emitLoop();	 Catch:{ all -> 0x001e }
        return;
    L_0x001e:
        r3 = move-exception;
        monitor-enter(r2);
        r0 = 0;
        r2.emitting = r0;	 Catch:{ all -> 0x0025 }
        monitor-exit(r2);	 Catch:{ all -> 0x0025 }
        throw r3;
    L_0x0025:
        r3 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0025 }
        throw r3;
    L_0x0028:
        r3 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0028 }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerArbiter.setProducer(rx.Producer):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void emitLoop() {
        /*
        r14 = this;
    L_0x0000:
        monitor-enter(r14);
        r0 = r14.missedRequested;	 Catch:{ all -> 0x0065 }
        r2 = r14.missedProduced;	 Catch:{ all -> 0x0065 }
        r4 = r14.missedProducer;	 Catch:{ all -> 0x0065 }
        r5 = 0;
        r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));
        if (r7 != 0) goto L_0x0018;
    L_0x000d:
        r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
        if (r7 != 0) goto L_0x0018;
    L_0x0011:
        if (r4 != 0) goto L_0x0018;
    L_0x0013:
        r0 = 0;
        r14.emitting = r0;	 Catch:{ all -> 0x0065 }
        monitor-exit(r14);	 Catch:{ all -> 0x0065 }
        return;
    L_0x0018:
        r14.missedRequested = r5;	 Catch:{ all -> 0x0065 }
        r14.missedProduced = r5;	 Catch:{ all -> 0x0065 }
        r7 = 0;
        r14.missedProducer = r7;	 Catch:{ all -> 0x0065 }
        monitor-exit(r14);	 Catch:{ all -> 0x0065 }
        r8 = r14.requested;
        r10 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r12 == 0) goto L_0x004a;
    L_0x002b:
        r12 = r8 + r0;
        r8 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1));
        if (r8 < 0) goto L_0x0047;
    L_0x0031:
        r8 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
        if (r8 != 0) goto L_0x0036;
    L_0x0035:
        goto L_0x0047;
    L_0x0036:
        r8 = r12 - r2;
        r2 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1));
        if (r2 >= 0) goto L_0x0044;
    L_0x003c:
        r0 = new java.lang.IllegalStateException;
        r1 = "more produced than requested";
        r0.<init>(r1);
        throw r0;
    L_0x0044:
        r14.requested = r8;
        goto L_0x004a;
    L_0x0047:
        r14.requested = r10;
        r8 = r10;
    L_0x004a:
        if (r4 == 0) goto L_0x0059;
    L_0x004c:
        r0 = NULL_PRODUCER;
        if (r4 != r0) goto L_0x0053;
    L_0x0050:
        r14.currentProducer = r7;
        goto L_0x0000;
    L_0x0053:
        r14.currentProducer = r4;
        r4.request(r8);
        goto L_0x0000;
    L_0x0059:
        r2 = r14.currentProducer;
        if (r2 == 0) goto L_0x0000;
    L_0x005d:
        r3 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));
        if (r3 == 0) goto L_0x0000;
    L_0x0061:
        r2.request(r0);
        goto L_0x0000;
    L_0x0065:
        r0 = move-exception;
        monitor-exit(r14);	 Catch:{ all -> 0x0065 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerArbiter.emitLoop():void");
    }
}
