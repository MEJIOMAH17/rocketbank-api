package ru.rocketbank.r2d2.root.feed;

/* compiled from: FeedFragment.kt */
final class FeedFragment$loadNextPageRunnable$1 implements Runnable {
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$loadNextPageRunnable$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    public final void run() {
        FeedPresenter access$getFeedPresenter$p = this.this$0.feedPresenter;
        if (access$getFeedPresenter$p != null) {
            access$getFeedPresenter$p.loadNextPage();
        }
    }
}
