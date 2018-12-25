package ru.rocketbank.r2d2.shop.order;

import kotlin.collections.CollectionsKt;
import ru.rocketbank.r2d2.shop.order.ShopOrderContract.View;
import rx.functions.Action1;

/* compiled from: ShopOrderPresenter.kt */
final class ShopOrderPresenter$onAddressTyped$s$2<T> implements Action1<Throwable> {
    final /* synthetic */ ShopOrderPresenter this$0;

    ShopOrderPresenter$onAddressTyped$s$2(ShopOrderPresenter shopOrderPresenter) {
        this.this$0 = shopOrderPresenter;
    }

    public final void call(Throwable th) {
        View view = (View) this.this$0.getView();
        if (view != null) {
            view.showAddresses(CollectionsKt.emptyList());
        }
    }
}
