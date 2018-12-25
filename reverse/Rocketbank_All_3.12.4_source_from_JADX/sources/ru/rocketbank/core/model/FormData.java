package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class FormData implements Parcelable {
    public static final Creator<FormData> CREATOR = new C07891();

    /* renamed from: ru.rocketbank.core.model.FormData$1 */
    static class C07891 implements Creator<FormData> {
        C07891() {
        }

        public final FormData createFromParcel(Parcel parcel) {
            return new FormData(parcel);
        }

        public final FormData[] newArray(int i) {
            return new FormData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }

    protected FormData(Parcel parcel) {
    }
}
