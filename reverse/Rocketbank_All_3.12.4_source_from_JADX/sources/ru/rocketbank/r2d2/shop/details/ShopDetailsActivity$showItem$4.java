package ru.rocketbank.r2d2.shop.details;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.r2d2.shop.details.attributes.ShopColorAdapter;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$4 extends Lambda implements Function1<Size, Unit> {
    final /* synthetic */ View $colors;
    final /* synthetic */ ShopItem $shopItem;
    final /* synthetic */ ShopColorAdapter $storeColorAdapter;
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showItem$4(ShopDetailsActivity shopDetailsActivity, ShopItem shopItem, View view, ShopColorAdapter shopColorAdapter) {
        this.this$0 = shopDetailsActivity;
        this.$shopItem = shopItem;
        this.$colors = view;
        this.$storeColorAdapter = shopColorAdapter;
        super(1);
    }

    public final void invoke(Size size) {
        Intrinsics.checkParameterIsNotNull(size, "it");
        ((ShopDetailsPresenter) this.this$0.getPresenter()).selectSize(size);
        size = this.$shopItem.filterColors(size);
        if (size != null) {
            View view = this.$colors;
            Intrinsics.checkExpressionValueIsNotNull(view, "colors");
            view.setVisibility(0);
            this.$storeColorAdapter.setColors(size);
        } else {
            size = this.$colors;
            Intrinsics.checkExpressionValueIsNotNull(size, "colors");
            size.setVisibility(8);
        }
        this.$storeColorAdapter.notifyDataSetChanged();
    }
}
