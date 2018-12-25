package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.Log;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.OutputStream;

public final class BitmapEncoder implements AnimatorUpdateListener<Bitmap> {
    private CompressFormat compressFormat;
    private int quality;

    public final String getId() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }

    public final /* bridge */ /* synthetic */ boolean encode(Object obj, OutputStream outputStream) {
        CompressFormat compressFormat;
        Bitmap bitmap = (Bitmap) ((Resource) obj).get();
        long logTime = LogTime.getLogTime();
        if (bitmap.hasAlpha()) {
            compressFormat = CompressFormat.PNG;
        } else {
            compressFormat = CompressFormat.JPEG;
        }
        bitmap.compress(compressFormat, this.quality, outputStream);
        if (Log.isLoggable("BitmapEncoder", 2) != null) {
            StringBuilder stringBuilder = new StringBuilder("Compressed with type: ");
            stringBuilder.append(compressFormat);
            stringBuilder.append(" of size ");
            stringBuilder.append(Util.getBitmapByteSize(bitmap));
            stringBuilder.append(" in ");
            stringBuilder.append(LogTime.getElapsedMillis(logTime));
            Log.v("BitmapEncoder", stringBuilder.toString());
        }
        return true;
    }

    public BitmapEncoder() {
        this((byte) 0);
    }

    private BitmapEncoder(byte b) {
        this.compressFormat = (byte) 0;
        this.quality = (byte) 90;
    }
}
