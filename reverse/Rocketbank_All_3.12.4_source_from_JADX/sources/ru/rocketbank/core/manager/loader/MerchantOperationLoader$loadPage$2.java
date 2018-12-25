package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: MerchantOperationLoader.kt */
final class MerchantOperationLoader$loadPage$2<T> implements Action1<FeedList> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ MerchantOperationLoader this$0;

    MerchantOperationLoader$loadPage$2(MerchantOperationLoader merchantOperationLoader, int i) {
        this.this$0 = merchantOperationLoader;
        this.$pageNumber = i;
    }

    public final void call(FeedList feedList) {
        if (this.$pageNumber > this.this$0.getCurrentPage()) {
            this.this$0.setCurrentPage(this.$pageNumber);
        }
    }
}
