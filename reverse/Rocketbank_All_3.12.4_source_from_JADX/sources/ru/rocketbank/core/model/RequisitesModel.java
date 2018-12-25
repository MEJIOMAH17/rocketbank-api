package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequisitesModel.kt */
public final class RequisitesModel implements Parcelable {
    public static final Creator<RequisitesModel> CREATOR = new RequisitesModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    @SerializedName("account")
    private String account;
    @SerializedName("bank_name")
    private String bankName;
    @SerializedName("bic")
    private String bic;
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

    /* compiled from: RequisitesModel.kt */
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

    public final String getBic() {
        return this.bic;
    }

    public final void setBic(String str) {
        this.bic = str;
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

    protected RequisitesModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.account = parcel.readString();
        this.bic = parcel.readString();
        this.goal = parcel.readString();
        this.inn = parcel.readString();
        this.kpp = parcel.readString();
        this.ks = parcel.readString();
        this.owner = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.account);
        parcel.writeString(this.bic);
        parcel.writeString(this.goal);
        parcel.writeString(this.inn);
        parcel.writeString(this.kpp);
        parcel.writeString(this.ks);
        parcel.writeString(this.owner);
    }
}
