package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AddCardInfo implements Parcelable {
    public static final Creator<AddCardInfo> CREATOR = new C07001();
    public static final String EXTRA_ISSUER_ID = "issuerId";
    public static final String EXTRA_PROVISION_PAYLOAD = "provisionPayload";
    public static final String PROVIDER_AMEX = "AX";
    public static final String PROVIDER_DISCOVER = "DS";
    public static final String PROVIDER_GIFT = "GI";
    public static final String PROVIDER_GTO = "GTO";
    public static final String PROVIDER_LOYALTY = "LO";
    public static final String PROVIDER_MASTERCARD = "MC";
    public static final String PROVIDER_PLCC = "PL";
    public static final String PROVIDER_VISA = "VI";
    private Bundle cardDetail;
    private String cardType;
    private String tokenizationProvider;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo$1 */
    static class C07001 implements Creator<AddCardInfo> {
        C07001() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AddCardInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new AddCardInfo(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void setCardDetail(Bundle bundle) {
        this.cardDetail = bundle;
    }

    public void setTokenizationProvider(String str) {
        this.tokenizationProvider = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public Bundle getCardDetail() {
        return this.cardDetail;
    }

    public String getTokenizationProvider() {
        return this.tokenizationProvider;
    }

    public String getCardType() {
        return this.cardType;
    }

    protected AddCardInfo(Parcel parcel) {
        this.cardType = parcel.readString();
        this.tokenizationProvider = parcel.readString();
        this.cardDetail = parcel.readBundle();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.cardType);
        parcel.writeString(this.tokenizationProvider);
        parcel.writeBundle(this.cardDetail);
    }

    public AddCardInfo(String str, String str2, Bundle bundle) {
        this.cardType = str;
        this.tokenizationProvider = str2;
        this.cardDetail = bundle;
    }
}
