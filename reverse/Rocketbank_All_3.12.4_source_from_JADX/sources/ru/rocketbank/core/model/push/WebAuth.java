package ru.rocketbank.core.model.push;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WebAuth.kt */
public final class WebAuth {
    @SerializedName("auth_id")
    private final String authId;
    @SerializedName("created_at")
    private final int occuredAt;
    private final int ttl;

    public static /* bridge */ /* synthetic */ WebAuth copy$default(WebAuth webAuth, int i, int i2, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = webAuth.ttl;
        }
        if ((i3 & 2) != 0) {
            i2 = webAuth.occuredAt;
        }
        if ((i3 & 4) != 0) {
            str = webAuth.authId;
        }
        return webAuth.copy(i, i2, str);
    }

    public final int component1() {
        return this.ttl;
    }

    public final int component2() {
        return this.occuredAt;
    }

    public final String component3() {
        return this.authId;
    }

    public final WebAuth copy(int i, int i2, String str) {
        Intrinsics.checkParameterIsNotNull(str, "authId");
        return new WebAuth(i, i2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WebAuth) {
            WebAuth webAuth = (WebAuth) obj;
            if (this.ttl == webAuth.ttl) {
                return (this.occuredAt == webAuth.occuredAt) && Intrinsics.areEqual(this.authId, webAuth.authId);
            }
        }
    }

    public final int hashCode() {
        int i = ((this.ttl * 31) + this.occuredAt) * 31;
        String str = this.authId;
        return i + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("WebAuth(ttl=");
        stringBuilder.append(this.ttl);
        stringBuilder.append(", occuredAt=");
        stringBuilder.append(this.occuredAt);
        stringBuilder.append(", authId=");
        stringBuilder.append(this.authId);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public WebAuth(int i, int i2, String str) {
        Intrinsics.checkParameterIsNotNull(str, "authId");
        this.ttl = i;
        this.occuredAt = i2;
        this.authId = str;
    }

    public final int getTtl() {
        return this.ttl;
    }

    public final int getOccuredAt() {
        return this.occuredAt;
    }

    public final String getAuthId() {
        return this.authId;
    }
}
