package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: SafeOperationLoader.kt */
final class SafeOperationLoader$loadPage$2<T> implements Action1<FeedList> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ SafeOperationLoader this$0;

    SafeOperationLoader$loadPage$2(SafeOperationLoader safeOperationLoader, int i) {
        this.this$0 = safeOperationLoader;
        this.$pageNumber = i;
    }

    public final void call(FeedList feedList) {
        if (this.$pageNumber > this.this$0.getCurrentPage()) {
            this.this$0.setCurrentPage(this.$pageNumber);
        }
    }
}
