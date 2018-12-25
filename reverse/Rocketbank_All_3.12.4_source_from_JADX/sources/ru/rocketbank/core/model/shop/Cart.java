package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.ShopOrder.Address;
import ru.rocketbank.core.model.shop.ShopOrder.Item;

/* compiled from: Cart.kt */
public final class Cart implements Parcelable {
    public static final Creator<Cart> CREATOR = new Cart$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private double amount;
    private final List<CartItem> items;

    /* compiled from: Cart.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final <T> T identity(T t) {
        return t;
    }

    public Cart(List<CartItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        this.items = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
    }

    public final List<CartItem> getItems() {
        return this.items;
    }

    public final void setAmount(double d) {
        this.amount = d;
    }

    public final double getAmount() {
        double d = 0.0d;
        for (CartItem amount : this.items) {
            d += amount.getAmount();
        }
        return d;
    }

    public final double getDeficit(double d) {
        return getAmount() > d ? getAmount() - d : 0.0d;
    }

    public final void remove(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        this.items.remove(cartItem);
    }

    public final void add(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        this.items.add(cartItem);
    }

    public final boolean isEmpty() {
        return this.items.isEmpty();
    }

    public Cart(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        parcel = parcel.createTypedArrayList(CartItem.CREATOR);
        Intrinsics.checkExpressionValueIsNotNull(parcel, "source.createTypedArrayList(CartItem.CREATOR)");
        this((List) parcel);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeTypedList(this.items);
        }
    }

    public final void clear() {
        this.items.clear();
    }

    public final ShopOrder order(String str, Address address) {
        Address address2 = address;
        Intrinsics.checkParameterIsNotNull(address2, "address");
        Collection arrayList = new ArrayList();
        for (Object next : this.items) {
            if ((((CartItem) next).getId() != null ? 1 : null) != null) {
                arrayList.add(next);
            }
        }
        Map linkedHashMap = new LinkedHashMap();
        for (Object next2 : (List) arrayList) {
            CartItem cartItem = (CartItem) identity((CartItem) next2);
            ArrayList arrayList2 = linkedHashMap.get(cartItem);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(cartItem, arrayList2);
            }
            arrayList2.add(next2);
        }
        arrayList = new ArrayList(linkedHashMap.size());
        for (Entry entry : linkedHashMap.entrySet()) {
            long id = ((CartItem) entry.getKey()).getShopItem().getId();
            int size = ((List) entry.getValue()).size();
            Variant variant = ((CartItem) entry.getKey()).getVariant();
            arrayList.add(new Item(id, size, variant != null ? variant.getId() : -1));
        }
        return new ShopOrder((List) arrayList, str, getAmount(), address2);
    }
}
