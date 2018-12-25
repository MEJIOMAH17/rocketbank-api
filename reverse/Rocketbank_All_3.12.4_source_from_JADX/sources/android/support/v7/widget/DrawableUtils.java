package android.support.v7.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.support.v7.graphics.drawable.DrawableWrapper;

@RestrictTo
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new android.graphics.Rect;
        r0.<init>();
        INSETS_NONE = r0;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 18;
        if (r0 < r1) goto L_0x0016;
    L_0x000d:
        r0 = "android.graphics.Insets";	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0016 }
        sInsetsClazz = r0;	 Catch:{ ClassNotFoundException -> 0x0016 }
        return;
    L_0x0016:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.DrawableUtils.<clinit>():void");
    }

    private DrawableUtils() {
    }

    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r10) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = sInsetsClazz;
        if (r0 == 0) goto L_0x00a5;
    L_0x0004:
        r0 = r10 instanceof android.support.v4.graphics.drawable.WrappedDrawable;	 Catch:{ Exception -> 0x009e }
        if (r0 == 0) goto L_0x000e;	 Catch:{ Exception -> 0x009e }
    L_0x0008:
        r10 = (android.support.v4.graphics.drawable.WrappedDrawable) r10;	 Catch:{ Exception -> 0x009e }
        r10 = r10.getWrappedDrawable();	 Catch:{ Exception -> 0x009e }
    L_0x000e:
        r0 = r10.getClass();	 Catch:{ Exception -> 0x009e }
        r1 = "getOpticalInsets";	 Catch:{ Exception -> 0x009e }
        r2 = 0;	 Catch:{ Exception -> 0x009e }
        r3 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x009e }
        r0 = r0.getMethod(r1, r3);	 Catch:{ Exception -> 0x009e }
        r1 = new java.lang.Object[r2];	 Catch:{ Exception -> 0x009e }
        r10 = r0.invoke(r10, r1);	 Catch:{ Exception -> 0x009e }
        if (r10 == 0) goto L_0x00a5;	 Catch:{ Exception -> 0x009e }
    L_0x0023:
        r0 = new android.graphics.Rect;	 Catch:{ Exception -> 0x009e }
        r0.<init>();	 Catch:{ Exception -> 0x009e }
        r1 = sInsetsClazz;	 Catch:{ Exception -> 0x009e }
        r1 = r1.getFields();	 Catch:{ Exception -> 0x009e }
        r3 = r1.length;	 Catch:{ Exception -> 0x009e }
        r4 = r2;	 Catch:{ Exception -> 0x009e }
    L_0x0030:
        if (r4 >= r3) goto L_0x009d;	 Catch:{ Exception -> 0x009e }
    L_0x0032:
        r5 = r1[r4];	 Catch:{ Exception -> 0x009e }
        r6 = r5.getName();	 Catch:{ Exception -> 0x009e }
        r7 = -1;	 Catch:{ Exception -> 0x009e }
        r8 = r6.hashCode();	 Catch:{ Exception -> 0x009e }
        r9 = -1383228885; // 0xffffffffad8d9a2b float:-1.6098308E-11 double:NaN;	 Catch:{ Exception -> 0x009e }
        if (r8 == r9) goto L_0x0070;	 Catch:{ Exception -> 0x009e }
    L_0x0042:
        r9 = 115029; // 0x1c155 float:1.6119E-40 double:5.6832E-319;	 Catch:{ Exception -> 0x009e }
        if (r8 == r9) goto L_0x0066;	 Catch:{ Exception -> 0x009e }
    L_0x0047:
        r9 = 3317767; // 0x32a007 float:4.649182E-39 double:1.6391947E-317;	 Catch:{ Exception -> 0x009e }
        if (r8 == r9) goto L_0x005c;	 Catch:{ Exception -> 0x009e }
    L_0x004c:
        r9 = 108511772; // 0x677c21c float:4.6598146E-35 double:5.36119387E-316;	 Catch:{ Exception -> 0x009e }
        if (r8 == r9) goto L_0x0052;	 Catch:{ Exception -> 0x009e }
    L_0x0051:
        goto L_0x007a;	 Catch:{ Exception -> 0x009e }
    L_0x0052:
        r8 = "right";	 Catch:{ Exception -> 0x009e }
        r6 = r6.equals(r8);	 Catch:{ Exception -> 0x009e }
        if (r6 == 0) goto L_0x007a;	 Catch:{ Exception -> 0x009e }
    L_0x005a:
        r6 = 2;	 Catch:{ Exception -> 0x009e }
        goto L_0x007b;	 Catch:{ Exception -> 0x009e }
    L_0x005c:
        r8 = "left";	 Catch:{ Exception -> 0x009e }
        r6 = r6.equals(r8);	 Catch:{ Exception -> 0x009e }
        if (r6 == 0) goto L_0x007a;	 Catch:{ Exception -> 0x009e }
    L_0x0064:
        r6 = r2;	 Catch:{ Exception -> 0x009e }
        goto L_0x007b;	 Catch:{ Exception -> 0x009e }
    L_0x0066:
        r8 = "top";	 Catch:{ Exception -> 0x009e }
        r6 = r6.equals(r8);	 Catch:{ Exception -> 0x009e }
        if (r6 == 0) goto L_0x007a;	 Catch:{ Exception -> 0x009e }
    L_0x006e:
        r6 = 1;	 Catch:{ Exception -> 0x009e }
        goto L_0x007b;	 Catch:{ Exception -> 0x009e }
    L_0x0070:
        r8 = "bottom";	 Catch:{ Exception -> 0x009e }
        r6 = r6.equals(r8);	 Catch:{ Exception -> 0x009e }
        if (r6 == 0) goto L_0x007a;	 Catch:{ Exception -> 0x009e }
    L_0x0078:
        r6 = 3;	 Catch:{ Exception -> 0x009e }
        goto L_0x007b;	 Catch:{ Exception -> 0x009e }
    L_0x007a:
        r6 = r7;	 Catch:{ Exception -> 0x009e }
    L_0x007b:
        switch(r6) {
            case 0: goto L_0x0094;
            case 1: goto L_0x008d;
            case 2: goto L_0x0086;
            case 3: goto L_0x007f;
            default: goto L_0x007e;
        };	 Catch:{ Exception -> 0x009e }
    L_0x007e:
        goto L_0x009a;	 Catch:{ Exception -> 0x009e }
    L_0x007f:
        r5 = r5.getInt(r10);	 Catch:{ Exception -> 0x009e }
        r0.bottom = r5;	 Catch:{ Exception -> 0x009e }
        goto L_0x009a;	 Catch:{ Exception -> 0x009e }
    L_0x0086:
        r5 = r5.getInt(r10);	 Catch:{ Exception -> 0x009e }
        r0.right = r5;	 Catch:{ Exception -> 0x009e }
        goto L_0x009a;	 Catch:{ Exception -> 0x009e }
    L_0x008d:
        r5 = r5.getInt(r10);	 Catch:{ Exception -> 0x009e }
        r0.top = r5;	 Catch:{ Exception -> 0x009e }
        goto L_0x009a;	 Catch:{ Exception -> 0x009e }
    L_0x0094:
        r5 = r5.getInt(r10);	 Catch:{ Exception -> 0x009e }
        r0.left = r5;	 Catch:{ Exception -> 0x009e }
    L_0x009a:
        r4 = r4 + 1;
        goto L_0x0030;
    L_0x009d:
        return r0;
    L_0x009e:
        r10 = "DrawableUtils";
        r0 = "Couldn't obtain the optical insets. Ignoring.";
        android.util.Log.e(r10, r0);
    L_0x00a5:
        r10 = INSETS_NONE;
        return r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    static void fixDrawable(Drawable drawable) {
        if (VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        while (true) {
            if (VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
                return false;
            }
            if (VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
                return false;
            }
            if (VERSION.SDK_INT >= 17 || !(drawable instanceof LayerDrawable)) {
                if (!(drawable instanceof DrawableContainer)) {
                    if (!(drawable instanceof WrappedDrawable)) {
                        if (!(drawable instanceof DrawableWrapper)) {
                            if (!(drawable instanceof ScaleDrawable)) {
                                break;
                            }
                            drawable = ((ScaleDrawable) drawable).getDrawable();
                        } else {
                            drawable = ((DrawableWrapper) drawable).getWrappedDrawable();
                        }
                    } else {
                        drawable = ((WrappedDrawable) drawable).getWrappedDrawable();
                    }
                } else {
                    break;
                }
            }
            return false;
        }
        drawable = drawable.getConstantState();
        if (drawable instanceof DrawableContainerState) {
            for (Drawable canSafelyMutateDrawable : ((DrawableContainerState) drawable).getChildren()) {
                if (!canSafelyMutateDrawable(canSafelyMutateDrawable)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state != null) {
            if (state.length != 0) {
                drawable.setState(ThemeUtils.EMPTY_STATE_SET);
                drawable.setState(state);
            }
        }
        drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        drawable.setState(state);
    }

    public static Mode parseTintMode(int i, Mode mode) {
        if (i == 3) {
            return Mode.SRC_OVER;
        }
        if (i == 5) {
            return Mode.SRC_IN;
        }
        if (i == 9) {
            return Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return Mode.MULTIPLY;
            case 15:
                return Mode.SCREEN;
            case 16:
                return Mode.ADD;
            default:
                return mode;
        }
    }
}
