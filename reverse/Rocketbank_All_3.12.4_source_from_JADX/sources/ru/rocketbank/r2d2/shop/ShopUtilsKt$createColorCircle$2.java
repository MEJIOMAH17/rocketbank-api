package ru.rocketbank.r2d2.shop;

import android.graphics.Bitmap;
import android.widget.ImageView;
import rx.functions.Action1;

/* compiled from: ShopUtils.kt */
final class ShopUtilsKt$createColorCircle$2<T> implements Action1<Bitmap> {
    final /* synthetic */ ImageView $imageView;

    ShopUtilsKt$createColorCircle$2(ImageView imageView) {
        this.$imageView = imageView;
    }

    public final void call(Bitmap bitmap) {
        this.$imageView.setImageBitmap(bitmap);
    }
}
