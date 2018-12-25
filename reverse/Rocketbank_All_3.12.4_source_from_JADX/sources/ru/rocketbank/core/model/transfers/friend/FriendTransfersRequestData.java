package ru.rocketbank.core.model.transfers.friend;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.utils.Payments;

public class FriendTransfersRequestData implements Parcelable {
    public static final Creator<FriendTransfersRequestData> CREATOR = new C08281();
    private double amount;
    private String comment;
    private FriendTransfersContact contact;
    @SerializedName("app_uniq_timestamp_hash")
    private String hash = Payments.INSTANCE.newHash();
    @SerializedName("card_token")
    private String token;
    @SerializedName("user_id")
    private Long userId;

    /* renamed from: ru.rocketbank.core.model.transfers.friend.FriendTransfersRequestData$1 */
    static class C08281 implements Creator<FriendTransfersRequestData> {
        C08281() {
        }

        public final FriendTransfersRequestData createFromParcel(Parcel parcel) {
            return new FriendTransfersRequestData(parcel);
        }

        public final FriendTransfersRequestData[] newArray(int i) {
            return new FriendTransfersRequestData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public FriendTransfersRequestData(Contact contact, double d, String str, String str2) {
        this.amount = d;
        this.comment = str;
        this.token = str2;
        if (contact.isRocket() == null) {
            this.userId = null;
            this.contact = new FriendTransfersContact(contact.getFirstName(), contact.getLastName(), contact.getPhones(), contact.getEmails());
            return;
        }
        this.userId = Long.valueOf(contact.getId());
        this.contact = null;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public boolean isRocket() {
        return this.userId != null;
    }

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(double d) {
        this.amount = d;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public FriendTransfersContact getContact() {
        return this.contact;
    }

    public void setContact(FriendTransfersContact friendTransfersContact) {
        this.contact = friendTransfersContact;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.token);
        parcel.writeValue(this.userId);
        parcel.writeDouble(this.amount);
        parcel.writeString(this.comment);
        parcel.writeParcelable(this.contact, i);
        parcel.writeString(this.hash);
    }

    protected FriendTransfersRequestData(Parcel parcel) {
        this.token = parcel.readString();
        this.userId = (Long) parcel.readValue(Long.class.getClassLoader());
        this.amount = parcel.readDouble();
        this.comment = parcel.readString();
        this.contact = (FriendTransfersContact) parcel.readParcelable(FriendTransfersContact.class.getClassLoader());
        this.hash = parcel.readString();
    }
}
