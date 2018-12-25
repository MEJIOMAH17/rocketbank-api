package ru.rocketbank.r2d2.root.lead;

import android.graphics.Color;
import android.widget.ImageView;
import com.bumptech.glide.BitmapRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import jp.wasabeef.glide.transformations.ColorFilterTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: LeadConfig.kt */
public final class LeadConfig {
    public static final LeadConfig INSTANCE = new LeadConfig();
    private static final float backgroundDarkness = -0.36f;

    private LeadConfig() {
    }

    public final float getBackgroundDarkness() {
        return backgroundDarkness;
    }

    public final void showBackground(ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "background");
        BitmapRequestBuilder format = Glide.with(imageView.getContext()).load(Integer.valueOf(C0859R.drawable.welcome)).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).format(DecodeFormat.PREFER_ARGB_8888);
        Transformation[] transformationArr = new Transformation[2];
        transformationArr[0] = new ColorFilterTransformation(imageView.getContext(), Color.argb(95, 0, 0, 0));
        Glide glide = Glide.get(imageView.getContext());
        Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(background.context)");
        transformationArr[1] = new CenterCrop(glide.getBitmapPool());
        format.transform(transformationArr).dontAnimate().into(imageView);
    }
}
