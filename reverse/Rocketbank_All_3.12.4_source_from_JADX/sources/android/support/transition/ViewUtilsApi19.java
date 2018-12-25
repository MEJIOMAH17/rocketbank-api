package android.support.transition;

import android.view.View;
import java.lang.reflect.Method;

class ViewUtilsApi19 extends ViewUtilsApi18 {
    private static Method sGetTransitionAlphaMethod;
    private static boolean sGetTransitionAlphaMethodFetched;
    private static Method sSetTransitionAlphaMethod;
    private static boolean sSetTransitionAlphaMethodFetched;

    public final void clearNonTransitionAlpha(View view) {
    }

    public final void saveNonTransitionAlpha(View view) {
    }

    ViewUtilsApi19() {
    }

    public final void setTransitionAlpha(android.view.View r7, float r8) {
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
        r6 = this;
        r0 = sSetTransitionAlphaMethodFetched;
        r1 = 0;
        r2 = 1;
        if (r0 != 0) goto L_0x0024;
    L_0x0006:
        r0 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r3 = "setTransitionAlpha";	 Catch:{ NoSuchMethodException -> 0x001a }
        r4 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x001a }
        r5 = java.lang.Float.TYPE;	 Catch:{ NoSuchMethodException -> 0x001a }
        r4[r1] = r5;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0 = r0.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x001a }
        sSetTransitionAlphaMethod = r0;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x001a }
        goto L_0x0022;
    L_0x001a:
        r0 = move-exception;
        r3 = "ViewUtilsApi19";
        r4 = "Failed to retrieve setTransitionAlpha method";
        android.util.Log.i(r3, r4, r0);
    L_0x0022:
        sSetTransitionAlphaMethodFetched = r2;
    L_0x0024:
        r0 = sSetTransitionAlphaMethod;
        if (r0 == 0) goto L_0x0042;
    L_0x0028:
        r0 = sSetTransitionAlphaMethod;	 Catch:{ IllegalAccessException -> 0x0041, InvocationTargetException -> 0x0036 }
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x0041, InvocationTargetException -> 0x0036 }
        r8 = java.lang.Float.valueOf(r8);	 Catch:{ IllegalAccessException -> 0x0041, InvocationTargetException -> 0x0036 }
        r2[r1] = r8;	 Catch:{ IllegalAccessException -> 0x0041, InvocationTargetException -> 0x0036 }
        r0.invoke(r7, r2);	 Catch:{ IllegalAccessException -> 0x0041, InvocationTargetException -> 0x0036 }
        return;
    L_0x0036:
        r7 = move-exception;
        r8 = new java.lang.RuntimeException;
        r7 = r7.getCause();
        r8.<init>(r7);
        throw r8;
    L_0x0041:
        return;
    L_0x0042:
        r7.setAlpha(r8);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtilsApi19.setTransitionAlpha(android.view.View, float):void");
    }

    public final float getTransitionAlpha(android.view.View r6) {
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
        r5 = this;
        r0 = sGetTransitionAlphaMethodFetched;
        r1 = 0;
        if (r0 != 0) goto L_0x0020;
    L_0x0005:
        r0 = 1;
        r2 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x0016 }
        r3 = "getTransitionAlpha";	 Catch:{ NoSuchMethodException -> 0x0016 }
        r4 = new java.lang.Class[r1];	 Catch:{ NoSuchMethodException -> 0x0016 }
        r2 = r2.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x0016 }
        sGetTransitionAlphaMethod = r2;	 Catch:{ NoSuchMethodException -> 0x0016 }
        r2.setAccessible(r0);	 Catch:{ NoSuchMethodException -> 0x0016 }
        goto L_0x001e;
    L_0x0016:
        r2 = move-exception;
        r3 = "ViewUtilsApi19";
        r4 = "Failed to retrieve getTransitionAlpha method";
        android.util.Log.i(r3, r4, r2);
    L_0x001e:
        sGetTransitionAlphaMethodFetched = r0;
    L_0x0020:
        r0 = sGetTransitionAlphaMethod;
        if (r0 == 0) goto L_0x003e;
    L_0x0024:
        r0 = sGetTransitionAlphaMethod;	 Catch:{ IllegalAccessException -> 0x003e, InvocationTargetException -> 0x0033 }
        r1 = new java.lang.Object[r1];	 Catch:{ IllegalAccessException -> 0x003e, InvocationTargetException -> 0x0033 }
        r0 = r0.invoke(r6, r1);	 Catch:{ IllegalAccessException -> 0x003e, InvocationTargetException -> 0x0033 }
        r0 = (java.lang.Float) r0;	 Catch:{ IllegalAccessException -> 0x003e, InvocationTargetException -> 0x0033 }
        r0 = r0.floatValue();	 Catch:{ IllegalAccessException -> 0x003e, InvocationTargetException -> 0x0033 }
        return r0;
    L_0x0033:
        r6 = move-exception;
        r0 = new java.lang.RuntimeException;
        r6 = r6.getCause();
        r0.<init>(r6);
        throw r0;
    L_0x003e:
        r6 = super.getTransitionAlpha(r6);
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtilsApi19.getTransitionAlpha(android.view.View):float");
    }
}
