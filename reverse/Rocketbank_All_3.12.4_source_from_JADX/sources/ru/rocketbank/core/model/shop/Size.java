package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Size.kt */
public final class Size implements Parcelable {
    public static final Creator<Size> CREATOR = new Size$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final boolean available;
    private final String id;
    private final String name;

    /* compiled from: Size.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Size copy$default(Size size, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = size.id;
        }
        if ((i & 2) != 0) {
            str2 = size.name;
        }
        if ((i & 4) != 0) {
            z = size.available;
        }
        return size.copy(str, str2, z);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final boolean component3() {
        return this.available;
    }

    public final Size copy(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        return new Size(str, str2, z);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (Intrinsics.areEqual(this.id, size.id) && Intrinsics.areEqual(this.name, size.name)) {
                if (this.available == size.available) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.id;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        hashCode = (hashCode + i) * 31;
        i = this.available;
        if (i != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Size(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", name=");
        stringBuilder.append(this.name);
        stringBuilder.append(", available=");
        stringBuilder.append(this.available);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Size(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        this.id = str;
        this.name = str2;
        this.available = z;
    }

    public /* synthetic */ Size(String str, String str2, boolean z, int i, Ref ref) {
        if ((i & 2) != null) {
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            str2 = str.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(str2, "(this as java.lang.String).toUpperCase()");
        }
        if ((i & 4) != 0) {
            z = true;
        }
        this(str, str2, z);
    }

    public final boolean getAvailable() {
        return this.available;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public Size(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "source.readString()");
        String readString2 = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString2, "source.readString()");
        this(readString, readString2, Integer.valueOf(1).equals(Integer.valueOf(parcel.readInt())));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.id);
        }
        if (parcel != null) {
            parcel.writeString(this.name);
        }
        if (parcel != null) {
            parcel.writeInt(this.available);
        }
    }
}
