package com.flurry.sdk;

import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class ma {
    /* renamed from: c */
    private static ma f444c;
    /* renamed from: a */
    final UncaughtExceptionHandler f445a = Thread.getDefaultUncaughtExceptionHandler();
    /* renamed from: b */
    final Map<UncaughtExceptionHandler, Void> f446b = new WeakHashMap();

    /* renamed from: com.flurry.sdk.ma$a */
    final class C0522a implements UncaughtExceptionHandler {
        /* renamed from: a */
        final /* synthetic */ ma f443a;

        private C0522a(ma maVar) {
            this.f443a = maVar;
        }

        public final void uncaughtException(java.lang.Thread r3, java.lang.Throwable r4) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = r2.f443a;
            r0 = r0.m351c();
            r0 = r0.iterator();
        L_0x000a:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x001a;
        L_0x0010:
            r1 = r0.next();
            r1 = (java.lang.Thread.UncaughtExceptionHandler) r1;
            r1.uncaughtException(r3, r4);	 Catch:{ Throwable -> 0x000a }
            goto L_0x000a;
        L_0x001a:
            r0 = r2.f443a;
            r1 = r0.f445a;
            if (r1 == 0) goto L_0x0026;
        L_0x0020:
            r0 = r0.f445a;	 Catch:{ Throwable -> 0x0026 }
            r0.uncaughtException(r3, r4);	 Catch:{ Throwable -> 0x0026 }
            return;
        L_0x0026:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ma.a.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
        }
    }

    /* renamed from: a */
    public static synchronized ma m349a() {
        ma maVar;
        synchronized (ma.class) {
            if (f444c == null) {
                f444c = new ma();
            }
            maVar = f444c;
        }
        return maVar;
    }

    /* renamed from: b */
    public static synchronized void m350b() {
        synchronized (ma.class) {
            if (f444c != null) {
                Thread.setDefaultUncaughtExceptionHandler(f444c.f445a);
            }
            f444c = null;
        }
    }

    /* renamed from: c */
    final Set<UncaughtExceptionHandler> m351c() {
        Set<UncaughtExceptionHandler> keySet;
        synchronized (this.f446b) {
            keySet = this.f446b.keySet();
        }
        return keySet;
    }

    private ma() {
        Thread.setDefaultUncaughtExceptionHandler(new C0522a());
    }
}
