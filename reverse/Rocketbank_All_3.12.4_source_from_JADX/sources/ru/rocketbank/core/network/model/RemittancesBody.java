package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: RemittancesBody.kt */
public final class RemittancesBody {
    private String account;
    private double amount;
    private String bik;
    private boolean nds;
    private String purpose;
    @SerializedName("recipient_name")
    private String recipientName;

    public final String getBik() {
        return this.bik;
    }

    public final void setBik(String str) {
        this.bik = str;
    }

    public final boolean getNds() {
        return this.nds;
    }

    public final void setNds(boolean z) {
        this.nds = z;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final void setAmount(double d) {
        this.amount = d;
    }

    public final String getAccount() {
        return this.account;
    }

    public final void setAccount(String str) {
        this.account = str;
    }

    public final String getRecipientName() {
        return this.recipientName;
    }

    public final void setRecipientName(String str) {
        this.recipientName = str;
    }

    public final String getPurpose() {
        return this.purpose;
    }

    public final void setPurpose(String str) {
        this.purpose = str;
    }
}
