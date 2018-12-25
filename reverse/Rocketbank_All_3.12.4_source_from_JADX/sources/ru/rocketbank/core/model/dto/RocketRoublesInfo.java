package ru.rocketbank.core.model.dto;

import android.support.v4.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: RocketRublesData.kt */
public final class RocketRoublesInfo {
    @SerializedName("cashback_type")
    private String cashbackType;
    private String text1;
    private String text2;
    private String text3;
    private String text4;
    private String text5;
    private String text6;
    private String text7;
    private String text8;

    public RocketRoublesInfo() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public static /* bridge */ /* synthetic */ RocketRoublesInfo copy$default(RocketRoublesInfo rocketRoublesInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, Object obj) {
        RocketRoublesInfo rocketRoublesInfo2 = rocketRoublesInfo;
        int i2 = i;
        return rocketRoublesInfo2.copy((i2 & 1) != 0 ? rocketRoublesInfo2.text1 : str, (i2 & 2) != 0 ? rocketRoublesInfo2.text2 : str2, (i2 & 4) != 0 ? rocketRoublesInfo2.text3 : str3, (i2 & 8) != 0 ? rocketRoublesInfo2.text4 : str4, (i2 & 16) != 0 ? rocketRoublesInfo2.text5 : str5, (i2 & 32) != 0 ? rocketRoublesInfo2.text6 : str6, (i2 & 64) != 0 ? rocketRoublesInfo2.text7 : str7, (i2 & 128) != 0 ? rocketRoublesInfo2.text8 : str8, (i2 & 256) != 0 ? rocketRoublesInfo2.cashbackType : str9);
    }

    public final String component1() {
        return this.text1;
    }

    public final String component2() {
        return this.text2;
    }

    public final String component3() {
        return this.text3;
    }

    public final String component4() {
        return this.text4;
    }

    public final String component5() {
        return this.text5;
    }

    public final String component6() {
        return this.text6;
    }

    public final String component7() {
        return this.text7;
    }

    public final String component8() {
        return this.text8;
    }

    public final String component9() {
        return this.cashbackType;
    }

    public final RocketRoublesInfo copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        return new RocketRoublesInfo(str, str2, str3, str4, str5, str6, str7, str8, str9);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RocketRoublesInfo) {
                RocketRoublesInfo rocketRoublesInfo = (RocketRoublesInfo) obj;
                if (Intrinsics.areEqual(this.text1, rocketRoublesInfo.text1) && Intrinsics.areEqual(this.text2, rocketRoublesInfo.text2) && Intrinsics.areEqual(this.text3, rocketRoublesInfo.text3) && Intrinsics.areEqual(this.text4, rocketRoublesInfo.text4) && Intrinsics.areEqual(this.text5, rocketRoublesInfo.text5) && Intrinsics.areEqual(this.text6, rocketRoublesInfo.text6) && Intrinsics.areEqual(this.text7, rocketRoublesInfo.text7) && Intrinsics.areEqual(this.text8, rocketRoublesInfo.text8) && Intrinsics.areEqual(this.cashbackType, rocketRoublesInfo.cashbackType)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.text1;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.text2;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text3;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text4;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text5;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text6;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text7;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.text8;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.cashbackType;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("RocketRoublesInfo(text1=");
        stringBuilder.append(this.text1);
        stringBuilder.append(", text2=");
        stringBuilder.append(this.text2);
        stringBuilder.append(", text3=");
        stringBuilder.append(this.text3);
        stringBuilder.append(", text4=");
        stringBuilder.append(this.text4);
        stringBuilder.append(", text5=");
        stringBuilder.append(this.text5);
        stringBuilder.append(", text6=");
        stringBuilder.append(this.text6);
        stringBuilder.append(", text7=");
        stringBuilder.append(this.text7);
        stringBuilder.append(", text8=");
        stringBuilder.append(this.text8);
        stringBuilder.append(", cashbackType=");
        stringBuilder.append(this.cashbackType);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RocketRoublesInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.text1 = str;
        this.text2 = str2;
        this.text3 = str3;
        this.text4 = str4;
        this.text5 = str5;
        this.text6 = str6;
        this.text7 = str7;
        this.text8 = str8;
        this.cashbackType = str9;
    }

    public final String getText1() {
        return this.text1;
    }

    public final void setText1(String str) {
        this.text1 = str;
    }

    public final String getText2() {
        return this.text2;
    }

    public final void setText2(String str) {
        this.text2 = str;
    }

    public final String getText3() {
        return this.text3;
    }

    public final void setText3(String str) {
        this.text3 = str;
    }

    public final String getText4() {
        return this.text4;
    }

    public final void setText4(String str) {
        this.text4 = str;
    }

    public final String getText5() {
        return this.text5;
    }

    public final void setText5(String str) {
        this.text5 = str;
    }

    public final String getText6() {
        return this.text6;
    }

    public final void setText6(String str) {
        this.text6 = str;
    }

    public final String getText7() {
        return this.text7;
    }

    public final void setText7(String str) {
        this.text7 = str;
    }

    public final String getText8() {
        return this.text8;
    }

    public final void setText8(String str) {
        this.text8 = str;
    }

    public /* synthetic */ RocketRoublesInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, Ref ref) {
        int i2 = i;
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9);
    }

    public final String getCashbackType() {
        return this.cashbackType;
    }

    public final void setCashbackType(String str) {
        this.cashbackType = str;
    }
}
