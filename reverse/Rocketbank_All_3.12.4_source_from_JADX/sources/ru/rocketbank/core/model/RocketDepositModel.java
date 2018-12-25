package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RocketDepositModel.kt */
public final class RocketDepositModel implements Parcelable {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RocketDepositModel.class), "colorValue", "getColorValue()I"))};
    public static final Creator<RocketDepositModel> CREATOR = new RocketDepositModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    @SerializedName("bank")
    private String bank;
    @SerializedName("capitalization")
    private boolean capitalization;
    @SerializedName("color")
    private String colorString;
    private final Lazy colorValue$delegate = ExceptionsKt__ExceptionsKt.lazy(new RocketDepositModel$colorValue$2(this));
    private String currency;
    @SerializedName("icon")
    private String icon;
    @SerializedName("image_url")
    private String imageUrl;
    @SerializedName("max_amount")
    private float maxAmount;
    @SerializedName("min_amount")
    private float minAmount;
    @SerializedName("need_agent")
    private boolean needAgent;
    private Double percent;
    private int period;
    @SerializedName("period_text")
    private String periodText;
    @SerializedName("periods")
    private List<Integer> periods;
    @SerializedName("permalink")
    private String permalink;
    @SerializedName("rate")
    private float rate;
    @SerializedName("refill")
    private boolean refill;
    @SerializedName("refill_min_limit")
    private float refillMinLimit;
    @SerializedName("refill_rate")
    private float rrRate;
    @SerializedName("small_image_url")
    private String smallImageUrl;
    @SerializedName("url")
    private String url;

    /* compiled from: RocketDepositModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getColorValue() {
        return ((Number) this.colorValue$delegate.getValue()).intValue();
    }

    public final boolean getCapitalization() {
        return this.capitalization;
    }

    public final void setCapitalization(boolean z) {
        this.capitalization = z;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final boolean getNeedAgent() {
        return this.needAgent;
    }

    public final void setNeedAgent(boolean z) {
        this.needAgent = z;
    }

    public final boolean getRefill() {
        return this.refill;
    }

    public final void setRefill(boolean z) {
        this.refill = z;
    }

    public final float getMaxAmount() {
        return this.maxAmount;
    }

    public final void setMaxAmount(float f) {
        this.maxAmount = f;
    }

    public final float getMinAmount() {
        return this.minAmount;
    }

    public final void setMinAmount(float f) {
        this.minAmount = f;
    }

    public final float getRate() {
        return this.rate;
    }

    public final void setRate(float f) {
        this.rate = f;
    }

    public final int getPeriod() {
        return this.period;
    }

    public final void setPeriod(int i) {
        this.period = i;
    }

    public final String getPeriodText() {
        return this.periodText;
    }

    public final void setPeriodText(String str) {
        this.periodText = str;
    }

    public final float getRefillMinLimit() {
        return this.refillMinLimit;
    }

    public final void setRefillMinLimit(float f) {
        this.refillMinLimit = f;
    }

    public final float getRrRate() {
        return this.rrRate;
    }

    public final void setRrRate(float f) {
        this.rrRate = f;
    }

    public final Double getPercent() {
        return this.percent;
    }

    public final void setPercent(Double d) {
        this.percent = d;
    }

    public final List<Integer> getPeriods() {
        return this.periods;
    }

    public final void setPeriods(List<Integer> list) {
        this.periods = list;
    }

    public final String getBank() {
        return this.bank;
    }

    public final void setBank(String str) {
        this.bank = str;
    }

    public final String getColorString() {
        return this.colorString;
    }

    public final void setColorString(String str) {
        this.colorString = str;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final void setIcon(String str) {
        this.icon = str;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public final String getPermalink() {
        return this.permalink;
    }

    public final void setPermalink(String str) {
        this.permalink = str;
    }

    public final String getSmallImageUrl() {
        return this.smallImageUrl;
    }

    public final void setSmallImageUrl(String str) {
        this.smallImageUrl = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    protected RocketDepositModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        boolean z = false;
        this.capitalization = parcel.readByte() != (byte) 0;
        this.needAgent = parcel.readByte() != (byte) 0;
        if (parcel.readByte() != (byte) 0) {
            z = true;
        }
        this.refill = z;
        this.maxAmount = parcel.readFloat();
        this.minAmount = parcel.readFloat();
        this.rate = parcel.readFloat();
        this.refillMinLimit = parcel.readFloat();
        this.rrRate = parcel.readFloat();
        this.bank = parcel.readString();
        this.colorString = parcel.readString();
        this.icon = parcel.readString();
        this.imageUrl = parcel.readString();
        this.permalink = parcel.readString();
        this.smallImageUrl = parcel.readString();
        this.url = parcel.readString();
        this.percent = (Double) parcel.readValue(Double.TYPE.getClassLoader());
        this.currency = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeByte((byte) this.capitalization);
        parcel.writeByte((byte) this.needAgent);
        parcel.writeByte((byte) this.refill);
        parcel.writeFloat(this.maxAmount);
        parcel.writeFloat(this.minAmount);
        parcel.writeFloat(this.rate);
        parcel.writeFloat(this.refillMinLimit);
        parcel.writeFloat(this.rrRate);
        parcel.writeString(this.bank);
        parcel.writeString(this.colorString);
        parcel.writeString(this.icon);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.permalink);
        parcel.writeString(this.smallImageUrl);
        parcel.writeString(this.url);
        parcel.writeValue(this.percent);
        parcel.writeString(this.currency);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof RocketDepositModel ? Intrinsics.areEqual(((RocketDepositModel) obj).permalink, this.permalink) : null;
    }

    public final int hashCode() {
        if (this.permalink == null) {
            return 0;
        }
        String str = this.permalink;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        return str.hashCode();
    }

    public final int parseColor() {
        ModelTools modelTools = ModelTools.INSTANCE;
        String str = this.colorString;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        return modelTools.formatColor(str);
    }
}
