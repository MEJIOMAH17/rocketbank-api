package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class Miles implements Parcelable, Serializable {
    public static final Creator<Miles> CREATOR = new C08111();
    public static final String STATUS_COMPLETED = "completed";
    public static final String STATUS_CONFIRMED = "confirmed";
    private float amount;
    @SerializedName("enough_miles")
    private boolean enoughMiles;
    private String status;

    /* renamed from: ru.rocketbank.core.model.dto.operations.Miles$1 */
    static class C08111 implements Creator<Miles> {
        C08111() {
        }

        public final Miles createFromParcel(Parcel parcel) {
            return new Miles(parcel);
        }

        public final Miles[] newArray(int i) {
            return new Miles[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected Miles(Parcel parcel) {
        this.amount = parcel.readFloat();
        this.enoughMiles = parcel.readByte() != (byte) 0;
        this.status = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.amount);
        parcel.writeByte((byte) this.enoughMiles);
        parcel.writeString(this.status);
    }

    public float getAmount() {
        return this.amount;
    }

    public void setAmount(float f) {
        this.amount = f;
    }

    public boolean isEnoughMiles() {
        return this.enoughMiles;
    }

    public void setEnoughMiles(boolean z) {
        this.enoughMiles = z;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }
}
