package io.realm.internal;

import java.lang.ref.ReferenceQueue;

final class FinalizerRunnable implements Runnable {
    private final ReferenceQueue<NativeObject> referenceQueue;

    FinalizerRunnable(ReferenceQueue<NativeObject> referenceQueue) {
        this.referenceQueue = referenceQueue;
    }

    public final void run() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
    L_0x0000:
        r0 = r2.referenceQueue;	 Catch:{ InterruptedException -> 0x000c }
        r0 = r0.remove();	 Catch:{ InterruptedException -> 0x000c }
        r0 = (io.realm.internal.NativeObjectReference) r0;	 Catch:{ InterruptedException -> 0x000c }
        r0.cleanup();	 Catch:{ InterruptedException -> 0x000c }
        goto L_0x0000;
    L_0x000c:
        r0 = java.lang.Thread.currentThread();
        r0.interrupt();
        r0 = "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore";
        r1 = 0;
        r1 = new java.lang.Object[r1];
        io.realm.log.RealmLog.fatal(r0, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.FinalizerRunnable.run():void");
    }
}
