package android.support.transition;

import java.lang.reflect.Method;

final class ViewUtilsApi22 extends ViewUtilsApi21 {
    private static Method sSetLeftTopRightBottomMethod;
    private static boolean sSetLeftTopRightBottomMethodFetched;

    ViewUtilsApi22() {
    }

    public final void setLeftTopRightBottom(android.view.View r10, int r11, int r12, int r13, int r14) {
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
        r9 = this;
        r0 = sSetLeftTopRightBottomMethodFetched;
        r1 = 3;
        r2 = 2;
        r3 = 0;
        r4 = 4;
        r5 = 1;
        if (r0 != 0) goto L_0x0033;
    L_0x0009:
        r0 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r6 = "setLeftTopRightBottom";	 Catch:{ NoSuchMethodException -> 0x0029 }
        r7 = new java.lang.Class[r4];	 Catch:{ NoSuchMethodException -> 0x0029 }
        r8 = java.lang.Integer.TYPE;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r7[r3] = r8;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r8 = java.lang.Integer.TYPE;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r7[r5] = r8;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r8 = java.lang.Integer.TYPE;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r7[r2] = r8;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r8 = java.lang.Integer.TYPE;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r7[r1] = r8;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r0 = r0.getDeclaredMethod(r6, r7);	 Catch:{ NoSuchMethodException -> 0x0029 }
        sSetLeftTopRightBottomMethod = r0;	 Catch:{ NoSuchMethodException -> 0x0029 }
        r0.setAccessible(r5);	 Catch:{ NoSuchMethodException -> 0x0029 }
        goto L_0x0031;
    L_0x0029:
        r0 = move-exception;
        r6 = "ViewUtilsApi22";
        r7 = "Failed to retrieve setLeftTopRightBottom method";
        android.util.Log.i(r6, r7, r0);
    L_0x0031:
        sSetLeftTopRightBottomMethodFetched = r5;
    L_0x0033:
        r0 = sSetLeftTopRightBottomMethod;
        if (r0 == 0) goto L_0x0063;
    L_0x0037:
        r0 = sSetLeftTopRightBottomMethod;	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r4 = new java.lang.Object[r4];	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r11 = java.lang.Integer.valueOf(r11);	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r4[r3] = r11;	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r11 = java.lang.Integer.valueOf(r12);	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r4[r5] = r11;	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r11 = java.lang.Integer.valueOf(r13);	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r4[r2] = r11;	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r11 = java.lang.Integer.valueOf(r14);	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r4[r1] = r11;	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        r0.invoke(r10, r4);	 Catch:{ IllegalAccessException -> 0x0062, InvocationTargetException -> 0x0057 }
        return;
    L_0x0057:
        r10 = move-exception;
        r11 = new java.lang.RuntimeException;
        r10 = r10.getCause();
        r11.<init>(r10);
        throw r11;
    L_0x0062:
        return;
    L_0x0063:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtilsApi22.setLeftTopRightBottom(android.view.View, int, int, int, int):void");
    }
}
