package ru.rocketbank.r2d2.root.feed;

/* compiled from: FeedFragment.kt */
final class FeedFragment$onUserModel$1 implements Runnable {
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$onUserModel$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    public final void run() {
        this.this$0.disableRefresh();
    }
}
