package com.samsung.android.sdk.samsungpay.payment;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo;

@Deprecated
public class CardInfo implements Parcelable {
    public static final Creator<CardInfo> CREATOR = new C06871();
    private Brand brand;

    /* renamed from: com.samsung.android.sdk.samsungpay.payment.CardInfo$1 */
    static class C06871 implements Creator<CardInfo> {
        C06871() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CardInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CardInfo(parcel);
        }
    }

    @Deprecated
    public enum Brand implements Parcelable {
        AMERICANEXPRESS,
        MASTERCARD,
        VISA,
        CHINAUNIONPAY;
        
        public static final Creator<Brand> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.payment.CardInfo$Brand$1 */
        static class C06881 implements Creator<Brand> {
            C06881() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Brand[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return Brand.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C06881();
        }

        public static Brand convert(String str) {
            str = str.toUpperCase();
            if (!"VISA".equals(str)) {
                if (!AddCardInfo.PROVIDER_VISA.equals(str)) {
                    if (!("MASTERCARD".equals(str) || AddCardInfo.PROVIDER_MASTERCARD.equals(str))) {
                        if (!str.contains("MASTER")) {
                            if (!("AMEX".equals(str) || AddCardInfo.PROVIDER_AMEX.equals(str))) {
                                if (!str.contains("AMERICANEXPRESS")) {
                                    if (!"CUP".equals(str)) {
                                        if (str.contains("CHINA") == null) {
                                            return null;
                                        }
                                    }
                                    return CHINAUNIONPAY;
                                }
                            }
                            return AMERICANEXPRESS;
                        }
                    }
                    return MASTERCARD;
                }
            }
            return VISA;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public static class Builder {
    }

    public int describeContents() {
        return 0;
    }

    private CardInfo() {
    }

    private CardInfo(Builder builder) {
        this.brand = null;
    }

    public CardInfo(Parcel parcel) {
        this.brand = (Brand) parcel.readValue(Brand.class.getClassLoader());
    }

    public Brand getBrand() {
        return this.brand;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.brand);
    }
}
