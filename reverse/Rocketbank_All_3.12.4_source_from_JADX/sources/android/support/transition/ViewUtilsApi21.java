package android.support.transition;

import java.lang.reflect.Method;

class ViewUtilsApi21 extends ViewUtilsApi19 {
    private static Method sTransformMatrixToGlobalMethod;
    private static boolean sTransformMatrixToGlobalMethodFetched;
    private static Method sTransformMatrixToLocalMethod;
    private static boolean sTransformMatrixToLocalMethodFetched;

    ViewUtilsApi21() {
    }

    public final void transformMatrixToGlobal(android.view.View r7, android.graphics.Matrix r8) {
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
        r0 = sTransformMatrixToGlobalMethodFetched;
        r1 = 0;
        r2 = 1;
        if (r0 != 0) goto L_0x0024;
    L_0x0006:
        r0 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r3 = "transformMatrixToGlobal";	 Catch:{ NoSuchMethodException -> 0x001a }
        r4 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x001a }
        r5 = android.graphics.Matrix.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r4[r1] = r5;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0 = r0.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x001a }
        sTransformMatrixToGlobalMethod = r0;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x001a }
        goto L_0x0022;
    L_0x001a:
        r0 = move-exception;
        r3 = "ViewUtilsApi21";
        r4 = "Failed to retrieve transformMatrixToGlobal method";
        android.util.Log.i(r3, r4, r0);
    L_0x0022:
        sTransformMatrixToGlobalMethodFetched = r2;
    L_0x0024:
        r0 = sTransformMatrixToGlobalMethod;
        if (r0 == 0) goto L_0x003e;
    L_0x0028:
        r0 = sTransformMatrixToGlobalMethod;	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r2[r1] = r8;	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r0.invoke(r7, r2);	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        return;
    L_0x0032:
        r7 = move-exception;
        r8 = new java.lang.RuntimeException;
        r7 = r7.getCause();
        r8.<init>(r7);
        throw r8;
    L_0x003d:
        return;
    L_0x003e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtilsApi21.transformMatrixToGlobal(android.view.View, android.graphics.Matrix):void");
    }

    public final void transformMatrixToLocal(android.view.View r7, android.graphics.Matrix r8) {
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
        r0 = sTransformMatrixToLocalMethodFetched;
        r1 = 0;
        r2 = 1;
        if (r0 != 0) goto L_0x0024;
    L_0x0006:
        r0 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r3 = "transformMatrixToLocal";	 Catch:{ NoSuchMethodException -> 0x001a }
        r4 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x001a }
        r5 = android.graphics.Matrix.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r4[r1] = r5;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0 = r0.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x001a }
        sTransformMatrixToLocalMethod = r0;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x001a }
        goto L_0x0022;
    L_0x001a:
        r0 = move-exception;
        r3 = "ViewUtilsApi21";
        r4 = "Failed to retrieve transformMatrixToLocal method";
        android.util.Log.i(r3, r4, r0);
    L_0x0022:
        sTransformMatrixToLocalMethodFetched = r2;
    L_0x0024:
        r0 = sTransformMatrixToLocalMethod;
        if (r0 == 0) goto L_0x003e;
    L_0x0028:
        r0 = sTransformMatrixToLocalMethod;	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r2[r1] = r8;	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        r0.invoke(r7, r2);	 Catch:{ IllegalAccessException -> 0x003d, InvocationTargetException -> 0x0032 }
        return;
    L_0x0032:
        r7 = move-exception;
        r8 = new java.lang.RuntimeException;
        r7 = r7.getCause();
        r8.<init>(r7);
        throw r8;
    L_0x003d:
        return;
    L_0x003e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtilsApi21.transformMatrixToLocal(android.view.View, android.graphics.Matrix):void");
    }
}
