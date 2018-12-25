package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class FitCenter extends BitmapTransformation {
    public final String getId() {
        return "FitCenter.com.bumptech.glide.load.resource.bitmap";
    }

    public FitCenter(BitmapPool bitmapPool) {
        super(bitmapPool);
    }

    protected final Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable("TransformationUtils", 2) != null) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(((float) i) / ((float) bitmap.getWidth()), ((float) i2) / ((float) bitmap.getHeight()));
        int width = (int) (((float) bitmap.getWidth()) * min);
        int height = (int) (((float) bitmap.getHeight()) * min);
        if (bitmap.getWidth() == width && bitmap.getHeight() == height) {
            if (Log.isLoggable("TransformationUtils", 2) != null) {
                Log.v("TransformationUtils", "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Config config = bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888;
        bitmapPool = bitmapPool.get(width, height, config);
        if (bitmapPool == null) {
            bitmapPool = Bitmap.createBitmap(width, height, config);
        }
        if (VERSION.SDK_INT >= 12 && bitmapPool != null) {
            bitmapPool.setHasAlpha(bitmap.hasAlpha());
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            StringBuilder stringBuilder = new StringBuilder("request: ");
            stringBuilder.append(i);
            stringBuilder.append("x");
            stringBuilder.append(i2);
            Log.v("TransformationUtils", stringBuilder.toString());
            i2 = new StringBuilder("toFit:   ");
            i2.append(bitmap.getWidth());
            i2.append("x");
            i2.append(bitmap.getHeight());
            Log.v("TransformationUtils", i2.toString());
            i2 = new StringBuilder("toReuse: ");
            i2.append(bitmapPool.getWidth());
            i2.append("x");
            i2.append(bitmapPool.getHeight());
            Log.v("TransformationUtils", i2.toString());
            Log.v("TransformationUtils", "minPct:   ".concat(String.valueOf(min)));
        }
        i = new Canvas(bitmapPool);
        i2 = new Matrix();
        i2.setScale(min, min);
        i.drawBitmap(bitmap, i2, new Paint(6));
        return bitmapPool;
    }
}
