package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: TagOperationLoader.kt */
final class TagOperationLoader$loadPage$2<T> implements Action1<FeedList> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ TagOperationLoader this$0;

    TagOperationLoader$loadPage$2(TagOperationLoader tagOperationLoader, int i) {
        this.this$0 = tagOperationLoader;
        this.$pageNumber = i;
    }

    public final void call(FeedList feedList) {
        if (this.$pageNumber > this.this$0.getCurrentPage()) {
            this.this$0.setCurrentPage(this.$pageNumber);
        }
    }
}
