package ru.rocketbank.r2d2.shop.feed;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.ShopItem;
import rx.functions.Func1;

/* compiled from: LoadShopItemsInteractor.kt */
final class LoadShopItemsInteractor$observable$3<T, R> implements Func1<T, R> {
    public static final LoadShopItemsInteractor$observable$3 INSTANCE = new LoadShopItemsInteractor$observable$3();

    LoadShopItemsInteractor$observable$3() {
    }

    public final List<ShopItem> call(List<ShopItem> list) {
        Intrinsics.checkExpressionValueIsNotNull(list, "it");
        return CollectionsKt.filterNotNull(list);
    }
}
