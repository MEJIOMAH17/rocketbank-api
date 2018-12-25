package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.network.model.ShopImage;

/* compiled from: Cart.kt */
public final class CartItem implements Parcelable {
    public static final Creator<CartItem> CREATOR = new CartItem$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final double amount;
    private final Color color;
    private Long id;
    private final ShopImage image;
    private final ShopItem shopItem;
    private final Size size;
    private final String title;

    /* compiled from: Cart.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public CartItem(ShopItem shopItem, Long l, Size size, Color color) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        this.shopItem = shopItem;
        this.id = l;
        this.size = size;
        this.color = color;
        this.amount = this.shopItem.getPrice();
        this.title = this.shopItem.getTitle();
        this.image = this.shopItem.getCart_image();
    }

    public /* synthetic */ CartItem(ShopItem shopItem, Long l, Size size, Color color, int i, Ref ref) {
        if ((i & 2) != null) {
            l = null;
        }
        if ((i & 4) != null) {
            size = null;
        }
        if ((i & 8) != 0) {
            color = null;
        }
        this(shopItem, l, size, color);
    }

    public final Color getColor() {
        return this.color;
    }

    public final Long getId() {
        return this.id;
    }

    public final ShopItem getShopItem() {
        return this.shopItem;
    }

    public final Size getSize() {
        return this.size;
    }

    public final void setId(Long l) {
        this.id = l;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final String getTitle() {
        return this.title;
    }

    public final ShopImage getImage() {
        return this.image;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CartItem) {
            CartItem cartItem = (CartItem) obj;
            if (Intrinsics.areEqual(cartItem.id, this.id) && Intrinsics.areEqual(cartItem.color, this.color) && Intrinsics.areEqual(cartItem.size, this.size) != null) {
                return true;
            }
        }
        return null;
    }

    public CartItem(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        Parcelable readParcelable = parcel.readParcelable(ShopItem.class.getClassLoader());
        Intrinsics.checkExpressionValueIsNotNull(readParcelable, "source.readParcelable<Sh…::class.java.classLoader)");
        this((ShopItem) readParcelable, (Long) parcel.readValue(Long.TYPE.getClassLoader()), (Size) parcel.readParcelable(Size.class.getClassLoader()), (Color) parcel.readParcelable(Color.class.getClassLoader()));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeParcelable(this.shopItem, 0);
        }
        if (parcel != null) {
            parcel.writeValue(this.id);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.size, 0);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.color, 0);
        }
    }

    public final int hashCode() {
        Long l = this.id;
        int i = 0;
        int hashCode = (l != null ? l.hashCode() : 0) * 31;
        Size size = this.size;
        hashCode = (hashCode + (size != null ? size.hashCode() : 0)) * 31;
        Color color = this.color;
        if (color != null) {
            i = color.hashCode();
        }
        return hashCode + i;
    }

    public final Variant getVariant() {
        return this.shopItem.findVariant(this.size, this.color);
    }
}
