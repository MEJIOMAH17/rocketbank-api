package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: SearchLoader.kt */
final class SearchLoader$loadPage$2<T> implements Action1<FeedList> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ SearchLoader this$0;

    SearchLoader$loadPage$2(SearchLoader searchLoader, int i) {
        this.this$0 = searchLoader;
        this.$pageNumber = i;
    }

    public final void call(FeedList feedList) {
        if (this.$pageNumber > this.this$0.getCurrentPage()) {
            this.this$0.setCurrentPage(this.$pageNumber);
        }
    }
}
