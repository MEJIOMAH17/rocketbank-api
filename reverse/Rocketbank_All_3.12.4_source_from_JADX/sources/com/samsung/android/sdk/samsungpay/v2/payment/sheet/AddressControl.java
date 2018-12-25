package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.arch.lifecycle.GeneratedAdapter;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo.Address;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItem.Builder;

public class AddressControl extends SheetControl implements Parcelable {
    public static final Creator<AddressControl> CREATOR = new C07151();
    private static final String EXTRA_DISPLAY_OPTION = "extra_display_option";
    private static final String TAG = "AddressControl";
    private Address address;
    private int displayOption;
    private int errorCode;
    private SheetItem sheetItem;
    private GeneratedAdapter sheetUpdatedListener$6dd8b804;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.AddressControl$1 */
    static class C07151 implements Creator<AddressControl> {
        C07151() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AddressControl[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            parcel.readParcelable(Controltype.class.getClassLoader());
            return new AddressControl(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public AddressControl(String str, SheetItemType sheetItemType) {
        super(Controltype.ADDRESS);
        setControlId(str);
        if (sheetItemType == null || (sheetItemType.equals(SheetItemType.BILLING_ADDRESS) == null && sheetItemType.equals(SheetItemType.SHIPPING_ADDRESS) == null)) {
            throw new IllegalArgumentException("AddressControl : sheetItemType must be either BILLING_ADDRESS or SHIPPING_ADDRESS.");
        }
        this.sheetItem = new SheetItem(new Builder().setSheetItemType(sheetItemType).setExtraValue(new Bundle()));
    }

    protected AddressControl(Parcel parcel) {
        super(parcel);
        this.errorCode = parcel.readInt();
        this.sheetItem = (SheetItem) parcel.readParcelable(SheetItem.class.getClassLoader());
        this.address = (Address) parcel.readParcelable(Address.class.getClassLoader());
        if (this.sheetItem.getExtraValue() != null) {
            this.displayOption = this.sheetItem.getExtraValue().getInt(EXTRA_DISPLAY_OPTION);
        }
        setControltype(Controltype.ADDRESS);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.errorCode);
        parcel.writeParcelable(this.sheetItem, i);
        parcel.writeParcelable(this.address, i);
    }

    public GeneratedAdapter getSheetUpdatedListener$2cab37bd() {
        return this.sheetUpdatedListener$6dd8b804;
    }

    public void setSheetUpdatedListener$3a46fd8f(GeneratedAdapter generatedAdapter) {
        this.sheetUpdatedListener$6dd8b804 = generatedAdapter;
    }

    public SheetItem getSheetItem() {
        return this.sheetItem;
    }

    public Address getAddress() {
        return this.address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public SheetItemType getAddressType() {
        return this.sheetItem.getSheetItemType();
    }

    public void setAddressTitle(String str) {
        if (str == null) {
            throw new NullPointerException("setAddressTitle : You must set title");
        }
        SheetItem sheetItem = this.sheetItem;
        this.sheetItem = new SheetItem(new Builder().setId(sheetItem.getId()).setTitle(str).setSheetItemType(sheetItem.getSheetItemType()).setExtraValue(sheetItem.getExtraValue()));
    }

    public String getAddressTitle() {
        return this.sheetItem.getTitle();
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setDisplayOption(int i) {
        if (this.sheetItem.getSheetItemType() != SheetItemType.SHIPPING_ADDRESS) {
            throw new IllegalArgumentException("setDisplayOption : sheetItemType must be either SHIPPING_ADDRESS.");
        }
        this.displayOption = i;
        SheetItem sheetItem = this.sheetItem;
        Bundle bundle = new Bundle(sheetItem.getExtraValue());
        bundle.putInt(EXTRA_DISPLAY_OPTION, i);
        this.sheetItem = new SheetItem(new Builder().setId(sheetItem.getId()).setTitle(sheetItem.getTitle()).setSheetItemType(sheetItem.getSheetItemType()).setExtraValue(bundle));
    }

    public int getDisplayOption() {
        return this.displayOption;
    }
}
