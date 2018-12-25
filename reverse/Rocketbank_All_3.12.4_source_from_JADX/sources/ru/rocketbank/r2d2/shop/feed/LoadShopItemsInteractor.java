package ru.rocketbank.r2d2.shop.feed;

import android.arch.lifecycle.MethodCallsLogger;
import android.support.v4.view.ViewCompat;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.network.model.ShopImage;
import ru.rocketbank.core.network.model.ShopItemResponse;
import ru.rocketbank.core.utils.Interactor;
import rx.Observable;

/* compiled from: LoadShopItemsInteractor.kt */
public final class LoadShopItemsInteractor extends Interactor<List<? extends ShopItem>> {
    private final ShopApi shopApi;

    public LoadShopItemsInteractor(ShopApi shopApi) {
        Intrinsics.checkParameterIsNotNull(shopApi, "shopApi");
        this.shopApi = shopApi;
    }

    public final ShopApi getShopApi() {
        return this.shopApi;
    }

    public final Observable<List<ShopItem>> getObservable() {
        Observable<List<ShopItem>> map = this.shopApi.items().flatMap(LoadShopItemsInteractor$observable$1.INSTANCE).map(new LoadShopItemsInteractor$observable$2(this)).toList().map(LoadShopItemsInteractor$observable$3.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "shopApi.items()\n        …ap { it.filterNotNull() }");
        return map;
    }

    private final ShopItem toShopItem(ShopItemResponse shopItemResponse) {
        try {
            return mapShopItem(shopItemResponse);
        } catch (ShopItemResponse shopItemResponse2) {
            shopItemResponse2.printStackTrace();
            return null;
        }
    }

    private final ShopItem mapShopItem(ShopItemResponse shopItemResponse) {
        String str;
        Object obj;
        long id = shopItemResponse.getId();
        String title = shopItemResponse.getTitle();
        String description = shopItemResponse.getDescription();
        String feed_description = shopItemResponse.getFeed_description();
        Double price = shopItemResponse.getPrice();
        double doubleValue = price != null ? price.doubleValue() : 0.0d;
        String feed_text_color = shopItemResponse.getFeed_text_color();
        int parseColor = feed_text_color != null ? MethodCallsLogger.parseColor(feed_text_color) : ViewCompat.MEASURED_STATE_MASK;
        Double price_old = shopItemResponse.getPrice_old();
        String price_replacement = shopItemResponse.getPrice_replacement();
        ShopImage feed_image = shopItemResponse.getFeed_image();
        boolean promo_title_front = shopItemResponse.getPromo_title_front();
        feed_text_color = shopItemResponse.getPromo_title_color();
        int parseColor2 = feed_text_color != null ? MethodCallsLogger.parseColor(feed_text_color) : ViewCompat.MEASURED_STATE_MASK;
        feed_text_color = shopItemResponse.getPromo_title();
        if (feed_text_color == null) {
            str = null;
        } else if (feed_text_color == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        } else {
            feed_text_color = feed_text_color.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(feed_text_color, "(this as java.lang.String).toUpperCase()");
            str = feed_text_color;
        }
        Float promo_title_opacity = shopItemResponse.getPromo_title_opacity();
        List info_images = shopItemResponse.getInfo_images();
        List sortedWith = info_images != null ? CollectionsKt.sortedWith(info_images, new LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$1()) : null;
        String sizes_table_url = shopItemResponse.getSizes_table_url();
        ShopImage cart_image = shopItemResponse.getCart_image();
        info_images = shopItemResponse.getVariants();
        List sortedWith2 = info_images != null ? CollectionsKt.sortedWith(info_images, new LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$2()) : null;
        CharSequence structure = shopItemResponse.getStructure();
        if (structure != null) {
            if (!StringsKt.isBlank(structure)) {
                obj = null;
                return new ShopItem(id, title, description, feed_description, feed_image, doubleValue, parseColor, null, price_old, sortedWith, cart_image, price_replacement, obj == null ? null : shopItemResponse.getStructure(), str, sizes_table_url, promo_title_front, parseColor2, promo_title_opacity, sortedWith2, null, 524416, null);
            }
        }
        obj = 1;
        if (obj == null) {
        }
        return new ShopItem(id, title, description, feed_description, feed_image, doubleValue, parseColor, null, price_old, sortedWith, cart_image, price_replacement, obj == null ? null : shopItemResponse.getStructure(), str, sizes_table_url, promo_title_front, parseColor2, promo_title_opacity, sortedWith2, null, 524416, null);
    }
}
