package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class Friend implements Parcelable, Serializable {
    public static final Creator<Friend> CREATOR = new C08101();
    private String email;
    @SerializedName("first_name")
    private String firstName;
    private long id;
    @SerializedName("last_name")
    private String lastName;
    @SerializedName("mobile_phone")
    private String mobilePhone;
    @SerializedName("userpic_url")
    private String userpicUrl;

    /* renamed from: ru.rocketbank.core.model.dto.operations.Friend$1 */
    static class C08101 implements Creator<Friend> {
        C08101() {
        }

        public final Friend createFromParcel(Parcel parcel) {
            return new Friend(parcel);
        }

        public final Friend[] newArray(int i) {
            return new Friend[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected Friend(Parcel parcel) {
        this.id = parcel.readLong();
        this.userpicUrl = parcel.readString();
        this.firstName = parcel.readString();
        this.lastName = parcel.readString();
        this.mobilePhone = parcel.readString();
        this.email = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.userpicUrl);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.mobilePhone);
        parcel.writeString(this.email);
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getUserpicUrl() {
        return this.userpicUrl;
    }

    public void setUserpicUrl(String str) {
        this.userpicUrl = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getMobilePhone() {
        return this.mobilePhone;
    }

    public void setMobilePhone(String str) {
        this.mobilePhone = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getInitials() {
        String str = "";
        if (!(this.firstName == null || this.firstName.isEmpty())) {
            str = this.firstName.substring(0, 1);
        }
        if (!(this.lastName == null || this.lastName.isEmpty())) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(this.lastName.substring(0, 1));
            str = stringBuilder.toString();
        }
        return str.toUpperCase();
    }
}
