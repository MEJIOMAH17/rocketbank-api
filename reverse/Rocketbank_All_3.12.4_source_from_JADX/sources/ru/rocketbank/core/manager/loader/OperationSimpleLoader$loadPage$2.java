package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: OperationSimpleLoader.kt */
final class OperationSimpleLoader$loadPage$2<T> implements Action1<FeedList> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ OperationSimpleLoader this$0;

    OperationSimpleLoader$loadPage$2(OperationSimpleLoader operationSimpleLoader, int i) {
        this.this$0 = operationSimpleLoader;
        this.$pageNumber = i;
    }

    public final void call(FeedList feedList) {
        if (this.$pageNumber > this.this$0.getCurrentPage()) {
            this.this$0.setCurrentPage(this.$pageNumber);
        }
    }
}
