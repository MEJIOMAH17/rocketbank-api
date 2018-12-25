package ru.rocketbank.r2d2.root.feed;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.model.ResponseContainerData;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: FeedPresenter.kt */
final class FeedPresenter$onRequestAccepted$1 implements OnClickListener {
    final /* synthetic */ FeedItem $feedItem;
    final /* synthetic */ FeedPresenter this$0;

    FeedPresenter$onRequestAccepted$1(FeedPresenter feedPresenter, FeedItem feedItem) {
        this.this$0 = feedPresenter;
        this.$feedItem = feedItem;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.getFeed().showProgressExecution();
        Operation operation = (Operation) this.$feedItem.getOperation();
        i = this.this$0;
        FeedManager feedManager = this.this$0.getFeedManager();
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        i.actionSubscription = feedManager.sendMoneyToFriend(operation.getId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new Subscriber<ResponseContainerData>() {
            public final void onCompleted() {
            }

            public final void onError(Throwable th) {
                Intrinsics.checkParameterIsNotNull(th, "e");
                this.this$0.getFeed().hideProgress();
                this.this$0.refreshTop();
            }

            public final void onNext(ResponseContainerData responseContainerData) {
                Intrinsics.checkParameterIsNotNull(responseContainerData, "responseContainerData");
                this.this$0.getFeed().hideProgress();
                this.this$0.refreshTop();
                this.this$0.removeOperation(this.$feedItem);
            }
        });
    }
}
