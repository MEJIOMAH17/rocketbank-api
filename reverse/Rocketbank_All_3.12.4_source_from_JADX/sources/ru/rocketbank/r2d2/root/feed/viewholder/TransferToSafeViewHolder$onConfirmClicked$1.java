package ru.rocketbank.r2d2.root.feed.viewholder;

import kotlin.jvm.internal.Ref.ObjectRef;
import rx.Subscription;
import rx.functions.Action1;

/* compiled from: TransferToSafeViewHolder.kt */
final class TransferToSafeViewHolder$onConfirmClicked$1<T> implements Action1<Object> {
    final /* synthetic */ ObjectRef $subscription;
    final /* synthetic */ TransferToSafeViewHolder this$0;

    TransferToSafeViewHolder$onConfirmClicked$1(TransferToSafeViewHolder transferToSafeViewHolder, ObjectRef objectRef) {
        this.this$0 = transferToSafeViewHolder;
        this.$subscription = objectRef;
    }

    public final void call(Object obj) {
        this.this$0.callback.onDismiss(this.this$0.itemView, TransferToSafeViewHolder.access$getFeedItem$p(this.this$0));
        ((Subscription) this.$subscription.element).unsubscribe();
    }
}
