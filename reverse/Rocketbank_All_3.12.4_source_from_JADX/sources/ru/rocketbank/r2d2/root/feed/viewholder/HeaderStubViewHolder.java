package ru.rocketbank.r2d2.root.feed.viewholder;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FragmentFeedBinding;
import ru.rocketbank.r2d2.root.feed.FeedModel;

/* compiled from: HeaderStubViewHolder.kt */
public final class HeaderStubViewHolder extends FeedViewHolder {
    public HeaderStubViewHolder(FragmentFeedBinding fragmentFeedBinding, FeedModel feedModel, View view) {
        Intrinsics.checkParameterIsNotNull(fragmentFeedBinding, "fragmentFeedBinding");
        Intrinsics.checkParameterIsNotNull(feedModel, "feedModel");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = view.findViewById(C0859R.id.headerStub);
        LayoutParams layoutParams = view.getLayoutParams();
        fragmentFeedBinding = fragmentFeedBinding.realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(fragmentFeedBinding, "fragmentFeedBinding.realToolbar");
        layoutParams.height = fragmentFeedBinding.getHeight() + feedModel.getAppBarHeight();
        view.setLayoutParams(layoutParams);
    }
}
