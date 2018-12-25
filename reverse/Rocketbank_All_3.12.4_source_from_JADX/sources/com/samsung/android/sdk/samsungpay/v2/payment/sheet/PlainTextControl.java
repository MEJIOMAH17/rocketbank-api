package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItem.Builder;

public class PlainTextControl extends SheetControl implements Parcelable {
    public static final Creator<PlainTextControl> CREATOR = new C07181();
    private static final String TAG = "PlainTextControl";
    private SheetItem sheetItem;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.PlainTextControl$1 */
    static class C07181 implements Creator<PlainTextControl> {
        C07181() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PlainTextControl[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            parcel.readParcelable(Controltype.class.getClassLoader());
            return new PlainTextControl(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public PlainTextControl(String str) {
        super(Controltype.PLAINTEXT);
        setControlId(str);
    }

    protected PlainTextControl(Parcel parcel) {
        super(parcel);
        this.sheetItem = (SheetItem) parcel.readParcelable(SheetItem.class.getClassLoader());
        setControltype(Controltype.PLAINTEXT);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.sheetItem, i);
    }

    public void setText(String str, String str2) {
        if (str2 == null) {
            throw new NullPointerException("setText : You must set text.");
        }
        this.sheetItem = new SheetItem(new Builder().setId("").setTitle(str).setSValue(str2));
    }

    public String getText() {
        if (this.sheetItem == null) {
            return null;
        }
        return this.sheetItem.getSValue();
    }

    public String getTitle() {
        if (this.sheetItem == null) {
            return null;
        }
        return this.sheetItem.getTitle();
    }

    public SheetItem getItem() {
        return this.sheetItem;
    }
}
