package ru.rocketbank.r2d2.shop.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.ShopItem;

/* compiled from: ShopFeedFragment.kt */
final class ShopFeedFragment$onCreate$1 extends Lambda implements Function1<ShopItem, Unit> {
    final /* synthetic */ ShopFeedFragment this$0;

    ShopFeedFragment$onCreate$1(ShopFeedFragment shopFeedFragment) {
        this.this$0 = shopFeedFragment;
        super(1);
    }

    public final void invoke(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "it");
        ((ShopFeedPresenter) this.this$0.getPresenter()).onItemClick(shopItem);
    }
}
