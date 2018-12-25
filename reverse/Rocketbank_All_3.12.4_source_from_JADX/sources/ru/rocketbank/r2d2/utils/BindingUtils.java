package ru.rocketbank.r2d2.utils;

import android.content.res.ColorStateList;
import android.databinding.BindingAdapter;
import android.databinding.BindingMethod;
import android.databinding.BindingMethods;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.root.analytics.AnalyticsUtils;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;

@BindingMethods({@BindingMethod(attribute = "android:tint", method = "setImageTintList", type = ImageView.class)})
public class BindingUtils {
    @BindingAdapter({"bitmap"})
    public static void bitmap(ImageView imageView, Bitmap bitmap) {
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    @BindingAdapter({"imageUrlRound"})
    public static void url(ImageView imageView, String str) {
        ImageHelper.loadRound(imageView, str, new CropCircleTransformation(imageView.getContext()));
    }

    @BindingAdapter({"imageUrl"})
    public static void imageUrl(ImageView imageView, String str) {
        Glide.with(imageView.getContext()).load(str).into(imageView);
    }

    @BindingAdapter({"imageUrlGif"})
    public static void imageUrlGif(ImageView imageView, String str) {
        Glide.with(imageView.getContext()).load(str).diskCacheStrategy(DiskCacheStrategy.SOURCE).dontTransform().into(imageView);
    }

    @BindingAdapter({"textAmount"})
    public static void textAmount(RocketTextView rocketTextView, int i, int i2) {
        if (i != i2 || i == 0) {
            AnalyticsUtils.amountAnimation(rocketTextView, i, i2).start();
        }
    }

    @BindingAdapter({"textAmountRocket"})
    public static void textAmountRocket(RocketTextView rocketTextView, double d, double d2) {
        if (d != d2 || d == 0.0d) {
            ShopUtilsKt.amountAnimation(rocketTextView, d, d2).start();
        }
    }

    @BindingAdapter({"colorCircle"})
    public static void colorCircle(ImageView imageView, String str) {
        ShopUtilsKt.createColorCircle(imageView, str);
    }

    @BindingAdapter({"srcRes"})
    public static void setImageViewResource(ImageView imageView, int i) {
        imageView.setImageResource(i);
    }

    @BindingAdapter({"android:tint"})
    public static void setImageViewTint(ImageView imageView, int i) {
        if (VERSION.SDK_INT >= 21) {
            imageView.setImageTintList(ColorStateList.valueOf(i));
        } else {
            imageView.setColorFilter(i);
        }
    }
}
