package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Deposit.kt */
public final class Deposit implements Parcelable {
    public static final Creator<Deposit> CREATOR = new Deposit$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private String bank;
    @SerializedName("capitalization_available")
    private boolean capitalizationAvailable;
    @SerializedName("capitalization_switch_refill_rate")
    private String capitalizationSwitchRefillRate = "";
    @SerializedName("capitalization_switch_standard_rate")
    private String capitalizationSwitchStandardRate = "";
    @SerializedName("capitalization_switch_texts_card")
    private String capitalizationSwitchTextCard;
    @SerializedName("capitalization_switch_texts_deposit")
    private String capitalizationSwitchTextDeposit;
    @SerializedName("capitalization_switch_text")
    private String capitalizationText = "";
    private String currency;
    @SerializedName("currency_text")
    private String currencyText;
    @SerializedName("min_amount")
    private Double minAmount;
    @SerializedName("min_amount_text")
    private String minAmountText;
    @SerializedName("other_currencies_text")
    private String otherCurrenciesText;
    private int period;
    @SerializedName("period_text")
    private String periodText;
    private String permalink;
    private double rate;
    @SerializedName("refill_rate")
    private Double refillRate;
    @SerializedName("refill_switch_texts_false")
    private String refillSwitchTextFalse;
    @SerializedName("refill_switch_texts_true")
    private String refillSwitchTextTrue;
    @SerializedName("rr_percent_text")
    private String rocketRoubles;
    private String url;

    /* compiled from: Deposit.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getBank() {
        return this.bank;
    }

    public final void setBank(String str) {
        this.bank = str;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final String getCurrencyText() {
        return this.currencyText;
    }

    public final void setCurrencyText(String str) {
        this.currencyText = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final double getRate() {
        return this.rate;
    }

    public final void setRate(double d) {
        this.rate = d;
    }

    public final Double getRefillRate() {
        return this.refillRate;
    }

    public final void setRefillRate(Double d) {
        this.refillRate = d;
    }

    public final String getRocketRoubles() {
        return this.rocketRoubles;
    }

    public final void setRocketRoubles(String str) {
        this.rocketRoubles = str;
    }

    public final int getPeriod() {
        return this.period;
    }

    public final void setPeriod(int i) {
        this.period = i;
    }

    public final boolean getCapitalizationAvailable() {
        return this.capitalizationAvailable;
    }

    public final void setCapitalizationAvailable(boolean z) {
        this.capitalizationAvailable = z;
    }

    public final String getRefillSwitchTextTrue() {
        return this.refillSwitchTextTrue;
    }

    public final void setRefillSwitchTextTrue(String str) {
        this.refillSwitchTextTrue = str;
    }

    public final String getRefillSwitchTextFalse() {
        return this.refillSwitchTextFalse;
    }

    public final void setRefillSwitchTextFalse(String str) {
        this.refillSwitchTextFalse = str;
    }

    public final String getCapitalizationSwitchTextCard() {
        return this.capitalizationSwitchTextCard;
    }

    public final void setCapitalizationSwitchTextCard(String str) {
        this.capitalizationSwitchTextCard = str;
    }

    public final String getCapitalizationSwitchTextDeposit() {
        return this.capitalizationSwitchTextDeposit;
    }

    public final void setCapitalizationSwitchTextDeposit(String str) {
        this.capitalizationSwitchTextDeposit = str;
    }

    public final String getOtherCurrenciesText() {
        return this.otherCurrenciesText;
    }

    public final void setOtherCurrenciesText(String str) {
        this.otherCurrenciesText = str;
    }

    public final String getCapitalizationText() {
        return this.capitalizationText;
    }

    public final void setCapitalizationText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.capitalizationText = str;
    }

    public final String getCapitalizationSwitchStandardRate() {
        return this.capitalizationSwitchStandardRate;
    }

    public final void setCapitalizationSwitchStandardRate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.capitalizationSwitchStandardRate = str;
    }

    public final String getCapitalizationSwitchRefillRate() {
        return this.capitalizationSwitchRefillRate;
    }

    public final void setCapitalizationSwitchRefillRate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.capitalizationSwitchRefillRate = str;
    }

    public final String getPeriodText() {
        return this.periodText;
    }

    public final void setPeriodText(String str) {
        this.periodText = str;
    }

    public final String getPermalink() {
        return this.permalink;
    }

    public final void setPermalink(String str) {
        this.permalink = str;
    }

    public final Double getMinAmount() {
        return this.minAmount;
    }

    public final void setMinAmount(Double d) {
        this.minAmount = d;
    }

    public final String getMinAmountText() {
        return this.minAmountText;
    }

    public final void setMinAmountText(String str) {
        this.minAmountText = str;
    }

    protected Deposit(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.bank = parcel.readString();
        this.currency = parcel.readString();
        this.currencyText = parcel.readString();
        this.url = parcel.readString();
        this.rocketRoubles = parcel.readString();
        this.period = parcel.readInt();
        this.periodText = parcel.readString();
        this.permalink = parcel.readString();
        this.minAmountText = parcel.readString();
        this.minAmount = Double.valueOf(parcel.readDouble());
        this.rate = parcel.readDouble();
        this.refillRate = (Double) parcel.readValue(Double.TYPE.getClassLoader());
        Object readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        this.capitalizationAvailable = ((Boolean) readValue).booleanValue();
        this.refillSwitchTextTrue = (String) parcel.readValue(String.class.getClassLoader());
        this.refillSwitchTextFalse = (String) parcel.readValue(String.class.getClassLoader());
        this.capitalizationSwitchTextCard = (String) parcel.readValue(String.class.getClassLoader());
        this.capitalizationSwitchTextDeposit = (String) parcel.readValue(String.class.getClassLoader());
        this.otherCurrenciesText = (String) parcel.readValue(String.class.getClassLoader());
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.capitalizationText = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.capitalizationSwitchStandardRate = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.capitalizationSwitchRefillRate = parcel;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.bank);
        parcel.writeString(this.currency);
        parcel.writeString(this.currencyText);
        parcel.writeString(this.url);
        parcel.writeString(this.rocketRoubles);
        parcel.writeInt(this.period);
        parcel.writeString(this.periodText);
        parcel.writeString(this.permalink);
        parcel.writeString(this.minAmountText);
        i = this.minAmount;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        parcel.writeDouble(i.doubleValue());
        parcel.writeDouble(this.rate);
        parcel.writeValue(this.refillRate);
        parcel.writeValue(Boolean.valueOf(this.capitalizationAvailable));
        parcel.writeValue(this.refillSwitchTextTrue);
        parcel.writeValue(this.refillSwitchTextFalse);
        parcel.writeValue(this.capitalizationSwitchTextCard);
        parcel.writeValue(this.capitalizationSwitchTextDeposit);
        parcel.writeValue(this.otherCurrenciesText);
        parcel.writeString(this.capitalizationText);
        parcel.writeString(this.capitalizationSwitchStandardRate);
        parcel.writeString(this.capitalizationSwitchRefillRate);
    }
}
