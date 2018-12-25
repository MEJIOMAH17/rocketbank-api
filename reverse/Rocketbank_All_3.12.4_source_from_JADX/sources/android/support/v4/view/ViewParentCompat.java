package android.support.v4.view;

import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

public final class ViewParentCompat {
    static final ViewParentCompatBaseImpl IMPL;
    private static final String TAG = "ViewParentCompat";

    static class ViewParentCompatBaseImpl {
        public void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i) {
        }

        ViewParentCompatBaseImpl() {
        }

        public boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
            return viewParent instanceof NestedScrollingParent ? ((NestedScrollingParent) viewParent).onStartNestedScroll(view, view2, i) : null;
        }

        public void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }

        public void onStopNestedScroll(ViewParent viewParent, View view) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onStopNestedScroll(view);
            }
        }

        public void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        public void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        public boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return viewParent instanceof NestedScrollingParent ? ((NestedScrollingParent) viewParent).onNestedFling(view, f, f2, z) : null;
        }

        public boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
            return viewParent instanceof NestedScrollingParent ? ((NestedScrollingParent) viewParent).onNestedPreFling(view, f, f2) : null;
        }
    }

    static class ViewParentCompatApi19Impl extends ViewParentCompatBaseImpl {
        ViewParentCompatApi19Impl() {
        }

        public void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }
    }

    static class ViewParentCompatApi21Impl extends ViewParentCompatApi19Impl {
        ViewParentCompatApi21Impl() {
        }

        public boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
            try {
                return viewParent.onStartNestedScroll(view, view2, i);
            } catch (View view3) {
                view2 = ViewParentCompat.TAG;
                i = new StringBuilder("ViewParent ");
                i.append(viewParent);
                i.append(" does not implement interface method onStartNestedScroll");
                Log.e(view2, i.toString(), view3);
                return null;
            }
        }

        public void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (View view3) {
                view2 = ViewParentCompat.TAG;
                i = new StringBuilder("ViewParent ");
                i.append(viewParent);
                i.append(" does not implement interface method onNestedScrollAccepted");
                Log.e(view2, i.toString(), view3);
            }
        }

        public void onStopNestedScroll(ViewParent viewParent, View view) {
            try {
                viewParent.onStopNestedScroll(view);
            } catch (View view2) {
                String str = ViewParentCompat.TAG;
                StringBuilder stringBuilder = new StringBuilder("ViewParent ");
                stringBuilder.append(viewParent);
                stringBuilder.append(" does not implement interface method onStopNestedScroll");
                Log.e(str, stringBuilder.toString(), view2);
            }
        }

        public void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (View view2) {
                i = ViewParentCompat.TAG;
                i2 = new StringBuilder("ViewParent ");
                i2.append(viewParent);
                i2.append(" does not implement interface method onNestedScroll");
                Log.e(i, i2.toString(), view2);
            }
        }

        public void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (View view2) {
                i = ViewParentCompat.TAG;
                i2 = new StringBuilder("ViewParent ");
                i2.append(viewParent);
                i2.append(" does not implement interface method onNestedPreScroll");
                Log.e(i, i2.toString(), view2);
            }
        }

        public boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (View view2) {
                f = ViewParentCompat.TAG;
                f2 = new StringBuilder("ViewParent ");
                f2.append(viewParent);
                f2.append(" does not implement interface method onNestedFling");
                Log.e(f, f2.toString(), view2);
                return null;
            }
        }

        public boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (View view2) {
                f = ViewParentCompat.TAG;
                f2 = new StringBuilder("ViewParent ");
                f2.append(viewParent);
                f2.append(" does not implement interface method onNestedPreFling");
                Log.e(f, f2.toString(), view2);
                return null;
            }
        }
    }

    static {
        if (VERSION.SDK_INT >= 21) {
            IMPL = new ViewParentCompatApi21Impl();
        } else if (VERSION.SDK_INT >= 19) {
            IMPL = new ViewParentCompatApi19Impl();
        } else {
            IMPL = new ViewParentCompatBaseImpl();
        }
    }

    private ViewParentCompat() {
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
        return onStartNestedScroll(viewParent, view, view2, i, 0);
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
        onNestedScrollAccepted(viewParent, view, view2, i, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        onNestedScroll(viewParent, view, i, i2, i3, i4, 0);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(viewParent, view, i, i2, iArr, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i, i2);
        }
        return i2 == 0 ? IMPL.onStartNestedScroll(viewParent, view, view2, i) : null;
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            IMPL.onNestedScrollAccepted(viewParent, view, view2, i);
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i);
            return;
        }
        if (i == 0) {
            IMPL.onStopNestedScroll(viewParent, view);
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            IMPL.onNestedScroll(viewParent, view, i, i2, i3, i4);
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            IMPL.onNestedPreScroll(viewParent, view, i, i2, iArr);
        }
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return IMPL.onNestedFling(viewParent, view, f, f2, z);
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
        return IMPL.onNestedPreFling(viewParent, view, f, f2);
    }

    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i) {
        IMPL.notifySubtreeAccessibilityStateChanged(viewParent, view, view2, i);
    }
}
