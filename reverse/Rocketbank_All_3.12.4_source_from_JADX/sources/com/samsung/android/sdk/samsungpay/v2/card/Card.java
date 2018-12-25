package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.Brand;

public class Card implements Parcelable {
    public static final String ACTIVE = "ACTIVE";
    public static final String CARD_TYPE = "CARD_TYPE";
    public static final String CARD_TYPE_CREDIT = "CREDIT";
    public static final String CARD_TYPE_CREDIT_DEBIT = "PAYMENT";
    public static final String CARD_TYPE_DEBIT = "DEBIT";
    public static final String CARD_TYPE_GIFT = "GIFT";
    public static final String CARD_TYPE_LOYALTY = "LOYALTY";
    public static final String CARD_TYPE_TRANSIT = "TRANSIT";
    public static final Creator<Card> CREATOR = new C07011();
    public static final String DISPOSED = "DISPOSED";
    public static final String EXPIRED = "EXPIRED";
    public static final String PENDING_ENROLLED = "ENROLLED";
    public static final String PENDING_PROVISION = "PENDING_PROVISION";
    public static final String SUSPENDED = "SUSPENDED";
    private Brand cardBrand;
    private String cardId;
    private Bundle cardInfo;
    private String cardStatus;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.card.Card$1 */
    static class C07011 implements Creator<Card> {
        C07011() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new Card[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Brand brand = (Brand) parcel.readValue(Brand.class.getClassLoader());
            parcel = parcel.readBundle();
            if (parcel == null) {
                parcel = new Bundle();
            }
            if (TextUtils.equals(Card.CARD_TYPE_TRANSIT, parcel.getString(Card.CARD_TYPE))) {
                return new TransitCard(readString, readString2, brand, parcel);
            }
            return new Card(readString, readString2, brand, parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    private Card(Parcel parcel) {
        this();
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.cardId = parcel.readString();
        this.cardStatus = parcel.readString();
        this.cardBrand = (Brand) parcel.readValue(Brand.class.getClassLoader());
        this.cardInfo = parcel.readBundle();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.cardId);
        parcel.writeString(this.cardStatus);
        parcel.writeValue(this.cardBrand);
        parcel.writeBundle(this.cardInfo);
    }

    public Card(String str, String str2) {
        this.cardId = str;
        this.cardStatus = str2;
        this.cardInfo = new Bundle();
        this.cardBrand = Brand.UNKNOWN_CARD;
    }

    public Card(String str, String str2, Bundle bundle) {
        this.cardId = str;
        this.cardStatus = str2;
        this.cardInfo = bundle;
        this.cardBrand = Brand.UNKNOWN_CARD;
    }

    public Card(String str, String str2, Brand brand, Bundle bundle) {
        this.cardId = str;
        this.cardStatus = str2;
        this.cardBrand = brand;
        this.cardInfo = bundle;
    }

    public String getCardId() {
        return this.cardId;
    }

    public Brand getCardBrand() {
        return this.cardBrand;
    }

    public Bundle getCardInfo() {
        return this.cardInfo;
    }

    public String getCardStatus() {
        return this.cardStatus;
    }

    public void setCardId(String str) {
        this.cardId = str;
    }

    public void setCardBrand(Brand brand) {
        this.cardBrand = brand;
    }

    public void setCardInfo(Bundle bundle) {
        this.cardInfo = bundle;
    }

    public void setCardStatus(String str) {
        this.cardStatus = str;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Card{cardId='");
        stringBuilder.append(this.cardId);
        stringBuilder.append('\'');
        stringBuilder.append(", cardStatus='");
        stringBuilder.append(this.cardStatus);
        stringBuilder.append('\'');
        stringBuilder.append(", cardBrand='");
        stringBuilder.append(this.cardBrand);
        stringBuilder.append('\'');
        stringBuilder.append(", cardInfo=");
        stringBuilder.append(this.cardInfo);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
