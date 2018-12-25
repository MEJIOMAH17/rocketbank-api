package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: ContextResponse.kt */
public final class ContextShopItem implements Parcelable {
    public static final Creator<ContextShopItem> CREATOR = new ContextShopItem$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private final int count;
    private final long id;
    private final String image_url;
    private final double price;
    private final String title;

    /* compiled from: ContextResponse.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public ContextShopItem() {
        this(0, 0.0d, 0, null, null, 31, null);
    }

    public static /* bridge */ /* synthetic */ ContextShopItem copy$default(ContextShopItem contextShopItem, long j, double d, int i, String str, String str2, int i2, Object obj) {
        ContextShopItem contextShopItem2 = contextShopItem;
        return contextShopItem2.copy((i2 & 1) != 0 ? contextShopItem2.id : j, (i2 & 2) != 0 ? contextShopItem2.price : d, (i2 & 4) != 0 ? contextShopItem2.count : i, (i2 & 8) != 0 ? contextShopItem2.title : str, (i2 & 16) != 0 ? contextShopItem2.image_url : str2);
    }

    public final long component1() {
        return this.id;
    }

    public final double component2() {
        return this.price;
    }

    public final int component3() {
        return this.count;
    }

    public final String component4() {
        return this.title;
    }

    public final String component5() {
        return this.image_url;
    }

    public final ContextShopItem copy(long j, double d, int i, String str, String str2) {
        return new ContextShopItem(j, d, i, str, str2);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContextShopItem) {
            ContextShopItem contextShopItem = (ContextShopItem) obj;
            if ((this.id == contextShopItem.id) && Double.compare(this.price, contextShopItem.price) == 0) {
                return (this.count == contextShopItem.count) && Intrinsics.areEqual(this.title, contextShopItem.title) && Intrinsics.areEqual(this.image_url, contextShopItem.image_url);
            }
        }
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.price);
        i = (((i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + this.count) * 31;
        String str = this.title;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.image_url;
        if (str != null) {
            i2 = str.hashCode();
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ContextShopItem(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", price=");
        stringBuilder.append(this.price);
        stringBuilder.append(", count=");
        stringBuilder.append(this.count);
        stringBuilder.append(", title=");
        stringBuilder.append(this.title);
        stringBuilder.append(", image_url=");
        stringBuilder.append(this.image_url);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ContextShopItem(long j, double d, int i, String str, String str2) {
        this.id = j;
        this.price = d;
        this.count = i;
        this.title = str;
        this.image_url = str2;
    }

    public final long getId() {
        return this.id;
    }

    public final double getPrice() {
        return this.price;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getTitle() {
        return this.title;
    }

    public /* synthetic */ ContextShopItem(long j, double d, int i, String str, String str2, int i2, Ref ref) {
        this((i2 & 1) != 0 ? 0 : j, (i2 & 2) != 0 ? 0.0d : d, (i2 & 4) != 0 ? 1 : i, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? null : str2);
    }

    public final String getImage_url() {
        return this.image_url;
    }

    public ContextShopItem(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this(parcel.readLong(), parcel.readDouble(), parcel.readInt(), parcel.readString(), parcel.readString());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeLong(this.id);
        }
        if (parcel != null) {
            parcel.writeDouble(this.price);
        }
        if (parcel != null) {
            parcel.writeInt(this.count);
        }
        if (parcel != null) {
            parcel.writeString(this.title);
        }
        if (parcel != null) {
            parcel.writeString(this.image_url);
        }
    }
}
