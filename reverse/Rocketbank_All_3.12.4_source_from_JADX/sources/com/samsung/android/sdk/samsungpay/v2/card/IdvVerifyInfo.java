package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class IdvVerifyInfo implements Parcelable {
    public static final Creator<IdvVerifyInfo> CREATOR = new C07041();
    private String mCardId;
    private Bundle mCardInfoData;
    private String mCode;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.card.IdvVerifyInfo$1 */
    static class C07041 implements Creator<IdvVerifyInfo> {
        C07041() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new IdvVerifyInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new IdvVerifyInfo(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public IdvVerifyInfo(String str, String str2, Bundle bundle) {
        this.mCardId = str;
        this.mCode = str2;
        this.mCardInfoData = bundle;
    }

    public String getCardId() {
        return this.mCardId;
    }

    public void setCardId(String str) {
        this.mCardId = str;
    }

    public String getCode() {
        return this.mCode;
    }

    public void setCode(String str) {
        this.mCode = str;
    }

    public Bundle getCardInfoData() {
        return this.mCardInfoData;
    }

    public void setCardInfoData(Bundle bundle) {
        this.mCardInfoData = bundle;
    }

    private IdvVerifyInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.mCardId = parcel.readString();
        this.mCode = parcel.readString();
        this.mCardInfoData = parcel.readBundle();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mCardId);
        parcel.writeString(this.mCode);
        parcel.writeBundle(this.mCardInfoData);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("IdvVerifyInfo{mCardId='");
        stringBuilder.append(this.mCardId);
        stringBuilder.append('\'');
        stringBuilder.append(", mCode='");
        stringBuilder.append(this.mCode);
        stringBuilder.append('\'');
        stringBuilder.append(", mCardInfoData=");
        stringBuilder.append(this.mCardInfoData);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
