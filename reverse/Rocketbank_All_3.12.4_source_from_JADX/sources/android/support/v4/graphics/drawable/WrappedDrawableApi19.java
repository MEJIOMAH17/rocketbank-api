package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.WrappedDrawableApi14.DrawableWrapperState;

class WrappedDrawableApi19 extends WrappedDrawableApi14 {

    static class DrawableWrapperStateKitKat extends DrawableWrapperState {
        DrawableWrapperStateKitKat(DrawableWrapperState drawableWrapperState) {
            super(drawableWrapperState);
        }

        public final Drawable newDrawable(Resources resources) {
            return new WrappedDrawableApi19(this, resources);
        }
    }

    WrappedDrawableApi19(Drawable drawable) {
        super(drawable);
    }

    WrappedDrawableApi19(DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
    }

    public void setAutoMirrored(boolean z) {
        this.mDrawable.setAutoMirrored(z);
    }

    public boolean isAutoMirrored() {
        return this.mDrawable.isAutoMirrored();
    }

    DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateKitKat(this.mState);
    }
}
