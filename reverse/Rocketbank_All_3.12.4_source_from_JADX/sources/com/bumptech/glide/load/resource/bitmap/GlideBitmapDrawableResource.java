package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.util.Util;

public final class GlideBitmapDrawableResource extends DrawableResource<GlideBitmapDrawable> {
    private final BitmapPool bitmapPool;

    public GlideBitmapDrawableResource(GlideBitmapDrawable glideBitmapDrawable, BitmapPool bitmapPool) {
        super(glideBitmapDrawable);
        this.bitmapPool = bitmapPool;
    }

    public final int getSize() {
        return Util.getBitmapByteSize(((GlideBitmapDrawable) this.drawable).getBitmap());
    }

    public final void recycle() {
        this.bitmapPool.put(((GlideBitmapDrawable) this.drawable).getBitmap());
    }
}
