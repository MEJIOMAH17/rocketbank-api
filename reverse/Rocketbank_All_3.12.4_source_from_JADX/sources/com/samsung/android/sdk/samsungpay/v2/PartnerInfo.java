package com.samsung.android.sdk.samsungpay.v2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PartnerInfo implements Parcelable {
    public static final Creator<PartnerInfo> CREATOR = new C06941();
    private Bundle data;
    private String serviceId;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.PartnerInfo$1 */
    static class C06941 implements Creator<PartnerInfo> {
        C06941() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PartnerInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PartnerInfo(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public PartnerInfo(String str) {
        this.serviceId = str;
    }

    public PartnerInfo(String str, Bundle bundle) {
        this.serviceId = str;
        this.data = bundle;
    }

    protected PartnerInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.serviceId = parcel.readString();
        this.data = parcel.readBundle();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.serviceId);
        parcel.writeBundle(this.data);
    }

    @Deprecated
    public String getProductId() {
        return this.serviceId;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public Bundle getData() {
        return this.data;
    }

    public void setData(Bundle bundle) {
        this.data = bundle;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("PartnerInfo{serviceId='");
        stringBuilder.append(this.serviceId);
        stringBuilder.append('\'');
        stringBuilder.append(", data=");
        stringBuilder.append(this.data);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
