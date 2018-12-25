package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Build.VERSION;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class CenterCrop extends BitmapTransformation {
    public final String getId() {
        return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
    }

    public CenterCrop(BitmapPool bitmapPool) {
        super(bitmapPool);
    }

    protected final Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        Bitmap bitmap2 = bitmapPool.get(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888);
        if (bitmap == null) {
            bitmap = null;
        } else if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            float height;
            float width;
            Matrix matrix = new Matrix();
            int width2 = bitmap.getWidth() * i2;
            int height2 = bitmap.getHeight() * i;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (width2 > height2) {
                height = ((float) i2) / ((float) bitmap.getHeight());
                width = (((float) i) - (((float) bitmap.getWidth()) * height)) * 0.5f;
            } else {
                height = ((float) i) / ((float) bitmap.getWidth());
                f = (((float) i2) - (((float) bitmap.getHeight()) * height)) * 0.5f;
                width = BitmapDescriptorFactory.HUE_RED;
            }
            matrix.setScale(height, height);
            matrix.postTranslate((float) ((int) (width + 0.5f)), (float) ((int) (f + 0.5f)));
            if (bitmap2 != null) {
                i = bitmap2;
            } else {
                i = Bitmap.createBitmap(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888);
            }
            if (VERSION.SDK_INT >= 12 && i != 0) {
                i.setHasAlpha(bitmap.hasAlpha());
            }
            new Canvas(i).drawBitmap(bitmap, matrix, new Paint(6));
            bitmap = i;
        }
        if (!(bitmap2 == null || bitmap2 == bitmap || bitmapPool.put(bitmap2) != null)) {
            bitmap2.recycle();
        }
        return bitmap;
    }
}
