package ru.rocketbank.r2d2.fragments.profile;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.Utils;
import rx.functions.Func1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$observableFromCamera$1<T, R> implements Func1<T, R> {
    public static final ProfileFragment$observableFromCamera$1 INSTANCE = new ProfileFragment$observableFromCamera$1();

    ProfileFragment$observableFromCamera$1() {
    }

    public final Bitmap call(String str) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str);
        Matrix matrix = new Matrix();
        matrix.setRotate((float) Utils.getImageOrientation(str));
        Intrinsics.checkExpressionValueIsNotNull(decodeFile, "bitmap");
        return Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true);
    }
}
