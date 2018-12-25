package ru.rocketbank.r2d2.root.card.binding;

import java.util.ArrayList;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Limit;

/* compiled from: DetailCardViewInputModel.kt */
public final class CardParameters {
    private final boolean isLocked;
    private Map<String, ? extends ArrayList<Limit>> limits;
    private final int lockStatusColor;
    private final String lockStatusName;
    private final String notificationName;
    private final String plasticToken;
    private final String tariffName;
    private boolean unlimitedCashouts;

    public static /* bridge */ /* synthetic */ CardParameters copy$default(CardParameters cardParameters, String str, String str2, String str3, int i, boolean z, String str4, Map map, boolean z2, int i2, Object obj) {
        CardParameters cardParameters2 = cardParameters;
        int i3 = i2;
        return cardParameters2.copy((i3 & 1) != 0 ? cardParameters2.tariffName : str, (i3 & 2) != 0 ? cardParameters2.notificationName : str2, (i3 & 4) != 0 ? cardParameters2.lockStatusName : str3, (i3 & 8) != 0 ? cardParameters2.lockStatusColor : i, (i3 & 16) != 0 ? cardParameters2.isLocked : z, (i3 & 32) != 0 ? cardParameters2.plasticToken : str4, (i3 & 64) != 0 ? cardParameters2.limits : map, (i3 & 128) != 0 ? cardParameters2.unlimitedCashouts : z2);
    }

    public final String component1() {
        return this.tariffName;
    }

    public final String component2() {
        return this.notificationName;
    }

    public final String component3() {
        return this.lockStatusName;
    }

    public final int component4() {
        return this.lockStatusColor;
    }

    public final boolean component5() {
        return this.isLocked;
    }

    public final String component6() {
        return this.plasticToken;
    }

    public final Map<String, ArrayList<Limit>> component7() {
        return this.limits;
    }

    public final boolean component8() {
        return this.unlimitedCashouts;
    }

    public final CardParameters copy(String str, String str2, String str3, int i, boolean z, String str4, Map<String, ? extends ArrayList<Limit>> map, boolean z2) {
        String str5 = str;
        Intrinsics.checkParameterIsNotNull(str5, "tariffName");
        String str6 = str2;
        Intrinsics.checkParameterIsNotNull(str6, "notificationName");
        String str7 = str3;
        Intrinsics.checkParameterIsNotNull(str7, "lockStatusName");
        Map<String, ? extends ArrayList<Limit>> map2 = map;
        Intrinsics.checkParameterIsNotNull(map2, "limits");
        return new CardParameters(str5, str6, str7, i, z, str4, map2, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CardParameters) {
            CardParameters cardParameters = (CardParameters) obj;
            if (Intrinsics.areEqual(this.tariffName, cardParameters.tariffName) && Intrinsics.areEqual(this.notificationName, cardParameters.notificationName) && Intrinsics.areEqual(this.lockStatusName, cardParameters.lockStatusName)) {
                if (this.lockStatusColor == cardParameters.lockStatusColor) {
                    if ((this.isLocked == cardParameters.isLocked) && Intrinsics.areEqual(this.plasticToken, cardParameters.plasticToken) && Intrinsics.areEqual(this.limits, cardParameters.limits)) {
                        if (this.unlimitedCashouts == cardParameters.unlimitedCashouts) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.tariffName;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.notificationName;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.lockStatusName;
        hashCode = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.lockStatusColor) * 31;
        int i2 = this.isLocked;
        if (i2 != 0) {
            i2 = 1;
        }
        hashCode = (hashCode + i2) * 31;
        str2 = this.plasticToken;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map map = this.limits;
        if (map != null) {
            i = map.hashCode();
        }
        hashCode = (hashCode + i) * 31;
        i = this.unlimitedCashouts;
        if (i != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CardParameters(tariffName=");
        stringBuilder.append(this.tariffName);
        stringBuilder.append(", notificationName=");
        stringBuilder.append(this.notificationName);
        stringBuilder.append(", lockStatusName=");
        stringBuilder.append(this.lockStatusName);
        stringBuilder.append(", lockStatusColor=");
        stringBuilder.append(this.lockStatusColor);
        stringBuilder.append(", isLocked=");
        stringBuilder.append(this.isLocked);
        stringBuilder.append(", plasticToken=");
        stringBuilder.append(this.plasticToken);
        stringBuilder.append(", limits=");
        stringBuilder.append(this.limits);
        stringBuilder.append(", unlimitedCashouts=");
        stringBuilder.append(this.unlimitedCashouts);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CardParameters(String str, String str2, String str3, int i, boolean z, String str4, Map<String, ? extends ArrayList<Limit>> map, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, "tariffName");
        Intrinsics.checkParameterIsNotNull(str2, "notificationName");
        Intrinsics.checkParameterIsNotNull(str3, "lockStatusName");
        Intrinsics.checkParameterIsNotNull(map, "limits");
        this.tariffName = str;
        this.notificationName = str2;
        this.lockStatusName = str3;
        this.lockStatusColor = i;
        this.isLocked = z;
        this.plasticToken = str4;
        this.limits = map;
        this.unlimitedCashouts = z2;
    }

    public final String getTariffName() {
        return this.tariffName;
    }

    public final String getNotificationName() {
        return this.notificationName;
    }

    public final String getLockStatusName() {
        return this.lockStatusName;
    }

    public final int getLockStatusColor() {
        return this.lockStatusColor;
    }

    public final boolean isLocked() {
        return this.isLocked;
    }

    public final String getPlasticToken() {
        return this.plasticToken;
    }

    public final Map<String, ArrayList<Limit>> getLimits() {
        return this.limits;
    }

    public final void setLimits(Map<String, ? extends ArrayList<Limit>> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.limits = map;
    }

    public final boolean getUnlimitedCashouts() {
        return this.unlimitedCashouts;
    }

    public final void setUnlimitedCashouts(boolean z) {
        this.unlimitedCashouts = z;
    }
}
