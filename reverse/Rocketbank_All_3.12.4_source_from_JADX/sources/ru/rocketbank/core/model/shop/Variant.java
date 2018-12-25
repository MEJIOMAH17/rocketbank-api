package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Variant.kt */
public final class Variant implements Parcelable {
    public static final Creator<Variant> CREATOR = new Variant$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final boolean available;
    private final String color;
    private final long id;
    private final int position;
    private final String size;

    /* compiled from: Variant.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Variant copy$default(Variant variant, long j, int i, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = variant.id;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            i = variant.position;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            str = variant.size;
        }
        String str3 = str;
        if ((i2 & 8) != 0) {
            str2 = variant.color;
        }
        String str4 = str2;
        if ((i2 & 16) != 0) {
            z = variant.available;
        }
        return variant.copy(j2, i3, str3, str4, z);
    }

    public final long component1() {
        return this.id;
    }

    public final int component2() {
        return this.position;
    }

    public final String component3() {
        return this.size;
    }

    public final String component4() {
        return this.color;
    }

    public final boolean component5() {
        return this.available;
    }

    public final Variant copy(long j, int i, String str, String str2, boolean z) {
        return new Variant(j, i, str, str2, z);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Variant) {
            Variant variant = (Variant) obj;
            if (this.id == variant.id) {
                if ((this.position == variant.position) && Intrinsics.areEqual(this.size, variant.size) && Intrinsics.areEqual(this.color, variant.color)) {
                    if (this.available == variant.available) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + this.position) * 31;
        String str = this.size;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.color;
        if (str != null) {
            i2 = str.hashCode();
        }
        i = (i + i2) * 31;
        int i3 = this.available;
        if (i3 != 0) {
            i3 = 1;
        }
        return i + i3;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Variant(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", position=");
        stringBuilder.append(this.position);
        stringBuilder.append(", size=");
        stringBuilder.append(this.size);
        stringBuilder.append(", color=");
        stringBuilder.append(this.color);
        stringBuilder.append(", available=");
        stringBuilder.append(this.available);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Variant(long j, int i, String str, String str2, boolean z) {
        this.id = j;
        this.position = i;
        this.size = str;
        this.color = str2;
        this.available = z;
    }

    public /* synthetic */ Variant(long j, int i, String str, String str2, boolean z, int i2, Ref ref) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            z = true;
        }
        this(j, i3, str, str2, z);
    }

    public final boolean getAvailable() {
        return this.available;
    }

    public final String getColor() {
        return this.color;
    }

    public final long getId() {
        return this.id;
    }

    public final int getPosition() {
        return this.position;
    }

    public final String getSize() {
        return this.size;
    }

    public Variant(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this(parcel.readLong(), parcel.readInt(), parcel.readString(), parcel.readString(), Integer.valueOf(1).equals(Integer.valueOf(parcel.readInt())));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeLong(this.id);
        }
        if (parcel != null) {
            parcel.writeInt(this.position);
        }
        if (parcel != null) {
            parcel.writeString(this.size);
        }
        if (parcel != null) {
            parcel.writeString(this.color);
        }
        if (parcel != null) {
            parcel.writeInt(this.available);
        }
    }
}
