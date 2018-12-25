package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.DiscountDetailsActivity;
import ru.rocketbank.r2d2.databinding.FeedItemAdsBinding;

/* compiled from: AdsViewHolder.kt */
public final class AdsViewHolder extends FeedViewHolder implements OnClickListener {
    private Discount discountOperation;
    private final ImageView imageView;

    public AdsViewHolder(FeedItemAdsBinding feedItemAdsBinding) {
        Intrinsics.checkParameterIsNotNull(feedItemAdsBinding, "feedItemAdsBinding");
        feedItemAdsBinding = feedItemAdsBinding.root;
        Intrinsics.checkExpressionValueIsNotNull(feedItemAdsBinding, "feedItemAdsBinding.root");
        super((View) feedItemAdsBinding);
        feedItemAdsBinding = this.itemView.findViewById(C0859R.id.ads_image);
        if (feedItemAdsBinding == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.imageView = (ImageView) feedItemAdsBinding;
        this.imageView.setOnClickListener(this);
    }

    public final void setAds(String str) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Glide.with(view.getContext()).load(str).centerCrop().into(this.imageView);
    }

    public final void setDiscount(Discount discount) {
        this.discountOperation = discount;
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = DiscountDetailsActivity.Companion;
        View view2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
        Context context = view2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
        view.start(context, this.discountOperation);
    }
}
