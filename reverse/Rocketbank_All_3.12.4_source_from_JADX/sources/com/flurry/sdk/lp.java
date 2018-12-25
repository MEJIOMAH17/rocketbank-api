package com.flurry.sdk;

import android.app.KeyguardManager;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public final class lp {
    /* renamed from: a */
    public static boolean m288a() {
        return ((KeyguardManager) jr.m114a().f293a.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: b */
    public static android.graphics.Point m290b() {
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
        r0 = com.flurry.sdk.jr.m114a();
        r0 = r0.f293a;
        r1 = "window";
        r0 = r0.getSystemService(r1);
        r0 = (android.view.WindowManager) r0;
        r0 = r0.getDefaultDisplay();
        r1 = new android.graphics.Point;
        r1.<init>();
        r2 = android.os.Build.VERSION.SDK_INT;
        r3 = 17;
        if (r2 < r3) goto L_0x0021;
    L_0x001d:
        r0.getRealSize(r1);
        goto L_0x0073;
    L_0x0021:
        r2 = android.os.Build.VERSION.SDK_INT;
        r3 = 14;
        if (r2 < r3) goto L_0x005d;
    L_0x0027:
        r2 = android.view.Display.class;	 Catch:{ Throwable -> 0x0059 }
        r3 = "getRawHeight";	 Catch:{ Throwable -> 0x0059 }
        r4 = 0;	 Catch:{ Throwable -> 0x0059 }
        r5 = new java.lang.Class[r4];	 Catch:{ Throwable -> 0x0059 }
        r2 = r2.getMethod(r3, r5);	 Catch:{ Throwable -> 0x0059 }
        r3 = android.view.Display.class;	 Catch:{ Throwable -> 0x0059 }
        r5 = "getRawWidth";	 Catch:{ Throwable -> 0x0059 }
        r6 = new java.lang.Class[r4];	 Catch:{ Throwable -> 0x0059 }
        r3 = r3.getMethod(r5, r6);	 Catch:{ Throwable -> 0x0059 }
        r5 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x0059 }
        r3 = r3.invoke(r0, r5);	 Catch:{ Throwable -> 0x0059 }
        r3 = (java.lang.Integer) r3;	 Catch:{ Throwable -> 0x0059 }
        r3 = r3.intValue();	 Catch:{ Throwable -> 0x0059 }
        r1.x = r3;	 Catch:{ Throwable -> 0x0059 }
        r3 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x0059 }
        r2 = r2.invoke(r0, r3);	 Catch:{ Throwable -> 0x0059 }
        r2 = (java.lang.Integer) r2;	 Catch:{ Throwable -> 0x0059 }
        r2 = r2.intValue();	 Catch:{ Throwable -> 0x0059 }
        r1.y = r2;	 Catch:{ Throwable -> 0x0059 }
        goto L_0x0073;
    L_0x0059:
        r0.getSize(r1);
        goto L_0x0073;
    L_0x005d:
        r2 = android.os.Build.VERSION.SDK_INT;
        r3 = 13;
        if (r2 < r3) goto L_0x0067;
    L_0x0063:
        r0.getSize(r1);
        goto L_0x0073;
    L_0x0067:
        r2 = r0.getWidth();
        r1.x = r2;
        r0 = r0.getHeight();
        r1.y = r0;
    L_0x0073:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lp.b():android.graphics.Point");
    }

    /* renamed from: c */
    public static DisplayMetrics m291c() {
        Display defaultDisplay = ((WindowManager) jr.m114a().f293a.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: d */
    public static android.util.DisplayMetrics m292d() {
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
        r0 = com.flurry.sdk.jr.m114a();
        r0 = r0.f293a;
        r1 = "window";
        r0 = r0.getSystemService(r1);
        r0 = (android.view.WindowManager) r0;
        r0 = r0.getDefaultDisplay();
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 17;
        if (r1 < r2) goto L_0x0021;
    L_0x0018:
        r1 = new android.util.DisplayMetrics;
        r1.<init>();
        r0.getRealMetrics(r1);
        goto L_0x0044;
    L_0x0021:
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 14;
        if (r1 < r2) goto L_0x0040;
    L_0x0027:
        r1 = new android.util.DisplayMetrics;	 Catch:{ Exception -> 0x0040 }
        r1.<init>();	 Catch:{ Exception -> 0x0040 }
        r2 = android.view.Display.class;	 Catch:{ Exception -> 0x0040 }
        r3 = "getRealMetrics";	 Catch:{ Exception -> 0x0040 }
        r4 = 0;	 Catch:{ Exception -> 0x0040 }
        r5 = new java.lang.Class[r4];	 Catch:{ Exception -> 0x0040 }
        r2 = r2.getMethod(r3, r5);	 Catch:{ Exception -> 0x0040 }
        r3 = 1;	 Catch:{ Exception -> 0x0040 }
        r3 = new java.lang.Object[r3];	 Catch:{ Exception -> 0x0040 }
        r3[r4] = r1;	 Catch:{ Exception -> 0x0040 }
        r2.invoke(r0, r3);	 Catch:{ Exception -> 0x0040 }
        goto L_0x0044;
    L_0x0040:
        r1 = m291c();
    L_0x0044:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lp.d():android.util.DisplayMetrics");
    }

    /* renamed from: a */
    public static int m287a(int i) {
        return Math.round(((float) i) / m292d().density);
    }

    /* renamed from: b */
    public static int m289b(int i) {
        return Math.round(((float) i) * m292d().density);
    }

    /* renamed from: e */
    public static int m293e() {
        Point b = m290b();
        if (b.x == b.y) {
            return 3;
        }
        return b.x < b.y ? 1 : 2;
    }
}
