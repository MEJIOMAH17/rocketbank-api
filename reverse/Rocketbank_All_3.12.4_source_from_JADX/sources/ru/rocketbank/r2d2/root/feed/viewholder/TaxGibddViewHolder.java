package ru.rocketbank.r2d2.root.feed.viewholder;

import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.FeedItemPushBinding;
import ru.rocketbank.r2d2.root.feed.FeedAdapter;

/* compiled from: TaxGibddViewHolder.kt */
public final class TaxGibddViewHolder extends PushViewHolder {
    public TaxGibddViewHolder(CropCircleTransformation cropCircleTransformation, FeedAdapter feedAdapter, FeedItemPushBinding feedItemPushBinding) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedAdapter, "feedAdapter");
        Intrinsics.checkParameterIsNotNull(feedItemPushBinding, "pushBinding");
        super(cropCircleTransformation, feedAdapter, feedItemPushBinding);
    }
}
