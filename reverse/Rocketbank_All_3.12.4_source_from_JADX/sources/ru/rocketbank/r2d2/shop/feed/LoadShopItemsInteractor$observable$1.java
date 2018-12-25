package ru.rocketbank.r2d2.shop.feed;

import java.util.List;
import ru.rocketbank.core.network.model.ShopItemResponse;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: LoadShopItemsInteractor.kt */
final class LoadShopItemsInteractor$observable$1<T, R> implements Func1<T, Observable<? extends R>> {
    public static final LoadShopItemsInteractor$observable$1 INSTANCE = new LoadShopItemsInteractor$observable$1();

    LoadShopItemsInteractor$observable$1() {
    }

    public final Observable<ShopItemResponse> call(List<ShopItemResponse> list) {
        return Observable.from((Iterable) list);
    }
}
