package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class StatusResponseSubData implements Parcelable {
    public static final Creator<StatusResponseSubData> CREATOR = new C07971();
    private String token;
    private UserModel user;

    /* renamed from: ru.rocketbank.core.model.StatusResponseSubData$1 */
    static class C07971 implements Creator<StatusResponseSubData> {
        C07971() {
        }

        public final StatusResponseSubData createFromParcel(Parcel parcel) {
            return new StatusResponseSubData(parcel);
        }

        public final StatusResponseSubData[] newArray(int i) {
            return new StatusResponseSubData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.token);
    }

    protected StatusResponseSubData(Parcel parcel) {
        this.token = parcel.readString();
    }
}
