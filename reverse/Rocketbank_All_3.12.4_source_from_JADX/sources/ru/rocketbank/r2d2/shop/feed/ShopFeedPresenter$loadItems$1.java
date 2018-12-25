package ru.rocketbank.r2d2.shop.feed;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.ShopItem;

/* compiled from: ShopFeedPresenter.kt */
final class ShopFeedPresenter$loadItems$1 extends Lambda implements Function1<List<? extends ShopItem>, Unit> {
    final /* synthetic */ ShopFeedPresenter this$0;

    ShopFeedPresenter$loadItems$1(ShopFeedPresenter shopFeedPresenter) {
        this.this$0 = shopFeedPresenter;
        super(1);
    }

    public final void invoke(List<? extends ShopItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        this.this$0.onItemsLoaded(list);
    }
}
