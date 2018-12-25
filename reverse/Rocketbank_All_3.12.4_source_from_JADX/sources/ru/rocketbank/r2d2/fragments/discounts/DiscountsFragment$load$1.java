package ru.rocketbank.r2d2.fragments.discounts;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.discounts.DiscountsCollection;
import ru.rocketbank.core.utils.SoundNotification;
import rx.Subscriber;

/* compiled from: DiscountsFragment.kt */
public final class DiscountsFragment$load$1 extends Subscriber<DiscountsCollection> {
    final /* synthetic */ boolean $isSwipe;
    final /* synthetic */ DiscountsFragment this$0;

    public final void onCompleted() {
    }

    DiscountsFragment$load$1(DiscountsFragment discountsFragment, boolean z) {
        this.this$0 = discountsFragment;
        this.$isSwipe = z;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        if (this.$isSwipe == null) {
            this.this$0.hideSpinner();
        } else {
            DiscountsFragment.access$getSwipeRefresh$p(this.this$0).setRefreshing(false);
        }
    }

    public final void onNext(DiscountsCollection discountsCollection) {
        Intrinsics.checkParameterIsNotNull(discountsCollection, "discountsCollection");
        if (discountsCollection.categories != null) {
            DiscountsFragment.access$getDiscountAdapter$p(this.this$0).swap(discountsCollection);
        }
        if (discountsCollection.monthCashBack != null) {
            SoundNotification.INSTANCE.playSoundNotification(9);
        }
        if (this.$isSwipe == null) {
            this.this$0.hideSpinner();
            return;
        }
        DiscountsFragment.access$getDiscountAdapter$p(this.this$0).updatePictures();
        DiscountsFragment.access$getSwipeRefresh$p(this.this$0).setRefreshing(false);
    }
}
