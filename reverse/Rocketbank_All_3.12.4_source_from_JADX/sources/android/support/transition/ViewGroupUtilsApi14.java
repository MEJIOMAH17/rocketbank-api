package android.support.transition;

import android.animation.LayoutTransition;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

class ViewGroupUtilsApi14 implements ViewGroupUtilsImpl {
    private static Method sCancelMethod;
    private static boolean sCancelMethodFetched;
    private static LayoutTransition sEmptyLayoutTransition;
    private static Field sLayoutSuppressedField;
    private static boolean sLayoutSuppressedFieldFetched;

    /* renamed from: android.support.transition.ViewGroupUtilsApi14$1 */
    class C00861 extends LayoutTransition {
        public final boolean isChangingLayout() {
            return true;
        }

        C00861() {
        }
    }

    ViewGroupUtilsApi14() {
    }

    public void suppressLayout(android.view.ViewGroup r7, boolean r8) {
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
        r0 = sEmptyLayoutTransition;
        r1 = 1;
        r2 = 0;
        r3 = 0;
        if (r0 != 0) goto L_0x0028;
    L_0x0007:
        r0 = new android.support.transition.ViewGroupUtilsApi14$1;
        r0.<init>();
        sEmptyLayoutTransition = r0;
        r4 = 2;
        r0.setAnimator(r4, r3);
        r0 = sEmptyLayoutTransition;
        r0.setAnimator(r2, r3);
        r0 = sEmptyLayoutTransition;
        r0.setAnimator(r1, r3);
        r0 = sEmptyLayoutTransition;
        r4 = 3;
        r0.setAnimator(r4, r3);
        r0 = sEmptyLayoutTransition;
        r4 = 4;
        r0.setAnimator(r4, r3);
    L_0x0028:
        r0 = 2131297258; // 0x7f0903ea float:1.8212456E38 double:1.0530007563E-314;
        if (r8 == 0) goto L_0x007e;
    L_0x002d:
        r8 = r7.getLayoutTransition();
        if (r8 == 0) goto L_0x0078;
    L_0x0033:
        r3 = r8.isRunning();
        if (r3 == 0) goto L_0x0071;
    L_0x0039:
        r3 = sCancelMethodFetched;
        if (r3 != 0) goto L_0x0056;
    L_0x003d:
        r3 = android.animation.LayoutTransition.class;	 Catch:{ NoSuchMethodException -> 0x004d }
        r4 = "cancel";	 Catch:{ NoSuchMethodException -> 0x004d }
        r5 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x004d }
        r3 = r3.getDeclaredMethod(r4, r5);	 Catch:{ NoSuchMethodException -> 0x004d }
        sCancelMethod = r3;	 Catch:{ NoSuchMethodException -> 0x004d }
        r3.setAccessible(r1);	 Catch:{ NoSuchMethodException -> 0x004d }
        goto L_0x0054;
    L_0x004d:
        r3 = "ViewGroupUtilsApi14";
        r4 = "Failed to access cancel method by reflection";
        android.util.Log.i(r3, r4);
    L_0x0054:
        sCancelMethodFetched = r1;
    L_0x0056:
        r1 = sCancelMethod;
        if (r1 == 0) goto L_0x0071;
    L_0x005a:
        r1 = sCancelMethod;	 Catch:{ IllegalAccessException -> 0x006a, InvocationTargetException -> 0x0062 }
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x006a, InvocationTargetException -> 0x0062 }
        r1.invoke(r8, r2);	 Catch:{ IllegalAccessException -> 0x006a, InvocationTargetException -> 0x0062 }
        goto L_0x0071;
    L_0x0062:
        r1 = "ViewGroupUtilsApi14";
        r2 = "Failed to invoke cancel method by reflection";
        android.util.Log.i(r1, r2);
        goto L_0x0071;
    L_0x006a:
        r1 = "ViewGroupUtilsApi14";
        r2 = "Failed to access cancel method by reflection";
        android.util.Log.i(r1, r2);
    L_0x0071:
        r1 = sEmptyLayoutTransition;
        if (r8 == r1) goto L_0x0078;
    L_0x0075:
        r7.setTag(r0, r8);
    L_0x0078:
        r8 = sEmptyLayoutTransition;
        r7.setLayoutTransition(r8);
        return;
    L_0x007e:
        r7.setLayoutTransition(r3);
        r8 = sLayoutSuppressedFieldFetched;
        if (r8 != 0) goto L_0x009c;
    L_0x0085:
        r8 = android.view.ViewGroup.class;	 Catch:{ NoSuchFieldException -> 0x0093 }
        r4 = "mLayoutSuppressed";	 Catch:{ NoSuchFieldException -> 0x0093 }
        r8 = r8.getDeclaredField(r4);	 Catch:{ NoSuchFieldException -> 0x0093 }
        sLayoutSuppressedField = r8;	 Catch:{ NoSuchFieldException -> 0x0093 }
        r8.setAccessible(r1);	 Catch:{ NoSuchFieldException -> 0x0093 }
        goto L_0x009a;
    L_0x0093:
        r8 = "ViewGroupUtilsApi14";
        r4 = "Failed to access mLayoutSuppressed field by reflection";
        android.util.Log.i(r8, r4);
    L_0x009a:
        sLayoutSuppressedFieldFetched = r1;
    L_0x009c:
        r8 = sLayoutSuppressedField;
        if (r8 == 0) goto L_0x00b9;
    L_0x00a0:
        r8 = sLayoutSuppressedField;	 Catch:{ IllegalAccessException -> 0x00b2 }
        r8 = r8.getBoolean(r7);	 Catch:{ IllegalAccessException -> 0x00b2 }
        if (r8 == 0) goto L_0x00b0;
    L_0x00a8:
        r1 = sLayoutSuppressedField;	 Catch:{ IllegalAccessException -> 0x00ae }
        r1.setBoolean(r7, r2);	 Catch:{ IllegalAccessException -> 0x00ae }
        goto L_0x00b0;
    L_0x00ae:
        r2 = r8;
        goto L_0x00b2;
    L_0x00b0:
        r2 = r8;
        goto L_0x00b9;
    L_0x00b2:
        r8 = "ViewGroupUtilsApi14";
        r1 = "Failed to get mLayoutSuppressed field by reflection";
        android.util.Log.i(r8, r1);
    L_0x00b9:
        if (r2 == 0) goto L_0x00be;
    L_0x00bb:
        r7.requestLayout();
    L_0x00be:
        r8 = r7.getTag(r0);
        r8 = (android.animation.LayoutTransition) r8;
        if (r8 == 0) goto L_0x00cc;
    L_0x00c6:
        r7.setTag(r0, r3);
        r7.setLayoutTransition(r8);
    L_0x00cc:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewGroupUtilsApi14.suppressLayout(android.view.ViewGroup, boolean):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.support.transition.ViewGroupOverlayImpl getOverlay(android.view.ViewGroup r6) {
        /*
        r5 = this;
        r0 = r6;
    L_0x0001:
        r1 = 0;
        if (r0 == 0) goto L_0x0023;
    L_0x0004:
        r2 = r0.getId();
        r3 = 16908290; // 0x1020002 float:2.3877235E-38 double:8.353805E-317;
        if (r2 != r3) goto L_0x0014;
    L_0x000d:
        r2 = r0 instanceof android.view.ViewGroup;
        if (r2 == 0) goto L_0x0014;
    L_0x0011:
        r0 = (android.view.ViewGroup) r0;
        goto L_0x0024;
    L_0x0014:
        r1 = r0.getParent();
        r1 = r1 instanceof android.view.ViewGroup;
        if (r1 == 0) goto L_0x0001;
    L_0x001c:
        r0 = r0.getParent();
        r0 = (android.view.ViewGroup) r0;
        goto L_0x0001;
    L_0x0023:
        r0 = r1;
    L_0x0024:
        if (r0 == 0) goto L_0x0046;
    L_0x0026:
        r1 = r0.getChildCount();
        r2 = 0;
    L_0x002b:
        if (r2 >= r1) goto L_0x003d;
    L_0x002d:
        r3 = r0.getChildAt(r2);
        r4 = r3 instanceof android.support.transition.ViewOverlayApi14.OverlayViewGroup;
        if (r4 == 0) goto L_0x003a;
    L_0x0035:
        r3 = (android.support.transition.ViewOverlayApi14.OverlayViewGroup) r3;
        r1 = r3.mViewOverlay;
        goto L_0x0046;
    L_0x003a:
        r2 = r2 + 1;
        goto L_0x002b;
    L_0x003d:
        r1 = new android.support.transition.ViewGroupOverlayApi14;
        r2 = r0.getContext();
        r1.<init>(r2, r0, r6);
    L_0x0046:
        r1 = (android.support.transition.ViewGroupOverlayApi14) r1;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewGroupUtilsApi14.getOverlay(android.view.ViewGroup):android.support.transition.ViewGroupOverlayImpl");
    }
}
