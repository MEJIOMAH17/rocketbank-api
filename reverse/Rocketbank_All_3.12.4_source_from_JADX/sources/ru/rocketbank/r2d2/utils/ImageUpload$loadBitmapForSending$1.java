package ru.rocketbank.r2d2.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import rx.functions.Func1;

/* compiled from: ImageUpload.kt */
final class ImageUpload$loadBitmapForSending$1<T, R> implements Func1<T, R> {
    final /* synthetic */ String $path;

    ImageUpload$loadBitmapForSending$1(String str) {
        this.$path = str;
    }

    public final Bitmap call(String str) {
        str = new Options();
        str.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.$path, str);
        int i = str.outWidth;
        int i2 = str.outHeight;
        float f;
        if (str.outWidth > str.outHeight) {
            if (i > 2048) {
                float f2 = (float) i;
                f = 2048.0f / f2;
                i2 = (int) (((float) i2) * f);
                i = (int) (f2 * f);
            }
        } else if (i2 > 2048) {
            float f3 = (float) i2;
            f = 2048.0f / f3;
            i2 = (int) (f3 * f);
            i = (int) (((float) i) * f);
        }
        str.inSampleSize = ImageUpload.INSTANCE.calculateInSampleSize(str, i, i2);
        str.inPreferredConfig = Config.RGB_565;
        str.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(this.$path, str);
    }
}
