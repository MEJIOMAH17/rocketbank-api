package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.widget.ImageView;

public final class BitmapImageViewTarget extends ImageViewTarget<Bitmap> {
    protected final /* bridge */ /* synthetic */ void setResource(Object obj) {
        ((ImageView) this.view).setImageBitmap((Bitmap) obj);
    }

    public BitmapImageViewTarget(ImageView imageView) {
        super(imageView);
    }
}
