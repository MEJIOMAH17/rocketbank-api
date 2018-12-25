package ru.rocketbank.core.utils.rx;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.view.View;
import rx.functions.Func1;

/* compiled from: ViewDraw.kt */
final class ViewDraw$DrawViewTransformation$call$1<T, R> implements Func1<T, R> {
    public static final ViewDraw$DrawViewTransformation$call$1 INSTANCE = new ViewDraw$DrawViewTransformation$call$1();

    ViewDraw$DrawViewTransformation$call$1() {
    }

    public final Bitmap call(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap.copy(Config.ARGB_8888, false);
    }
}
