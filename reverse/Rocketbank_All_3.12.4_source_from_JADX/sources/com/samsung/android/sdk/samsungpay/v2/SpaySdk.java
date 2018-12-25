package com.samsung.android.sdk.samsungpay.v2;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo;

public abstract class SpaySdk {
    protected Context context = null;
    protected PartnerInfo partnerInfo = null;

    public enum Brand implements Parcelable {
        AMERICANEXPRESS,
        MASTERCARD,
        VISA,
        DISCOVER,
        CHINAUNIONPAY,
        UNKNOWN_CARD,
        OCTOPUS;
        
        public static final Creator<Brand> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.SpaySdk$Brand$1 */
        static class C06981 implements Creator<Brand> {
            C06981() {
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
            CREATOR = new C06981();
        }

        public static Brand convert(String str) {
            str = str.toUpperCase();
            if (!"VISA".equals(str)) {
                if (!AddCardInfo.PROVIDER_VISA.equals(str)) {
                    if (!("MASTERCARD".equals(str) || AddCardInfo.PROVIDER_MASTERCARD.equals(str))) {
                        if (!str.contains("MASTER")) {
                            if (!("AMEX".equals(str) || AddCardInfo.PROVIDER_AMEX.equals(str))) {
                                if (!str.contains("AMERICANEXPRESS")) {
                                    if (!"DISCOVER".equals(str)) {
                                        if (!AddCardInfo.PROVIDER_DISCOVER.equals(str)) {
                                            if (!"CUP".equals(str)) {
                                                if (!str.contains("CHINA")) {
                                                    if (!"OCL".equals(str)) {
                                                        if (str.contains("OC") == null) {
                                                            return UNKNOWN_CARD;
                                                        }
                                                    }
                                                    return OCTOPUS;
                                                }
                                            }
                                            return CHINAUNIONPAY;
                                        }
                                    }
                                    return DISCOVER;
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

    public enum SdkApiLevel {
        LEVEL_1_1("1.1"),
        LEVEL_1_2("1.2"),
        LEVEL_1_3("1.3"),
        LEVEL_1_4("1.4"),
        LEVEL_1_5("1.5"),
        LEVEL_1_6("1.6"),
        LEVEL_1_7("1.7"),
        LEVEL_1_8("1.8");
        
        private String api_level;

        private SdkApiLevel(String str) {
            this.api_level = str;
        }

        public final String getLevel() {
            return this.api_level;
        }
    }

    public enum ServiceType {
        INAPP_PAYMENT,
        APP2APP,
        WEB_PAYMENT,
        W3C,
        MOBILEWEB_PAYMENT,
        INTERNAL_APK
    }

    public static String getVersionName() {
        return String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(8), Integer.valueOf(0)});
    }

    protected SpaySdk(Context context, PartnerInfo partnerInfo) {
        this.context = context;
        this.partnerInfo = partnerInfo;
    }

    protected final PartnerInfo getPartnerInfo() {
        return this.partnerInfo;
    }

    protected final boolean isValidContextAndServiceId(PartnerInfo partnerInfo) {
        if (this.context != null) {
            partnerInfo = (partnerInfo == null || partnerInfo.getServiceId() == null || "".equals(partnerInfo.getServiceId()) != null) ? null : 1;
            if (partnerInfo != null) {
                return true;
            }
        }
        return false;
    }
}
