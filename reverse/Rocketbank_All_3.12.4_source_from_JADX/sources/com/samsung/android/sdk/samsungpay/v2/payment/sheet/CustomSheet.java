package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import java.util.ArrayList;
import java.util.List;

public class CustomSheet implements Parcelable {
    public static final Creator<CustomSheet> CREATOR = new C07171();
    private static final String TAG = "CustomSheet";
    private List<SheetControl> sheetControls = new ArrayList();

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.CustomSheet$1 */
    static class C07171 implements Creator<CustomSheet> {
        C07171() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CustomSheet[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CustomSheet(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    protected CustomSheet(Parcel parcel) {
        this.sheetControls = parcel.createTypedArrayList(SheetControl.CREATOR);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.sheetControls);
    }

    public void addControl(SheetControl sheetControl) {
        addControl(this.sheetControls.size(), sheetControl);
    }

    public void addControl(int i, SheetControl sheetControl) {
        if (sheetControl == null) {
            throw new NullPointerException("addControl : You must set sheetControl.");
        }
        if (i >= 0) {
            if (i <= this.sheetControls.size()) {
                if (getSheetControl(sheetControl.getControlId()) != null) {
                    throw new IllegalArgumentException("addControl : same id is used.");
                }
                if (sheetControl.getControltype() == Controltype.AMOUNTBOX) {
                    AmountBoxControl amountBoxControl = (AmountBoxControl) sheetControl;
                    int size = amountBoxControl.getItems().size() - 1;
                    if (size < 0) {
                        throw new IllegalArgumentException("addControl : No data in AmountBoxControl.");
                    } else if (!((SheetItem) amountBoxControl.getItems().get(size)).getSheetItemType().equals(SheetItemType.AMOUNT_TOTAL)) {
                        throw new IllegalArgumentException("AMOUNT_TOTAL type must be the last item in AmountBoxControl.");
                    }
                }
                this.sheetControls.add(i, sheetControl);
                return;
            }
        }
        throw new IllegalArgumentException("addItem : there is abnormal location.");
    }

    public boolean updateControl(SheetControl sheetControl) {
        if (sheetControl == null) {
            throw new NullPointerException("updateControl : You must set sheetControl.");
        }
        if (this.sheetControls != null) {
            for (int i = 0; i < this.sheetControls.size(); i++) {
                if (sheetControl.equals(this.sheetControls.get(i))) {
                    this.sheetControls.set(i, sheetControl);
                    return true;
                }
            }
        }
        return false;
    }

    public boolean removeControl(SheetControl sheetControl) {
        if (sheetControl == null) {
            throw new NullPointerException("removeControl : You must set sheetControl.");
        } else if (sheetControl.getControltype() == Controltype.AMOUNTBOX) {
            throw new IllegalArgumentException("AmountBoxControl must not be deleted.");
        } else if (sheetControl.getControltype() == Controltype.ADDRESS) {
            throw new IllegalArgumentException("AddressControl must not be deleted.");
        } else {
            if (this.sheetControls != null) {
                for (int i = 0; i < this.sheetControls.size(); i++) {
                    if (sheetControl.equals(this.sheetControls.get(i))) {
                        this.sheetControls.remove(i);
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public SheetControl getSheetControl(String str) {
        if (str == null) {
            throw new NullPointerException("getSheetControl : You must set controlId.");
        }
        for (SheetControl sheetControl : this.sheetControls) {
            if (str.equals(sheetControl.getControlId())) {
                return sheetControl;
            }
        }
        return null;
    }

    public List<SheetControl> getSheetControls() {
        return this.sheetControls;
    }
}
