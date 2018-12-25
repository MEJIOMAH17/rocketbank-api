package ru.rocketbank.r2d2.shop.details;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Size;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$2 extends Lambda implements Function1<Size, Unit> {
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showItem$2(ShopDetailsActivity shopDetailsActivity) {
        this.this$0 = shopDetailsActivity;
        super(1);
    }

    public final void invoke(Size size) {
        Intrinsics.checkParameterIsNotNull(size, "it");
        ((ShopDetailsPresenter) this.this$0.getPresenter()).selectSize(size);
    }
}
