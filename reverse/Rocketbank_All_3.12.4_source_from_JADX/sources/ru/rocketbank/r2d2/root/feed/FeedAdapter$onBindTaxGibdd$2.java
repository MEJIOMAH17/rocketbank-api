package ru.rocketbank.r2d2.root.feed;

import ru.rocketbank.core.network.model.FeedItem;

/* compiled from: FeedAdapter.kt */
final class FeedAdapter$onBindTaxGibdd$2 implements Runnable {
    final /* synthetic */ FeedItem $feedItem;
    final /* synthetic */ FeedAdapter this$0;

    FeedAdapter$onBindTaxGibdd$2(FeedAdapter feedAdapter, FeedItem feedItem) {
        this.this$0 = feedAdapter;
        this.$feedItem = feedItem;
    }

    public final void run() {
        this.this$0.removeItem(this.$feedItem);
        this.this$0.feedPresenter.stashOperation(this.$feedItem);
    }
}
