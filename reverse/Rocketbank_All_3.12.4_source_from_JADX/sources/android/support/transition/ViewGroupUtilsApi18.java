package android.support.transition;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Method;

final class ViewGroupUtilsApi18 extends ViewGroupUtilsApi14 {
    private static Method sSuppressLayoutMethod;
    private static boolean sSuppressLayoutMethodFetched;

    ViewGroupUtilsApi18() {
    }

    public final ViewGroupOverlayImpl getOverlay(ViewGroup viewGroup) {
        return new TransitionUtils(viewGroup);
    }

    public final void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (!sSuppressLayoutMethodFetched) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", new Class[]{Boolean.TYPE});
                sSuppressLayoutMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Throwable e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            sSuppressLayoutMethodFetched = true;
        }
        if (sSuppressLayoutMethod != null) {
            try {
                sSuppressLayoutMethod.invoke(viewGroup, new Object[]{Boolean.valueOf(z)});
            } catch (ViewGroup viewGroup2) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", viewGroup2);
            } catch (ViewGroup viewGroup22) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", viewGroup22);
            }
        }
    }
}
