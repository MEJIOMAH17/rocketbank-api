package ru.rocketbank.r2d2.shop.details;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Color;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$storeColorAdapter$1 extends Lambda implements Function1<Color, Unit> {
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showItem$storeColorAdapter$1(ShopDetailsActivity shopDetailsActivity) {
        this.this$0 = shopDetailsActivity;
        super(1);
    }

    public final void invoke(Color color) {
        ((ShopDetailsPresenter) this.this$0.getPresenter()).selectColor(color);
    }
}
