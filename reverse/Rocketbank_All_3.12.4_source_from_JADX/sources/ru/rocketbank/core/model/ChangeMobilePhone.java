package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.ChangeCheckCard;

public class ChangeMobilePhone extends ChangeCheckCard {
    public static final Creator<ChangeMobilePhone> CREATOR = new C07851();
    @SerializedName("phone_text")
    private String phoneText;

    /* renamed from: ru.rocketbank.core.model.ChangeMobilePhone$1 */
    static class C07851 implements Creator<ChangeMobilePhone> {
        C07851() {
        }

        public final ChangeMobilePhone createFromParcel(Parcel parcel) {
            return new ChangeMobilePhone(parcel);
        }

        public final ChangeMobilePhone[] newArray(int i) {
            return new ChangeMobilePhone[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getPhoneText() {
        return this.phoneText;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.phoneText);
    }

    protected ChangeMobilePhone(Parcel parcel) {
        super(parcel);
        this.phoneText = parcel.readString();
    }
}
