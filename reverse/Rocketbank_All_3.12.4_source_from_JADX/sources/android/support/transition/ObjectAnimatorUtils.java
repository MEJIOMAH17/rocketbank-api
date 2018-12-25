package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.support.transition.C0913R.id;
import android.util.Property;

final class ObjectAnimatorUtils {
    private static final ObjectAnimatorUtilsImpl IMPL;

    static {
        if (VERSION.SDK_INT >= 21) {
            IMPL = new id();
        } else {
            IMPL = new C0913R();
        }
    }

    static <T> ObjectAnimator ofPointF(T t, Property<T, PointF> property, Path path) {
        return IMPL.ofPointF(t, property, path);
    }
}
