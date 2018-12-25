package com.bumptech.glide.request.target;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;

public final class SquaringDrawable extends GlideDrawable {
    private boolean mutated;
    private State state;
    private GlideDrawable wrapped;

    static class State extends ConstantState {
        private final int side;
        private final ConstantState wrapped;

        public final int getChangingConfigurations() {
            return 0;
        }

        State(State state) {
            this(state.wrapped, state.side);
        }

        State(ConstantState constantState, int i) {
            this.wrapped = constantState;
            this.side = i;
        }

        public final Drawable newDrawable() {
            return newDrawable(null);
        }

        public final Drawable newDrawable(Resources resources) {
            return new SquaringDrawable(this, null, resources);
        }
    }

    public SquaringDrawable(GlideDrawable glideDrawable, int i) {
        this(new State(glideDrawable.getConstantState(), i), glideDrawable, 0);
    }

    SquaringDrawable(State state, GlideDrawable glideDrawable, Resources resources) {
        this.state = state;
        if (glideDrawable != null) {
            this.wrapped = glideDrawable;
        } else if (resources != null) {
            this.wrapped = (GlideDrawable) state.wrapped.newDrawable(resources);
        } else {
            this.wrapped = (GlideDrawable) state.wrapped.newDrawable();
        }
    }

    public final void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.wrapped.setBounds(i, i2, i3, i4);
    }

    public final void setBounds(Rect rect) {
        super.setBounds(rect);
        this.wrapped.setBounds(rect);
    }

    public final void setChangingConfigurations(int i) {
        this.wrapped.setChangingConfigurations(i);
    }

    public final int getChangingConfigurations() {
        return this.wrapped.getChangingConfigurations();
    }

    public final void setDither(boolean z) {
        this.wrapped.setDither(z);
    }

    public final void setFilterBitmap(boolean z) {
        this.wrapped.setFilterBitmap(z);
    }

    @TargetApi(11)
    public final Callback getCallback() {
        return this.wrapped.getCallback();
    }

    @TargetApi(19)
    public final int getAlpha() {
        return this.wrapped.getAlpha();
    }

    public final void setColorFilter(int i, Mode mode) {
        this.wrapped.setColorFilter(i, mode);
    }

    public final void clearColorFilter() {
        this.wrapped.clearColorFilter();
    }

    public final Drawable getCurrent() {
        return this.wrapped.getCurrent();
    }

    public final boolean setVisible(boolean z, boolean z2) {
        return this.wrapped.setVisible(z, z2);
    }

    public final int getIntrinsicWidth() {
        return this.state.side;
    }

    public final int getIntrinsicHeight() {
        return this.state.side;
    }

    public final int getMinimumWidth() {
        return this.wrapped.getMinimumWidth();
    }

    public final int getMinimumHeight() {
        return this.wrapped.getMinimumHeight();
    }

    public final boolean getPadding(Rect rect) {
        return this.wrapped.getPadding(rect);
    }

    public final void invalidateSelf() {
        super.invalidateSelf();
        this.wrapped.invalidateSelf();
    }

    public final void unscheduleSelf(Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.wrapped.unscheduleSelf(runnable);
    }

    public final void scheduleSelf(Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.wrapped.scheduleSelf(runnable, j);
    }

    public final void draw(Canvas canvas) {
        this.wrapped.draw(canvas);
    }

    public final void setAlpha(int i) {
        this.wrapped.setAlpha(i);
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.wrapped.setColorFilter(colorFilter);
    }

    public final int getOpacity() {
        return this.wrapped.getOpacity();
    }

    public final boolean isAnimated() {
        return this.wrapped.isAnimated();
    }

    public final void setLoopCount(int i) {
        this.wrapped.setLoopCount(i);
    }

    public final void start() {
        this.wrapped.start();
    }

    public final void stop() {
        this.wrapped.stop();
    }

    public final boolean isRunning() {
        return this.wrapped.isRunning();
    }

    public final Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.wrapped = (GlideDrawable) this.wrapped.mutate();
            this.state = new State(this.state);
            this.mutated = true;
        }
        return this;
    }

    public final ConstantState getConstantState() {
        return this.state;
    }
}
