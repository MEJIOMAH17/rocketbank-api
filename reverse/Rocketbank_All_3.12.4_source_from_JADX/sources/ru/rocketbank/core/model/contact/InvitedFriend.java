package ru.rocketbank.core.model.contact;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: InvitedFriend.kt */
public final class InvitedFriend implements Serializable {
    @SerializedName("display_status")
    private String displayStatus;
    @SerializedName("friend_revenue")
    private double friendRevenue;
    private double revenue;
    private String status;
    private ServerContact user;

    public final double getRevenue() {
        return this.revenue;
    }

    public final void setRevenue(double d) {
        this.revenue = d;
    }

    public final double getFriendRevenue() {
        return this.friendRevenue;
    }

    public final void setFriendRevenue(double d) {
        this.friendRevenue = d;
    }

    public final ServerContact getUser() {
        return this.user;
    }

    public final void setUser(ServerContact serverContact) {
        this.user = serverContact;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getDisplayStatus() {
        return this.displayStatus;
    }

    public final void setDisplayStatus(String str) {
        this.displayStatus = str;
    }

    public final boolean contains(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        StringBuilder stringBuilder = new StringBuilder();
        ServerContact serverContact = this.user;
        if (serverContact == null) {
            Intrinsics.throwNpe();
        }
        stringBuilder.append(serverContact.getFirstName());
        serverContact = this.user;
        if (serverContact == null) {
            Intrinsics.throwNpe();
        }
        stringBuilder.append(serverContact.getLastName());
        String stringBuilder2 = stringBuilder.toString();
        if (stringBuilder2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        stringBuilder2 = stringBuilder2.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder2, "(this as java.lang.String).toLowerCase()");
        CharSequence charSequence = stringBuilder2;
        str = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toLowerCase()");
        return StringsKt__StringsKt.contains$default(charSequence, (CharSequence) str, false, 2, null);
    }
}
