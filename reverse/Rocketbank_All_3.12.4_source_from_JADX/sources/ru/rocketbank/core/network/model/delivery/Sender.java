package ru.rocketbank.core.network.model.delivery;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sender.kt */
public final class Sender {
    @SerializedName("avatar_url")
    private final String avatarUrl;
    private final String name;

    public static /* bridge */ /* synthetic */ Sender copy$default(Sender sender, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sender.name;
        }
        if ((i & 2) != 0) {
            str2 = sender.avatarUrl;
        }
        return sender.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.avatarUrl;
    }

    public final Sender copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "avatarUrl");
        return new Sender(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Sender) {
                Sender sender = (Sender) obj;
                if (Intrinsics.areEqual(this.name, sender.name) && Intrinsics.areEqual(this.avatarUrl, sender.avatarUrl)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.avatarUrl;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Sender(name=");
        stringBuilder.append(this.name);
        stringBuilder.append(", avatarUrl=");
        stringBuilder.append(this.avatarUrl);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Sender(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "avatarUrl");
        this.name = str;
        this.avatarUrl = str2;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }
}
