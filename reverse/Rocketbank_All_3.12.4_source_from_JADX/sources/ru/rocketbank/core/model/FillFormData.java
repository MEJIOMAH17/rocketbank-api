package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class FillFormData implements Parcelable {
    public static final Creator<FillFormData> CREATOR = new C07881();
    private String url;

    /* renamed from: ru.rocketbank.core.model.FillFormData$1 */
    static class C07881 implements Creator<FillFormData> {
        C07881() {
        }

        public final FillFormData createFromParcel(Parcel parcel) {
            return new FillFormData(parcel);
        }

        public final FillFormData[] newArray(int i) {
            return new FillFormData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
    }

    protected FillFormData(Parcel parcel) {
        this.url = parcel.readString();
    }
}
