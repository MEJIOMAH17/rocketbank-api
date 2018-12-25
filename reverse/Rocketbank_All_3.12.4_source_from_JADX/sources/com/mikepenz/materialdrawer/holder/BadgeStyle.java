package com.mikepenz.materialdrawer.holder;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.appcompat.C0219R.id;
import android.widget.TextView;
import com.mikepenz.materialdrawer.model.utils.BadgeDrawableBuilder;
import ru.rocketbank.r2d2.C0859R;

public final class BadgeStyle {
    private Drawable mBadgeBackground;
    private int mGradientDrawable = C0859R.drawable.material_drawer_badge;
    private DimenHolder mMinWidth;
    private DimenHolder mPaddingLeftRight;
    private DimenHolder mPaddingTopBottom;
    private ColorHolder mTextColor;

    public final int getGradientDrawable() {
        return this.mGradientDrawable;
    }

    public final BadgeStyle withBadgeBackground(Drawable drawable) {
        this.mBadgeBackground = drawable;
        this.mGradientDrawable = -1;
        return this;
    }

    public BadgeStyle() {
        DimenHolder dimenHolder = new DimenHolder();
        dimenHolder.setDp(2);
        this.mPaddingTopBottom = dimenHolder;
        dimenHolder = new DimenHolder();
        dimenHolder.setDp(3);
        this.mPaddingLeftRight = dimenHolder;
        dimenHolder = new DimenHolder();
        dimenHolder.setDp(20);
        this.mMinWidth = dimenHolder;
    }

    public final void style(TextView textView, ColorStateList colorStateList) {
        Context context = textView.getContext();
        Drawable build;
        if (this.mBadgeBackground == null) {
            build = new BadgeDrawableBuilder(this).build(context);
            if (VERSION.SDK_INT < 16) {
                textView.setBackgroundDrawable(build);
            } else {
                textView.setBackground(build);
            }
        } else {
            build = this.mBadgeBackground;
            if (VERSION.SDK_INT < 16) {
                textView.setBackgroundDrawable(build);
            } else {
                textView.setBackground(build);
            }
        }
        if (this.mTextColor != null) {
            id.applyToOr$d8581ce(this.mTextColor, textView, null);
        } else if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        colorStateList = this.mPaddingLeftRight.asPixel(context);
        int asPixel = this.mPaddingTopBottom.asPixel(context);
        textView.setPadding(colorStateList, asPixel, colorStateList, asPixel);
        textView.setMinWidth(this.mMinWidth.asPixel(context));
    }

    public final BadgeStyle withTextColor$6a1c8365() {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(-1);
        this.mTextColor = colorHolder;
        return this;
    }
}
