package android.support.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

final class ViewUtils {
    static final Property<View, Rect> CLIP_BOUNDS = new Property<View, Rect>(Rect.class, "clipBounds") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return ViewCompat.getClipBounds((View) obj);
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            ViewCompat.setClipBounds((View) obj, (Rect) obj2);
        }
    };
    private static final ViewUtilsImpl IMPL;
    static final Property<View, Float> TRANSITION_ALPHA = new Property<View, Float>(Float.class, "translationAlpha") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(ViewUtils.getTransitionAlpha((View) obj));
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            ViewUtils.setTransitionAlpha((View) obj, ((Float) obj2).floatValue());
        }
    };
    private static Field sViewFlagsField;
    private static boolean sViewFlagsFieldFetched;

    static {
        if (VERSION.SDK_INT >= 22) {
            IMPL = new ViewUtilsApi22();
        } else if (VERSION.SDK_INT >= 21) {
            IMPL = new ViewUtilsApi21();
        } else if (VERSION.SDK_INT >= 19) {
            IMPL = new ViewUtilsApi19();
        } else if (VERSION.SDK_INT >= 18) {
            IMPL = new ViewUtilsApi18();
        } else {
            IMPL = new ViewUtilsApi14();
        }
    }

    static WindowIdImpl getWindowId(View view) {
        return IMPL.getWindowId(view);
    }

    static void setTransitionAlpha(View view, float f) {
        IMPL.setTransitionAlpha(view, f);
    }

    static float getTransitionAlpha(View view) {
        return IMPL.getTransitionAlpha(view);
    }

    static void saveNonTransitionAlpha(View view) {
        IMPL.saveNonTransitionAlpha(view);
    }

    static void clearNonTransitionAlpha(View view) {
        IMPL.clearNonTransitionAlpha(view);
    }

    static void transformMatrixToGlobal(View view, Matrix matrix) {
        IMPL.transformMatrixToGlobal(view, matrix);
    }

    static void transformMatrixToLocal(View view, Matrix matrix) {
        IMPL.transformMatrixToLocal(view, matrix);
    }

    static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        IMPL.setLeftTopRightBottom(view, i, i2, i3, i4);
    }

    static void setTransitionVisibility(android.view.View r3, int r4) {
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
        r0 = sViewFlagsFieldFetched;
        if (r0 != 0) goto L_0x001c;
    L_0x0004:
        r0 = 1;
        r1 = android.view.View.class;	 Catch:{ NoSuchFieldException -> 0x0013 }
        r2 = "mViewFlags";	 Catch:{ NoSuchFieldException -> 0x0013 }
        r1 = r1.getDeclaredField(r2);	 Catch:{ NoSuchFieldException -> 0x0013 }
        sViewFlagsField = r1;	 Catch:{ NoSuchFieldException -> 0x0013 }
        r1.setAccessible(r0);	 Catch:{ NoSuchFieldException -> 0x0013 }
        goto L_0x001a;
    L_0x0013:
        r1 = "ViewUtils";
        r2 = "fetchViewFlagsField: ";
        android.util.Log.i(r1, r2);
    L_0x001a:
        sViewFlagsFieldFetched = r0;
    L_0x001c:
        r0 = sViewFlagsField;
        if (r0 == 0) goto L_0x002f;
    L_0x0020:
        r0 = sViewFlagsField;	 Catch:{ IllegalAccessException -> 0x002f }
        r0 = r0.getInt(r3);	 Catch:{ IllegalAccessException -> 0x002f }
        r1 = sViewFlagsField;	 Catch:{ IllegalAccessException -> 0x002f }
        r0 = r0 & -13;	 Catch:{ IllegalAccessException -> 0x002f }
        r4 = r4 | r0;	 Catch:{ IllegalAccessException -> 0x002f }
        r1.setInt(r3, r4);	 Catch:{ IllegalAccessException -> 0x002f }
        return;
    L_0x002f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewUtils.setTransitionVisibility(android.view.View, int):void");
    }
}
