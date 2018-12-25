package ru.rocketbank.core.model.shop;

import android.arch.lifecycle.MethodCallsLogger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Color.kt */
public final class Color implements Parcelable {
    public static final Creator<Color> CREATOR = new Color$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final boolean available;
    private final String color;
    private final int colorInt;
    private final String id;

    /* compiled from: Color.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Color copy$default(Color color, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = color.id;
        }
        if ((i & 2) != 0) {
            str2 = color.color;
        }
        if ((i & 4) != 0) {
            z = color.available;
        }
        return color.copy(str, str2, z);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.color;
    }

    public final boolean component3() {
        return this.available;
    }

    public final Color copy(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "color");
        return new Color(str, str2, z);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Color) {
            Color color = (Color) obj;
            if (Intrinsics.areEqual(this.id, color.id) && Intrinsics.areEqual(this.color, color.color)) {
                if (this.available == color.available) {
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
        String str2 = this.color;
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
        StringBuilder stringBuilder = new StringBuilder("Color(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", color=");
        stringBuilder.append(this.color);
        stringBuilder.append(", available=");
        stringBuilder.append(this.available);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Color(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "color");
        this.id = str;
        this.color = str2;
        this.available = z;
        this.colorInt = MethodCallsLogger.parseColor(this.color);
    }

    public /* synthetic */ Color(String str, String str2, boolean z, int i, Ref ref) {
        if ((i & 2) != null) {
            str2 = str;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        this(str, str2, z);
    }

    public final boolean getAvailable() {
        return this.available;
    }

    public final String getColor() {
        return this.color;
    }

    public final String getId() {
        return this.id;
    }

    public final int getColorInt() {
        return this.colorInt;
    }

    public Color(Parcel parcel) {
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
            parcel.writeString(this.color);
        }
        if (parcel != null) {
            parcel.writeInt(this.available);
        }
    }
}
