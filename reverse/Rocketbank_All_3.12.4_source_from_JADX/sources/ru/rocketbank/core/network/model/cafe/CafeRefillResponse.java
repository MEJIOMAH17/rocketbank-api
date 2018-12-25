package ru.rocketbank.core.network.model.cafe;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CafeRefillResponse.kt */
public final class CafeRefillResponse {
    private final String code;
    private final String description;
    @SerializedName("show_it")
    private final boolean showIt;
    private final int status;

    public static /* bridge */ /* synthetic */ CafeRefillResponse copy$default(CafeRefillResponse cafeRefillResponse, int i, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cafeRefillResponse.status;
        }
        if ((i2 & 2) != 0) {
            str = cafeRefillResponse.description;
        }
        if ((i2 & 4) != 0) {
            str2 = cafeRefillResponse.code;
        }
        if ((i2 & 8) != 0) {
            z = cafeRefillResponse.showIt;
        }
        return cafeRefillResponse.copy(i, str, str2, z);
    }

    public final int component1() {
        return this.status;
    }

    public final String component2() {
        return this.description;
    }

    public final String component3() {
        return this.code;
    }

    public final boolean component4() {
        return this.showIt;
    }

    public final CafeRefillResponse copy(int i, String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "description");
        Intrinsics.checkParameterIsNotNull(str2, "code");
        return new CafeRefillResponse(i, str, str2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CafeRefillResponse) {
            CafeRefillResponse cafeRefillResponse = (CafeRefillResponse) obj;
            if ((this.status == cafeRefillResponse.status) && Intrinsics.areEqual(this.description, cafeRefillResponse.description) && Intrinsics.areEqual(this.code, cafeRefillResponse.code)) {
                if (this.showIt == cafeRefillResponse.showIt) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.status * 31;
        String str = this.description;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.code;
        if (str != null) {
            i2 = str.hashCode();
        }
        i = (i + i2) * 31;
        int i3 = this.showIt;
        if (i3 != 0) {
            i3 = 1;
        }
        return i + i3;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CafeRefillResponse(status=");
        stringBuilder.append(this.status);
        stringBuilder.append(", description=");
        stringBuilder.append(this.description);
        stringBuilder.append(", code=");
        stringBuilder.append(this.code);
        stringBuilder.append(", showIt=");
        stringBuilder.append(this.showIt);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CafeRefillResponse(int i, String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "description");
        Intrinsics.checkParameterIsNotNull(str2, "code");
        this.status = i;
        this.description = str;
        this.code = str2;
        this.showIt = z;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getCode() {
        return this.code;
    }

    public final boolean getShowIt() {
        return this.showIt;
    }
}
