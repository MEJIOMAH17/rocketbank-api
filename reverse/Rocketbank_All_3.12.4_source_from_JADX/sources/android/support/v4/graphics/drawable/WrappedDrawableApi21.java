package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.v4.graphics.drawable.WrappedDrawableApi14.DrawableWrapperState;
import android.util.Log;
import java.lang.reflect.Method;

final class WrappedDrawableApi21 extends WrappedDrawableApi19 {
    private static Method sIsProjectedDrawableMethod;

    static class DrawableWrapperStateLollipop extends DrawableWrapperState {
        DrawableWrapperStateLollipop(DrawableWrapperState drawableWrapperState) {
            super(drawableWrapperState);
        }

        public final Drawable newDrawable(Resources resources) {
            return new WrappedDrawableApi21(this, resources);
        }
    }

    WrappedDrawableApi21(Drawable drawable) {
        super(drawable);
        if (sIsProjectedDrawableMethod == null) {
            try {
                sIsProjectedDrawableMethod = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Drawable drawable2) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", drawable2);
            }
        }
    }

    WrappedDrawableApi21(DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
        if (sIsProjectedDrawableMethod == null) {
            try {
                sIsProjectedDrawableMethod = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (DrawableWrapperState drawableWrapperState2) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", drawableWrapperState2);
            }
        }
    }

    public final void setHotspot(float f, float f2) {
        this.mDrawable.setHotspot(f, f2);
    }

    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.mDrawable.setHotspotBounds(i, i2, i3, i4);
    }

    public final void getOutline(Outline outline) {
        this.mDrawable.getOutline(outline);
    }

    public final Rect getDirtyBounds() {
        return this.mDrawable.getDirtyBounds();
    }

    public final void setTintList(ColorStateList colorStateList) {
        if (isCompatTintEnabled()) {
            super.setTintList(colorStateList);
        } else {
            this.mDrawable.setTintList(colorStateList);
        }
    }

    public final void setTint(int i) {
        if (isCompatTintEnabled()) {
            super.setTint(i);
        } else {
            this.mDrawable.setTint(i);
        }
    }

    public final void setTintMode(Mode mode) {
        if (isCompatTintEnabled()) {
            super.setTintMode(mode);
        } else {
            this.mDrawable.setTintMode(mode);
        }
    }

    public final boolean setState(int[] iArr) {
        if (super.setState(iArr) == null) {
            return null;
        }
        invalidateSelf();
        return 1;
    }

    protected final boolean isCompatTintEnabled() {
        if (VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.mDrawable;
        if (!((drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable))) {
            if (!(drawable instanceof RippleDrawable)) {
                return false;
            }
        }
        return true;
    }

    final DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateLollipop(this.mState);
    }
}
