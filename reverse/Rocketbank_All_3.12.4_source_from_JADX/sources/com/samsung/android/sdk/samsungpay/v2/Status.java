package com.samsung.android.sdk.samsungpay.v2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Status implements Parcelable {
    public static final Creator<Status> CREATOR = new C06991();
    private Bundle mData;
    private int mStatus;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.Status$1 */
    static class C06991 implements Creator<Status> {
        C06991() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new Status[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new Status(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public Status(int i) {
        this.mStatus = i;
    }

    public Status(int i, Bundle bundle) {
        this.mStatus = i;
        this.mData = bundle;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public void setStatus(int i) {
        this.mStatus = i;
    }

    public Bundle getData() {
        return this.mData;
    }

    public void setData(Bundle bundle) {
        this.mData = bundle;
    }

    protected Status(Parcel parcel) {
        readFromParacel(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mStatus);
        parcel.writeBundle(this.mData);
    }

    private void readFromParacel(Parcel parcel) {
        this.mStatus = parcel.readInt();
        this.mData = parcel.readBundle();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Status{mStatus=");
        stringBuilder.append(this.mStatus);
        stringBuilder.append(", mData=");
        stringBuilder.append(this.mData);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
