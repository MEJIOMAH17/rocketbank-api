package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AccountDetailsModel.kt */
public final class AccountDetailsModel implements Parcelable {
    public static final Creator<AccountDetailsModel> CREATOR = new AccountDetailsModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("account")
    private String account;
    @SerializedName("bank_name")
    private String bankName;
    @SerializedName("benef_bank")
    private String benefBank;
    @SerializedName("benef_bank_address")
    private String benefBankAddress;
    @SerializedName("benef_swift")
    private String benefSwift;
    @SerializedName("bic")
    private String bic;
    @SerializedName("corr")
    private String corr;
    @SerializedName("corr_swift")
    private String corrSwift;
    @SerializedName("goal")
    private String goal;
    @SerializedName("inn")
    private String inn;
    @SerializedName("kpp")
    private String kpp;
    @SerializedName("ks")
    private String ks;
    @SerializedName("owner")
    private String owner;

    /* compiled from: AccountDetailsModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getBankName() {
        return this.bankName;
    }

    public final void setBankName(String str) {
        this.bankName = str;
    }

    public final String getAccount() {
        return this.account;
    }

    public final void setAccount(String str) {
        this.account = str;
    }

    public final String getBenefBank() {
        return this.benefBank;
    }

    public final void setBenefBank(String str) {
        this.benefBank = str;
    }

    public final String getBenefBankAddress() {
        return this.benefBankAddress;
    }

    public final void setBenefBankAddress(String str) {
        this.benefBankAddress = str;
    }

    public final String getBenefSwift() {
        return this.benefSwift;
    }

    public final void setBenefSwift(String str) {
        this.benefSwift = str;
    }

    public final String getBic() {
        return this.bic;
    }

    public final void setBic(String str) {
        this.bic = str;
    }

    public final String getCorr() {
        return this.corr;
    }

    public final void setCorr(String str) {
        this.corr = str;
    }

    public final String getCorrSwift() {
        return this.corrSwift;
    }

    public final void setCorrSwift(String str) {
        this.corrSwift = str;
    }

    public final String getGoal() {
        return this.goal;
    }

    public final void setGoal(String str) {
        this.goal = str;
    }

    public final String getInn() {
        return this.inn;
    }

    public final void setInn(String str) {
        this.inn = str;
    }

    public final String getKpp() {
        return this.kpp;
    }

    public final void setKpp(String str) {
        this.kpp = str;
    }

    public final String getKs() {
        return this.ks;
    }

    public final void setKs(String str) {
        this.ks = str;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final void setOwner(String str) {
        this.owner = str;
    }

    protected AccountDetailsModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.bankName = parcel.readString();
        this.account = parcel.readString();
        this.benefBank = parcel.readString();
        this.benefBankAddress = parcel.readString();
        this.benefSwift = parcel.readString();
        this.bic = parcel.readString();
        this.corr = parcel.readString();
        this.corrSwift = parcel.readString();
        this.goal = parcel.readString();
        this.inn = parcel.readString();
        this.kpp = parcel.readString();
        this.ks = parcel.readString();
        this.owner = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.bankName);
        parcel.writeString(this.account);
        parcel.writeString(this.benefBank);
        parcel.writeString(this.benefBankAddress);
        parcel.writeString(this.benefSwift);
        parcel.writeString(this.bic);
        parcel.writeString(this.corr);
        parcel.writeString(this.corrSwift);
        parcel.writeString(this.goal);
        parcel.writeString(this.inn);
        parcel.writeString(this.kpp);
        parcel.writeString(this.ks);
        parcel.writeString(this.owner);
    }
}
