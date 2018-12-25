package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public final class UsernameModel implements Parcelable {
    public static final Creator<UsernameModel> CREATOR = new C08021();
    @SerializedName("value")
    private String value;
    @SerializedName("works")
    private boolean works;

    /* renamed from: ru.rocketbank.core.model.UsernameModel$1 */
    static class C08021 implements Creator<UsernameModel> {
        C08021() {
        }

        public final UsernameModel createFromParcel(Parcel parcel) {
            return new UsernameModel(parcel);
        }

        public final UsernameModel[] newArray(int i) {
            return new UsernameModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected UsernameModel(Parcel parcel) {
        this.works = parcel.readByte() != (byte) 0;
        this.value = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) this.works);
        parcel.writeString(this.value);
    }

    public final boolean isWorks() {
        return this.works;
    }

    public final void setWorks(boolean z) {
        this.works = z;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        this.value = str;
    }
}
