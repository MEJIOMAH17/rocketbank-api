package ru.rocketbank.r2d2.shop.feed;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.network.model.ShopItemResponse;
import rx.functions.Func1;

/* compiled from: LoadShopItemsInteractor.kt */
final class LoadShopItemsInteractor$observable$2<T, R> implements Func1<T, R> {
    final /* synthetic */ LoadShopItemsInteractor this$0;

    LoadShopItemsInteractor$observable$2(LoadShopItemsInteractor loadShopItemsInteractor) {
        this.this$0 = loadShopItemsInteractor;
    }

    public final ShopItem call(ShopItemResponse shopItemResponse) {
        LoadShopItemsInteractor loadShopItemsInteractor = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(shopItemResponse, "it");
        return loadShopItemsInteractor.toShopItem(shopItemResponse);
    }
}
