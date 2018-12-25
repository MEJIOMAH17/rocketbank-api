package ru.rocketbank.r2d2.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.Utils;
import rx.functions.Func1;

/* compiled from: ImageUpload.kt */
final class ImageUpload$observableFromCamera$1<T, R> implements Func1<T, R> {
    final /* synthetic */ int $requiredWidth;

    ImageUpload$observableFromCamera$1(int i) {
        this.$requiredWidth = i;
    }

    public final Bitmap call(String str) {
        ImageUpload imageUpload = ImageUpload.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(str, "photoPath");
        Bitmap decodeSampledBitmapFromFile = imageUpload.decodeSampledBitmapFromFile(str, this.$requiredWidth, 0);
        Matrix matrix = new Matrix();
        matrix.setRotate((float) Utils.getImageOrientation(str));
        return Bitmap.createBitmap(decodeSampledBitmapFromFile, 0, 0, decodeSampledBitmapFromFile.getWidth(), decodeSampledBitmapFromFile.getHeight(), matrix, true);
    }
}
