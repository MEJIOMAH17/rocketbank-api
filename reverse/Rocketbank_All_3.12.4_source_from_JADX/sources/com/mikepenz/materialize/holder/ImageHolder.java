package com.mikepenz.materialize.holder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.widget.ImageView;
import com.mikepenz.materialize.drawable.PressedEffectStateListDrawable;

public class ImageHolder {
    private Bitmap mBitmap;
    private Drawable mIcon;
    private int mIconRes;

    public ImageHolder(Drawable drawable) {
        this.mIconRes = -1;
        this.mIcon = drawable;
    }

    public ImageHolder() {
        this.mIconRes = -1;
        this.mBitmap = null;
    }

    public ImageHolder(int i) {
        this.mIconRes = -1;
        this.mIconRes = i;
    }

    public final Drawable getIcon() {
        return this.mIcon;
    }

    public final int getIconRes() {
        return this.mIconRes;
    }

    public static void applyMultiIconTo(Drawable drawable, int i, Drawable drawable2, int i2, boolean z, ImageView imageView) {
        if (drawable != null) {
            if (drawable2 != null) {
                i = new StateListDrawable();
                i.addState(new int[]{true}, drawable2);
                i.addState(new int[0], drawable);
                imageView.setImageDrawable(i);
            } else if (z) {
                imageView.setImageDrawable(new PressedEffectStateListDrawable(drawable, i, i2));
            } else {
                imageView.setImageDrawable(drawable);
            }
            imageView.setVisibility(0);
            return;
        }
        imageView.setVisibility(8);
    }
}
