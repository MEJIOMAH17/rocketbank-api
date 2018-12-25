package ru.rocketbank.core.manager;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ResponseModel;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Subscriber;

/* compiled from: FeedManager.kt */
public final class FeedManager$stashOperation$1 extends Subscriber<ResponseModel> {
    final /* synthetic */ FeedItem $feedItem;
    final /* synthetic */ FeedManager this$0;

    public final void onCompleted() {
    }

    FeedManager$stashOperation$1(FeedManager feedManager, FeedItem feedItem) {
        this.this$0 = feedManager;
        this.$feedItem = feedItem;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Intrinsics.checkParameterIsNotNull((ResponseModel) obj, "responseModel");
        this.this$0.getFeedLoader().removeFromCache(this.$feedItem);
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(FeedManager.TAG, "Stash item failed", th);
        this.this$0.getFeedLoader().notifyItemChange(this.$feedItem);
    }
}
