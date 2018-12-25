package ru.rocketbank.r2d2.root.feed.viewholder;

import android.widget.LinearLayout;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.FeedItemPushBinding;
import ru.rocketbank.r2d2.root.feed.FeedAdapter;

/* compiled from: FriendViewHolder.kt */
public final class FriendViewHolder extends PushViewHolder {
    public FriendViewHolder(CropCircleTransformation cropCircleTransformation, FeedAdapter feedAdapter, FeedItemPushBinding feedItemPushBinding) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedAdapter, "feedAdapter");
        Intrinsics.checkParameterIsNotNull(feedItemPushBinding, "pushBinding");
        super(cropCircleTransformation, feedAdapter, feedItemPushBinding);
    }

    public final void setVisible(boolean z) {
        LinearLayout linearLayout = getPushBinding().root;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "pushBinding.root");
        linearLayout.setVisibility(z ? false : true);
    }
}
