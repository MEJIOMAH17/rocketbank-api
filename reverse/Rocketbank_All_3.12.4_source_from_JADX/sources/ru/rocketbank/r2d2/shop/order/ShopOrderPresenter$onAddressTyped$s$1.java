package ru.rocketbank.r2d2.shop.order;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.AddressData;
import ru.rocketbank.r2d2.shop.order.ShopOrderContract.View;
import rx.functions.Action1;

/* compiled from: ShopOrderPresenter.kt */
final class ShopOrderPresenter$onAddressTyped$s$1<T> implements Action1<List<AddressData>> {
    final /* synthetic */ ShopOrderPresenter this$0;

    ShopOrderPresenter$onAddressTyped$s$1(ShopOrderPresenter shopOrderPresenter) {
        this.this$0 = shopOrderPresenter;
    }

    public final void call(List<AddressData> list) {
        View view = (View) this.this$0.getView();
        if (view != null) {
            Intrinsics.checkExpressionValueIsNotNull(list, "it");
            view.showAddresses(list);
        }
    }
}
