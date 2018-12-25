package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Merchant.kt */
public final class Merchant implements Parcelable {
    public static final Creator<Merchant> CREATOR = new Merchant$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private String icon;
    private long id;
    private String name;

    /* compiled from: Merchant.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Merchant copy$default(Merchant merchant, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = merchant.id;
        }
        if ((i & 2) != 0) {
            str = merchant.icon;
        }
        if ((i & 4) != 0) {
            str2 = merchant.name;
        }
        return merchant.copy(j, str, str2);
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.icon;
    }

    public final String component3() {
        return this.name;
    }

    public final Merchant copy(long j, String str, String str2) {
        return new Merchant(j, str, str2);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Merchant) {
            Merchant merchant = (Merchant) obj;
            return ((this.id > merchant.id ? 1 : (this.id == merchant.id ? 0 : -1)) == 0) && Intrinsics.areEqual(this.icon, merchant.icon) && Intrinsics.areEqual(this.name, merchant.name);
        }
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.icon;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.name;
        if (str != null) {
            i2 = str.hashCode();
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Merchant(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", icon=");
        stringBuilder.append(this.icon);
        stringBuilder.append(", name=");
        stringBuilder.append(this.name);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Merchant(long j, String str, String str2) {
        this.id = j;
        this.icon = str;
        this.name = str2;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final void setIcon(String str) {
        this.icon = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setName(String str) {
        this.name = str;
    }

    protected Merchant(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this(parcel.readLong(), parcel.readString(), parcel.readString());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeLong(this.id);
        parcel.writeString(this.icon);
        parcel.writeString(this.name);
    }
}
