package ru.rocketbank.r2d2.shop;

import android.arch.lifecycle.MethodCallsLogger;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.coreui.C0888R.style;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: ShopUtils.kt */
final class ShopUtilsKt$createColorCircle$1<T> implements OnSubscribe<T> {
    final /* synthetic */ String $color;
    final /* synthetic */ ImageView $imageView;

    ShopUtilsKt$createColorCircle$1(String str, ImageView imageView) {
        this.$color = str;
        this.$imageView = imageView;
    }

    public final void call(Subscriber<? super Bitmap> subscriber) {
        style style;
        Bitmap createBitmap = Bitmap.createBitmap(100, 100, Config.ARGB_8888);
        createBitmap.eraseColor(MethodCallsLogger.parseColor(this.$color));
        Glide glide = Glide.get(this.$imageView.getContext());
        Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(imageView.context)");
        BitmapPool bitmapPool = glide.getBitmapPool();
        if (createBitmap == null) {
            style = null;
        } else {
            style = new style(createBitmap, bitmapPool);
        }
        subscriber.onNext(new CropCircleTransformation(this.$imageView.getContext()).transform(style, 100, 100).get());
        subscriber.onCompleted();
    }
}
