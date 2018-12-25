package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* renamed from: android.support.transition.R */
public final class C0913R implements ObjectAnimatorUtilsImpl {

    /* renamed from: android.support.transition.R$id */
    public static final class id implements ObjectAnimatorUtilsImpl {
        id() {
        }

        public final <T> ObjectAnimator ofPointF(T t, Property<T, PointF> property, Path path) {
            return ObjectAnimator.ofObject(t, property, null, path);
        }
    }

    C0913R() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T> android.animation.ObjectAnimator ofPointF(T r2, android.util.Property<T, android.graphics.PointF> r3, android.graphics.Path r4) {
        /*
        r1 = this;
        r0 = new android.support.transition.PathProperty;
        r0.<init>(r3, r4);
        r3 = 2;
        r3 = new float[r3];
        r3 = {0, 1065353216};
        r2 = android.animation.ObjectAnimator.ofFloat(r2, r0, r3);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.R.ofPointF(java.lang.Object, android.util.Property, android.graphics.Path):android.animation.ObjectAnimator");
    }
}
