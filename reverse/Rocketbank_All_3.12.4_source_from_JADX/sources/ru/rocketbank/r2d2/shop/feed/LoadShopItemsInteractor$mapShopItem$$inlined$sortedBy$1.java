package ru.rocketbank.r2d2.shop.feed;

import java.util.Comparator;
import ru.rocketbank.core.network.model.ShopImage;

/* compiled from: Comparisons.kt */
public final class LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$1<T> implements Comparator<T> {
    public final int compare(T t, T t2) {
        Comparable valueOf = Integer.valueOf(((ShopImage) t).getPosition());
        Comparable valueOf2 = Integer.valueOf(((ShopImage) t2).getPosition());
        if (valueOf == valueOf2) {
            return null;
        }
        if (valueOf == null) {
            return -1;
        }
        return valueOf2 == null ? 1 : valueOf.compareTo(valueOf2);
    }
}
