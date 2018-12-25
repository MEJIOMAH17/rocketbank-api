package ru.rocketbank.r2d2.root.feed.viewholder;

import kotlin.jvm.internal.Ref.ObjectRef;
import rx.Subscription;
import rx.functions.Action1;

/* compiled from: TransferToSafeViewHolder.kt */
final class TransferToSafeViewHolder$onConfirmClicked$2<T> implements Action1<Throwable> {
    final /* synthetic */ ObjectRef $subscription;

    TransferToSafeViewHolder$onConfirmClicked$2(ObjectRef objectRef) {
        this.$subscription = objectRef;
    }

    public final void call(Throwable th) {
        ((Subscription) this.$subscription.element).unsubscribe();
    }
}
