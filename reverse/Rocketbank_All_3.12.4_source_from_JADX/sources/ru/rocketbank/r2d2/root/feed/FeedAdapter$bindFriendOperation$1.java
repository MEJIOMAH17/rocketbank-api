package ru.rocketbank.r2d2.root.feed;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;

/* compiled from: FeedAdapter.kt */
public final class FeedAdapter$bindFriendOperation$1 implements OnActionListener {
    final /* synthetic */ FeedAdapter this$0;

    FeedAdapter$bindFriendOperation$1(FeedAdapter feedAdapter) {
        this.this$0 = feedAdapter;
    }

    public final void onAction(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.this$0.feedPresenter.onRequestAccepted(feedItem);
    }
}
