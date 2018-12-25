package rx.internal.producers;

import java.util.List;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;

public final class ProducerObserverArbiter<T> implements Observer<T>, Producer {
    static final Producer NULL_PRODUCER = new C17281();
    final Subscriber<? super T> child;
    Producer currentProducer;
    boolean emitting;
    volatile boolean hasError;
    Producer missedProducer;
    long missedRequested;
    Object missedTerminal;
    List<T> queue;
    long requested;

    /* renamed from: rx.internal.producers.ProducerObserverArbiter$1 */
    static class C17281 implements Producer {
        public final void request(long j) {
        }

        C17281() {
        }
    }

    public ProducerObserverArbiter(Subscriber<? super T> subscriber) {
        this.child = subscriber;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onNext(T r7) {
        /*
        r6 = this;
        monitor-enter(r6);
        r0 = r6.emitting;	 Catch:{ all -> 0x003e }
        if (r0 == 0) goto L_0x0016;
    L_0x0005:
        r0 = r6.queue;	 Catch:{ all -> 0x003e }
        if (r0 != 0) goto L_0x0011;
    L_0x0009:
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x003e }
        r1 = 4;
        r0.<init>(r1);	 Catch:{ all -> 0x003e }
        r6.queue = r0;	 Catch:{ all -> 0x003e }
    L_0x0011:
        r0.add(r7);	 Catch:{ all -> 0x003e }
        monitor-exit(r6);	 Catch:{ all -> 0x003e }
        return;
    L_0x0016:
        r0 = 1;
        r6.emitting = r0;	 Catch:{ all -> 0x003e }
        monitor-exit(r6);	 Catch:{ all -> 0x003e }
        r0 = r6.child;	 Catch:{ all -> 0x0034 }
        r0.onNext(r7);	 Catch:{ all -> 0x0034 }
        r0 = r6.requested;	 Catch:{ all -> 0x0034 }
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r7 == 0) goto L_0x0030;
    L_0x002a:
        r2 = 1;
        r4 = r0 - r2;
        r6.requested = r4;	 Catch:{ all -> 0x0034 }
    L_0x0030:
        r6.emitLoop();	 Catch:{ all -> 0x0034 }
        return;
    L_0x0034:
        r7 = move-exception;
        monitor-enter(r6);
        r0 = 0;
        r6.emitting = r0;	 Catch:{ all -> 0x003b }
        monitor-exit(r6);	 Catch:{ all -> 0x003b }
        throw r7;
    L_0x003b:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x003b }
        throw r7;
    L_0x003e:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x003e }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerObserverArbiter.onNext(java.lang.Object):void");
    }

    public final void onError(Throwable th) {
        boolean z;
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = th;
                z = false;
            } else {
                this.emitting = true;
                z = true;
            }
        }
        if (z) {
            this.child.onError(th);
        } else {
            this.hasError = true;
        }
    }

    public final void onCompleted() {
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = Boolean.TRUE;
                return;
            }
            this.emitting = true;
            this.child.onCompleted();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void request(long r8) {
        /*
        r7 = this;
        r0 = 0;
        r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1));
        if (r2 >= 0) goto L_0x000e;
    L_0x0006:
        r8 = new java.lang.IllegalArgumentException;
        r9 = "n >= 0 required";
        r8.<init>(r9);
        throw r8;
    L_0x000e:
        r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1));
        if (r2 != 0) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        monitor-enter(r7);
        r2 = r7.emitting;	 Catch:{ all -> 0x0048 }
        if (r2 == 0) goto L_0x0020;
    L_0x0018:
        r0 = r7.missedRequested;	 Catch:{ all -> 0x0048 }
        r2 = r0 + r8;
        r7.missedRequested = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r7);	 Catch:{ all -> 0x0048 }
        return;
    L_0x0020:
        r2 = 1;
        r7.emitting = r2;	 Catch:{ all -> 0x0048 }
        monitor-exit(r7);	 Catch:{ all -> 0x0048 }
        r2 = r7.currentProducer;
        r3 = r7.requested;	 Catch:{ all -> 0x003e }
        r5 = r3 + r8;
        r3 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
        if (r3 >= 0) goto L_0x0033;
    L_0x002e:
        r5 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
    L_0x0033:
        r7.requested = r5;	 Catch:{ all -> 0x003e }
        r7.emitLoop();	 Catch:{ all -> 0x003e }
        if (r2 == 0) goto L_0x003d;
    L_0x003a:
        r2.request(r8);
    L_0x003d:
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
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerObserverArbiter.request(long):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setProducer(rx.Producer r6) {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.emitting;	 Catch:{ all -> 0x002f }
        if (r0 == 0) goto L_0x000e;
    L_0x0005:
        if (r6 == 0) goto L_0x0008;
    L_0x0007:
        goto L_0x000a;
    L_0x0008:
        r6 = NULL_PRODUCER;	 Catch:{ all -> 0x002f }
    L_0x000a:
        r5.missedProducer = r6;	 Catch:{ all -> 0x002f }
        monitor-exit(r5);	 Catch:{ all -> 0x002f }
        return;
    L_0x000e:
        r0 = 1;
        r5.emitting = r0;	 Catch:{ all -> 0x002f }
        monitor-exit(r5);	 Catch:{ all -> 0x002f }
        r5.currentProducer = r6;
        r0 = r5.requested;
        r5.emitLoop();	 Catch:{ all -> 0x0025 }
        if (r6 == 0) goto L_0x0024;
    L_0x001b:
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r4 == 0) goto L_0x0024;
    L_0x0021:
        r6.request(r0);
    L_0x0024:
        return;
    L_0x0025:
        r6 = move-exception;
        monitor-enter(r5);
        r0 = 0;
        r5.emitting = r0;	 Catch:{ all -> 0x002c }
        monitor-exit(r5);	 Catch:{ all -> 0x002c }
        throw r6;
    L_0x002c:
        r6 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x002c }
        throw r6;
    L_0x002f:
        r6 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x002f }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerObserverArbiter.setProducer(rx.Producer):void");
    }

    final void emitLoop() {
        Observer observer = this.child;
        Producer producer = null;
        long j = 0;
        loop3:
        while (true) {
            long j2;
            boolean z;
            synchronized (this) {
                try {
                    j2 = r1.missedRequested;
                    Producer producer2 = r1.missedProducer;
                    Boolean bool = r1.missedTerminal;
                    List list = r1.queue;
                    boolean z2 = false;
                    if (j2 == 0 && producer2 == null && list == null && bool == null) {
                        r1.emitting = false;
                        z = true;
                    } else {
                        r1.missedRequested = 0;
                        r1.missedProducer = null;
                        r1.queue = null;
                        r1.missedTerminal = null;
                        z = false;
                    }
                } finally {
                    long j3;
                    long j4 = 
/*
Method generation error in method: rx.internal.producers.ProducerObserverArbiter.emitLoop():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: ?: MERGE  (r0_6 'j4' long) = (r0_7 'j4' long), (r16_7 'j3' long) in method: rx.internal.producers.ProducerObserverArbiter.emitLoop():void, dex: classes2.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:226)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:203)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:100)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:299)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:229)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:174)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:187)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:320)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:257)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:220)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:75)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:12)
	at jadx.core.ProcessClass.process(ProcessClass.java:40)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
Caused by: jadx.core.utils.exceptions.CodegenException: MERGE can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:537)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:509)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
	... 34 more

*/
                }
