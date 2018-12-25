package ru.rocketbank.r2d2.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import java.io.InputStream;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.r2d2.RocketApplication;
import rx.functions.Func1;

/* compiled from: ImageUpload.kt */
final class ImageUpload$observableFromGallery$1<T, R> implements Func1<T, R> {
    public static final ImageUpload$observableFromGallery$1 INSTANCE = new ImageUpload$observableFromGallery$1();

    ImageUpload$observableFromGallery$1() {
    }

    public final Bitmap call(Uri uri) {
        Throwable th;
        try {
            InputStream openInputStream = RocketApplication.Companion.getContext().getContentResolver().openInputStream(uri);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(openInputStream, null, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            float f;
            if (options.outWidth > options.outHeight) {
                if (i > 1048) {
                    float f2 = (float) i;
                    f = 1048.0f / f2;
                    i2 = (int) (((float) i2) * f);
                    i = (int) (f2 * f);
                }
            } else if (i2 > 1048) {
                float f3 = (float) i2;
                f = 1048.0f / f3;
                i2 = (int) (f3 * f);
                i = (int) (((float) i) * f);
            }
            if (openInputStream == null) {
                throw ((Throwable) new IllegalStateException("Input is null"));
            }
            try {
                openInputStream.close();
                try {
                    uri = RocketApplication.Companion.getContext().getContentResolver().openInputStream(uri);
                    options.inSampleSize = ImageUpload.INSTANCE.calculateInSampleSize(options, i, i2);
                    options.inPreferredConfig = Config.RGB_565;
                    options.inJustDecodeBounds = false;
                    return BitmapFactory.decodeStream(uri, null, options);
                } catch (Uri uri2) {
                    th = (Throwable) uri2;
                    AnalyticsManager.logException(th);
                    throw new IllegalStateException(th);
                }
            } catch (Uri uri22) {
                th = (Throwable) uri22;
                AnalyticsManager.logException(th);
                throw new IllegalStateException(th);
            }
        } catch (Uri uri222) {
            throw new IllegalStateException((Throwable) uri222);
        }
    }
}
