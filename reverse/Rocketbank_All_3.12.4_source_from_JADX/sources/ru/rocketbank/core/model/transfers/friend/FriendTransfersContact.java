package ru.rocketbank.core.model.transfers.friend;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class FriendTransfersContact implements Parcelable {
    public static final Creator<FriendTransfersContact> CREATOR = new C08271();
    @SerializedName("Email")
    private List<String> email;
    @SerializedName("First")
    private String first;
    @SerializedName("Last")
    private String last;
    @SerializedName("Phone")
    private List<String> phone;

    /* renamed from: ru.rocketbank.core.model.transfers.friend.FriendTransfersContact$1 */
    static class C08271 implements Creator<FriendTransfersContact> {
        C08271() {
        }

        public final FriendTransfersContact createFromParcel(Parcel parcel) {
            return new FriendTransfersContact(parcel);
        }

        public final FriendTransfersContact[] newArray(int i) {
            return new FriendTransfersContact[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public FriendTransfersContact(String str, String str2, List<String> list, List<String> list2) {
        this.first = str;
        this.last = str2;
        this.phone = list;
        this.email = list2;
    }

    public String getFirst() {
        return this.first;
    }

    public void setFirst(String str) {
        this.first = str;
    }

    public String getLast() {
        return this.last;
    }

    public void setLast(String str) {
        this.last = str;
    }

    public List<String> getPhone() {
        return this.phone;
    }

    public void setPhone(List<String> list) {
        this.phone = list;
    }

    public List<String> getEmail() {
        return this.email;
    }

    public void setEmail(List<String> list) {
        this.email = list;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.first);
        parcel.writeString(this.last);
        parcel.writeStringList(this.phone);
        parcel.writeStringList(this.email);
    }

    protected FriendTransfersContact(Parcel parcel) {
        this.first = parcel.readString();
        this.last = parcel.readString();
        this.phone = parcel.createStringArrayList();
        this.email = parcel.createStringArrayList();
    }
}
