package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public final class TransferModel implements Parcelable {
    public static final Creator<TransferModel> CREATOR = new C07981();
    @SerializedName("amount")
    private int amount;
    @SerializedName("email")
    private String email;
    @SerializedName("first_name")
    private String firstName;
    @SerializedName("friend_id")
    private long friendId;
    @SerializedName("last_name")
    private String lastName;
    @SerializedName("mobile_phone")
    private String mobilePhone;
    @SerializedName("type")
    private String type;

    /* renamed from: ru.rocketbank.core.model.TransferModel$1 */
    static class C07981 implements Creator<TransferModel> {
        C07981() {
        }

        public final TransferModel createFromParcel(Parcel parcel) {
            return new TransferModel(parcel);
        }

        public final TransferModel[] newArray(int i) {
            return new TransferModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected TransferModel(Parcel parcel) {
        this.amount = parcel.readInt();
        this.friendId = parcel.readLong();
        this.email = parcel.readString();
        this.firstName = parcel.readString();
        this.lastName = parcel.readString();
        this.mobilePhone = parcel.readString();
        this.type = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.amount);
        parcel.writeLong(this.friendId);
        parcel.writeString(this.email);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.mobilePhone);
        parcel.writeString(this.type);
    }

    public final int getAmount() {
        return this.amount;
    }

    public final long getFriendId() {
        return this.friendId;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final String getMobilePhone() {
        return this.mobilePhone;
    }

    public final String getType() {
        return this.type;
    }
}
