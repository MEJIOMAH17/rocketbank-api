package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public final class DrawableImageViewTarget extends ImageViewTarget<Drawable> {
    protected final /* bridge */ /* synthetic */ void setResource(Object obj) {
        ((ImageView) this.view).setImageDrawable((Drawable) obj);
    }

    public DrawableImageViewTarget(ImageView imageView) {
        super(imageView);
    }
}
