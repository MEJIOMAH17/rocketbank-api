package android.support.design.widget;

import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import java.lang.reflect.Method;

class DrawableUtils {
    private static final String LOG_TAG = "DrawableUtils";
    private static Method sSetConstantStateMethod;
    private static boolean sSetConstantStateMethodFetched;

    private DrawableUtils() {
    }

    static boolean setContainerConstantState(DrawableContainer drawableContainer, ConstantState constantState) {
        return setContainerConstantStateV9(drawableContainer, constantState);
    }

    private static boolean setContainerConstantStateV9(android.graphics.drawable.DrawableContainer r6, android.graphics.drawable.Drawable.ConstantState r7) {
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
        r0 = sSetConstantStateMethodFetched;
        r1 = 0;
        r2 = 1;
        if (r0 != 0) goto L_0x0023;
    L_0x0006:
        r0 = android.graphics.drawable.DrawableContainer.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r3 = "setConstantState";	 Catch:{ NoSuchMethodException -> 0x001a }
        r4 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x001a }
        r5 = android.graphics.drawable.DrawableContainer.DrawableContainerState.class;	 Catch:{ NoSuchMethodException -> 0x001a }
        r4[r1] = r5;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0 = r0.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x001a }
        sSetConstantStateMethod = r0;	 Catch:{ NoSuchMethodException -> 0x001a }
        r0.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x001a }
        goto L_0x0021;
    L_0x001a:
        r0 = "DrawableUtils";
        r3 = "Could not fetch setConstantState(). Oh well.";
        android.util.Log.e(r0, r3);
    L_0x0021:
        sSetConstantStateMethodFetched = r2;
    L_0x0023:
        r0 = sSetConstantStateMethod;
        if (r0 == 0) goto L_0x0038;
    L_0x0027:
        r0 = sSetConstantStateMethod;	 Catch:{ Exception -> 0x0031 }
        r3 = new java.lang.Object[r2];	 Catch:{ Exception -> 0x0031 }
        r3[r1] = r7;	 Catch:{ Exception -> 0x0031 }
        r0.invoke(r6, r3);	 Catch:{ Exception -> 0x0031 }
        return r2;
    L_0x0031:
        r6 = "DrawableUtils";
        r7 = "Could not invoke setConstantState(). Oh well.";
        android.util.Log.e(r6, r7);
    L_0x0038:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.DrawableUtils.setContainerConstantStateV9(android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable$ConstantState):boolean");
    }
}
