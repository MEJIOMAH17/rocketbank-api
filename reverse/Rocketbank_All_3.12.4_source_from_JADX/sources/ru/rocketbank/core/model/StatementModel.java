package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

public final class StatementModel implements Parcelable {
    public static final Creator<StatementModel> CREATOR = new C07961();
    @SerializedName("amount")
    private float amount;
    @SerializedName("balance")
    private float balance;
    @SerializedName("date")
    private long date;
    @SerializedName("description")
    private String description;
    @SerializedName("kind")
    private String kind;

    /* renamed from: ru.rocketbank.core.model.StatementModel$1 */
    static class C07961 implements Creator<StatementModel> {
        C07961() {
        }

        public final StatementModel createFromParcel(Parcel parcel) {
            return new StatementModel(parcel);
        }

        public final StatementModel[] newArray(int i) {
            return new StatementModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected StatementModel(Parcel parcel) {
        this.amount = parcel.readFloat();
        this.balance = parcel.readFloat();
        this.date = parcel.readLong();
        this.kind = parcel.readString();
        this.description = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.amount);
        parcel.writeFloat(this.balance);
        parcel.writeLong(this.date);
        parcel.writeString(this.kind);
        parcel.writeString(this.description);
    }

    public final float getAmount() {
        return this.amount;
    }

    public final float getBalance() {
        return this.balance;
    }

    public final Date getDate() {
        return ModelTools.INSTANCE.formatDate(this.date);
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getDescription() {
        return this.description;
    }
}
