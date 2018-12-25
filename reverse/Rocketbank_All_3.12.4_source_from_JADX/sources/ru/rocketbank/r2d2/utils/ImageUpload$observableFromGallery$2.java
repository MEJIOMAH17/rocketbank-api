package ru.rocketbank.r2d2.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.r2d2.Utils;
import rx.functions.Func1;

/* compiled from: ImageUpload.kt */
final class ImageUpload$observableFromGallery$2<T, R> implements Func1<T, R> {
    final /* synthetic */ Uri $uri;

    ImageUpload$observableFromGallery$2(Uri uri) {
        this.$uri = uri;
    }

    public final Bitmap call(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        try {
            matrix.setRotate((float) Utils.getImageOrientation(ImageUpload.INSTANCE.getRealPathFromURI(this.$uri)));
        } catch (IllegalArgumentException e) {
            AnalyticsManager.logException(e);
        }
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }
}
