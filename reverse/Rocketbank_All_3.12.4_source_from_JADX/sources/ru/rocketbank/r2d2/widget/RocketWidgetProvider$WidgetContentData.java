package ru.rocketbank.r2d2.widget;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketWidgetProvider.kt */
public final class RocketWidgetProvider$WidgetContentData {
    private final String balance;
    private String miles;
    private Drawable operatorDrawable;
    private String operatorText;

    public static /* bridge */ /* synthetic */ RocketWidgetProvider$WidgetContentData copy$default(RocketWidgetProvider$WidgetContentData rocketWidgetProvider$WidgetContentData, String str, String str2, String str3, Drawable drawable, int i, Object obj) {
        if ((i & 1) != 0) {
            str = rocketWidgetProvider$WidgetContentData.balance;
        }
        if ((i & 2) != 0) {
            str2 = rocketWidgetProvider$WidgetContentData.miles;
        }
        if ((i & 4) != 0) {
            str3 = rocketWidgetProvider$WidgetContentData.operatorText;
        }
        if ((i & 8) != 0) {
            drawable = rocketWidgetProvider$WidgetContentData.operatorDrawable;
        }
        return rocketWidgetProvider$WidgetContentData.copy(str, str2, str3, drawable);
    }

    public final String component1() {
        return this.balance;
    }

    public final String component2() {
        return this.miles;
    }

    public final String component3() {
        return this.operatorText;
    }

    public final Drawable component4() {
        return this.operatorDrawable;
    }

    public final RocketWidgetProvider$WidgetContentData copy(String str, String str2, String str3, Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(str, "balance");
        Intrinsics.checkParameterIsNotNull(str2, "miles");
        Intrinsics.checkParameterIsNotNull(str3, "operatorText");
        return new RocketWidgetProvider$WidgetContentData(str, str2, str3, drawable);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RocketWidgetProvider$WidgetContentData) {
                RocketWidgetProvider$WidgetContentData rocketWidgetProvider$WidgetContentData = (RocketWidgetProvider$WidgetContentData) obj;
                if (Intrinsics.areEqual(this.balance, rocketWidgetProvider$WidgetContentData.balance) && Intrinsics.areEqual(this.miles, rocketWidgetProvider$WidgetContentData.miles) && Intrinsics.areEqual(this.operatorText, rocketWidgetProvider$WidgetContentData.operatorText) && Intrinsics.areEqual(this.operatorDrawable, rocketWidgetProvider$WidgetContentData.operatorDrawable)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.balance;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.miles;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.operatorText;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Drawable drawable = this.operatorDrawable;
        if (drawable != null) {
            i = drawable.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("WidgetContentData(balance=");
        stringBuilder.append(this.balance);
        stringBuilder.append(", miles=");
        stringBuilder.append(this.miles);
        stringBuilder.append(", operatorText=");
        stringBuilder.append(this.operatorText);
        stringBuilder.append(", operatorDrawable=");
        stringBuilder.append(this.operatorDrawable);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RocketWidgetProvider$WidgetContentData(String str, String str2, String str3, Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(str, "balance");
        Intrinsics.checkParameterIsNotNull(str2, "miles");
        Intrinsics.checkParameterIsNotNull(str3, "operatorText");
        this.balance = str;
        this.miles = str2;
        this.operatorText = str3;
        this.operatorDrawable = drawable;
    }

    public final String getBalance() {
        return this.balance;
    }

    public final String getMiles() {
        return this.miles;
    }

    public final void setMiles(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.miles = str;
    }

    public final String getOperatorText() {
        return this.operatorText;
    }

    public final void setOperatorText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.operatorText = str;
    }

    public final Drawable getOperatorDrawable() {
        return this.operatorDrawable;
    }

    public final void setOperatorDrawable(Drawable drawable) {
        this.operatorDrawable = drawable;
    }
}
