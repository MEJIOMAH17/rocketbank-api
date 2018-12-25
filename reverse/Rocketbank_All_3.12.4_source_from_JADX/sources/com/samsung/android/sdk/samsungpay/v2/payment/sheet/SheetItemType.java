package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public enum SheetItemType implements Parcelable {
    BILLING_ADDRESS,
    SHIPPING_ADDRESS,
    AMOUNT_TOTAL,
    AMOUNT_ITEM,
    SHIPPING_METHOD_SPINNER,
    INSTALLMENT_SPINNER;
    
    public static final Creator<SheetItemType> CREATOR = null;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItemType$1 */
    static class C07231 implements Creator<SheetItemType> {
        C07231() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SheetItemType[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return SheetItemType.values()[parcel.readInt()];
        }
    }

    public final int describeContents() {
        return 0;
    }

    static {
        CREATOR = new C07231();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
