package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DepositRefillResponse.kt */
public final class DepositRefillResponse {
    private String currency;
    @SerializedName("formatted_rate")
    private String formattedRate;
    private RefillDetail from;
    private double rate;
    private String status = "";
    private String text;
    private RefillDetail to;

    /* compiled from: DepositRefillResponse.kt */
    public static final class RefillDetail {
        private double amount;
        private String currency;
        @SerializedName("formatted_amount")
        private String formattedAmount;

        public final double getAmount() {
            return this.amount;
        }

        public final void setAmount(double d) {
            this.amount = d;
        }

        public final String getCurrency() {
            return this.currency;
        }

        public final void setCurrency(String str) {
            this.currency = str;
        }

        public final String getFormattedAmount() {
            return this.formattedAmount;
        }

        public final void setFormattedAmount(String str) {
            this.formattedAmount = str;
        }
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.status = str;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final RefillDetail getFrom() {
        return this.from;
    }

    public final void setFrom(RefillDetail refillDetail) {
        this.from = refillDetail;
    }

    public final RefillDetail getTo() {
        return this.to;
    }

    public final void setTo(RefillDetail refillDetail) {
        this.to = refillDetail;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final double getRate() {
        return this.rate;
    }

    public final void setRate(double d) {
        this.rate = d;
    }

    public final String getFormattedRate() {
        return this.formattedRate;
    }

    public final void setFormattedRate(String str) {
        this.formattedRate = str;
    }
}
