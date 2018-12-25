package ru.rocketbank.r2d2.root.feed.viewholder;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FeedItemChosenMonthCashbackBinding;

/* compiled from: ChosenMonthCashBackViewHolder.kt */
public final class ChosenMonthCashBackViewHolder extends FeedViewHolder {
    private final CropCircleTransformation cropCircleTransformation;
    private String currentText;
    private final FeedItemChosenMonthCashbackBinding itemBinding;

    public final CropCircleTransformation getCropCircleTransformation() {
        return this.cropCircleTransformation;
    }

    public final FeedItemChosenMonthCashbackBinding getItemBinding() {
        return this.itemBinding;
    }

    public ChosenMonthCashBackViewHolder(CropCircleTransformation cropCircleTransformation, FeedItemChosenMonthCashbackBinding feedItemChosenMonthCashbackBinding) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedItemChosenMonthCashbackBinding, "itemBinding");
        LinearLayout linearLayout = feedItemChosenMonthCashbackBinding.root;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "itemBinding.root");
        super(linearLayout);
        this.cropCircleTransformation = cropCircleTransformation;
        this.itemBinding = feedItemChosenMonthCashbackBinding;
    }

    public final String getCurrentText() {
        return this.currentText;
    }

    public final void setCurrentText(String str) {
        this.currentText = str;
    }

    public final void setMerchantOne(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        ImageView imageView = this.itemBinding.merchantImageViewOne;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "itemBinding.merchantImageViewOne");
        loadImageInto(str, imageView);
        str = this.itemBinding.merchantNameOne;
        Intrinsics.checkExpressionValueIsNotNull(str, "itemBinding.merchantNameOne");
        str.setText(str2);
    }

    public final void setMerchantTwo(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        ImageView imageView = this.itemBinding.merchantImageViewTwo;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "itemBinding.merchantImageViewTwo");
        loadImageInto(str, imageView);
        str = this.itemBinding.merchantNameTwo;
        Intrinsics.checkExpressionValueIsNotNull(str, "itemBinding.merchantNameTwo");
        str.setText(str2);
    }

    public final void setMerchantThree(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        ImageView imageView = this.itemBinding.merchantImageViewThree;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "itemBinding.merchantImageViewThree");
        loadImageInto(str, imageView);
        str = this.itemBinding.merchantNameThree;
        Intrinsics.checkExpressionValueIsNotNull(str, "itemBinding.merchantNameThree");
        str.setText(str2);
    }

    private final void loadImageInto(String str, ImageView imageView) {
        int dimensionPixelSize = imageView.getResources().getDimensionPixelSize(C0859R.dimen.rount_merchant_width_height);
        Glide.with(imageView.getContext()).load(str).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade().bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(imageView);
    }

    public final void setTitle(String str) {
        this.currentText = str;
        TextView textView = this.itemBinding.title;
        Intrinsics.checkExpressionValueIsNotNull(textView, "itemBinding.title");
        textView.setText(str);
    }
}
