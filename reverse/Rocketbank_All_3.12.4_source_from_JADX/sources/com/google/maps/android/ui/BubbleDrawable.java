package com.google.maps.android.ui;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import ru.rocketbank.r2d2.C0859R;

final class BubbleDrawable extends Drawable {
    private int mColor = -1;
    private final Drawable mMask;
    private final Drawable mShadow;

    public final int getOpacity() {
        return -3;
    }

    public BubbleDrawable(Resources resources) {
        this.mMask = resources.getDrawable(C0859R.drawable.amu_bubble_mask);
        this.mShadow = resources.getDrawable(C0859R.drawable.amu_bubble_shadow);
    }

    public final void setColor$13462e() {
        this.mColor = -1;
    }

    public final void draw(Canvas canvas) {
        this.mMask.draw(canvas);
        canvas.drawColor(this.mColor, Mode.SRC_IN);
        this.mShadow.draw(canvas);
    }

    public final void setAlpha(int i) {
        throw new UnsupportedOperationException();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        throw new UnsupportedOperationException();
    }

    public final void setBounds(int i, int i2, int i3, int i4) {
        this.mMask.setBounds(i, i2, i3, i4);
        this.mShadow.setBounds(i, i2, i3, i4);
    }

    public final void setBounds(Rect rect) {
        this.mMask.setBounds(rect);
        this.mShadow.setBounds(rect);
    }

    public final boolean getPadding(Rect rect) {
        return this.mMask.getPadding(rect);
    }
}
