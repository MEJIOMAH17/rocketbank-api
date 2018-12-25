package ru.rocketbank.core.manager;

import ru.rocketbank.core.model.ResponseContainerData;
import rx.functions.Action1;

/* compiled from: FeedManager.kt */
final class FeedManager$sendMoneyToFriend$1<T> implements Action1<ResponseContainerData> {
    final /* synthetic */ long $id;
    final /* synthetic */ FeedManager this$0;

    FeedManager$sendMoneyToFriend$1(FeedManager feedManager, long j) {
        this.this$0 = feedManager;
        this.$id = j;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        this.this$0.getFeedLoader().removeFromCacheById(this.$id);
    }
}
