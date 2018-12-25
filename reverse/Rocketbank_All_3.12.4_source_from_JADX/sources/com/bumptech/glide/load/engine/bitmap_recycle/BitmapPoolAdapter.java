package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public final class BitmapPoolAdapter implements BitmapPool {
    public final void clearMemory() {
    }

    public final Bitmap get(int i, int i2, Config config) {
        return null;
    }

    public final Bitmap getDirty(int i, int i2, Config config) {
        return null;
    }

    public final boolean put(Bitmap bitmap) {
        return false;
    }

    public final void trimMemory(int i) {
    }
}
