package ru.rocketbank.r2d2.root.feed.viewholder;

import android.support.v4.app.NotificationCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.FragmentFeedBinding;
import ru.rocketbank.r2d2.databinding.ListItemCardHeaderBinding;
import ru.rocketbank.r2d2.root.feed.FeedModel;

/* compiled from: HeaderViewHolder.kt */
public final class HeaderViewHolder extends FeedViewHolder implements OnTouchListener {
    private final ListItemCardHeaderBinding binding;
    private FragmentFeedBinding fragmentFeedBinding;

    public HeaderViewHolder(FeedModel feedModel, FragmentFeedBinding fragmentFeedBinding, View view) {
        Intrinsics.checkParameterIsNotNull(feedModel, "feedModel");
        Intrinsics.checkParameterIsNotNull(fragmentFeedBinding, "fragmentFeedBinding");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.fragmentFeedBinding = fragmentFeedBinding;
        fragmentFeedBinding = ListItemCardHeaderBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(fragmentFeedBinding, "ListItemCardHeaderBinding.bind(itemView)");
        this.binding = fragmentFeedBinding;
        this.binding.setData(this.fragmentFeedBinding.getFeed());
        view.setOnTouchListener(this);
        view.getLayoutParams().height = feedModel.getHeaderHeight();
        view.requestLayout();
    }

    public final ListItemCardHeaderBinding getBinding() {
        return this.binding;
    }

    public final void onBind(FragmentFeedBinding fragmentFeedBinding) {
        Intrinsics.checkParameterIsNotNull(fragmentFeedBinding, "fragmentFeedBinding");
        this.fragmentFeedBinding = fragmentFeedBinding;
        this.binding.setData(fragmentFeedBinding.getFeed());
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(motionEvent, NotificationCompat.CATEGORY_EVENT);
        view = this.fragmentFeedBinding.header;
        motionEvent = view.dispatchTouchEvent(motionEvent);
        view.invalidate();
        return motionEvent;
    }
}
