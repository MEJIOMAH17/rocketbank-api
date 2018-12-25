package ru.rocketbank.core.model.transfers.bank;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* compiled from: BankData.kt */
public final class BankData implements Serializable {
    @SerializedName("bank_name")
    private String bankName;
    private final boolean besp;
    private String besp_text1;
    private String besp_text2;
    private String besp_text3;
    private String bik;
    @SerializedName("corr_bank")
    private String corrBank;
    private String logo;

    public final String getCorrBank() {
        return this.corrBank;
    }

    public final void setCorrBank(String str) {
        this.corrBank = str;
    }

    public final String getBankName() {
        return this.bankName;
    }

    public final void setBankName(String str) {
        this.bankName = str;
    }

    public final String getBik() {
        return this.bik;
    }

    public final void setBik(String str) {
        this.bik = str;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final boolean getBesp() {
        return this.besp;
    }

    public final String getBesp_text1() {
        return this.besp_text1;
    }

    public final void setBesp_text1(String str) {
        this.besp_text1 = str;
    }

    public final String getBesp_text2() {
        return this.besp_text2;
    }

    public final void setBesp_text2(String str) {
        this.besp_text2 = str;
    }

    public final String getBesp_text3() {
        return this.besp_text3;
    }

    public final void setBesp_text3(String str) {
        this.besp_text3 = str;
    }
}
