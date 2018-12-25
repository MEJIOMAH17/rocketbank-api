package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.arch.lifecycle.GeneratedAdapter;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItem.Builder;
import java.util.ArrayList;
import java.util.List;

public class SpinnerControl extends SheetControl implements Parcelable {
    public static final Creator<SpinnerControl> CREATOR = new C07241();
    private static final String TAG = "SpinnerControl";
    private List<SheetItem> items = new ArrayList();
    private String selectedItemId;
    private GeneratedAdapter sheetUpdatedListener$6dd8b804;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SpinnerControl$1 */
    static class C07241 implements Creator<SpinnerControl> {
        C07241() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SpinnerControl[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            parcel.readParcelable(Controltype.class.getClassLoader());
            return new SpinnerControl(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public SpinnerControl(String str, String str2, SheetItemType sheetItemType) {
        super(Controltype.SPINNER);
        setControlId(str);
        if (str2 == null) {
            throw new NullPointerException("SpinnerControl : You must set title.");
        } else if (sheetItemType == SheetItemType.SHIPPING_METHOD_SPINNER || sheetItemType == SheetItemType.INSTALLMENT_SPINNER) {
            this.items.add(new SheetItem(new Builder().setId("").setTitle(str2).setSheetItemType(sheetItemType)));
        } else {
            throw new IllegalArgumentException("SpinnerControl : sheetItemType must be either SHIPPING_METHOD_SPINNER or INSTALLMENT_SPINNER.");
        }
    }

    protected SpinnerControl(Parcel parcel) {
        super(parcel);
        this.items = parcel.createTypedArrayList(SheetItem.CREATOR);
        this.selectedItemId = parcel.readString();
        setControltype(Controltype.SPINNER);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.items);
        parcel.writeString(this.selectedItemId);
    }

    public GeneratedAdapter getSheetUpdatedListener$2cab37bd() {
        return this.sheetUpdatedListener$6dd8b804;
    }

    public void setSheetUpdatedListener$3a46fd8f(GeneratedAdapter generatedAdapter) {
        this.sheetUpdatedListener$6dd8b804 = generatedAdapter;
    }

    public String getTitle() {
        return ((SheetItem) this.items.get(0)).getTitle();
    }

    public void setTitle(String str) {
        if (str == null) {
            throw new NullPointerException("setTitle : You must set spinner title");
        }
        this.items.set(0, new SheetItem(new Builder().setId("").setTitle(str).setSheetItemType(((SheetItem) this.items.get(0)).getSheetItemType())));
    }

    public String getSelectedItemId() {
        return this.selectedItemId;
    }

    public void setSelectedItemId(String str) {
        if (existItem(str)) {
            this.selectedItemId = str;
            return;
        }
        throw new IllegalArgumentException("setSelectedItemId : There is no item associated with the ID.");
    }

    public List<SheetItem> getItems() {
        return this.items;
    }

    public void addItem(String str, String str2) {
        addItem(this.items.size() - 1, str, str2);
    }

    public void addItem(int i, String str, String str2) {
        if (existItem(str)) {
            throw new IllegalArgumentException("addItem : same ID is used.");
        } else if (str2 == null) {
            throw new NullPointerException("addItem : You must set value.");
        } else {
            if (i >= 0) {
                if (i <= this.items.size() - 1) {
                    this.items.add(i + 1, new SheetItem(new Builder().setId(str).setSValue(str2)));
                    return;
                }
            }
            throw new IllegalArgumentException("addItem : location is abnormal.");
        }
    }

    public void removeItem(String str) {
        if (str == null) {
            throw new NullPointerException("removeItem : You must set id.");
        }
        str = getIndex(1, str);
        if (str < null) {
            throw new IllegalArgumentException("removeItem : There is no item associated with the ID.");
        }
        this.items.remove(str);
    }

    public void updateItem(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("updateItem : You must set ID.");
        } else if (str2 == null) {
            throw new NullPointerException("addItem : You must set value.");
        } else {
            int index = getIndex(1, str);
            if (index >= 0) {
                this.items.set(index, new SheetItem(new Builder().setId(str).setSValue(str2)));
                return;
            }
            throw new IllegalArgumentException("updateItem : There is no item associated with the ID.");
        }
    }

    public boolean existItem(String str) {
        if (str == null) {
            throw new NullPointerException("existItem : You must set ID.");
        } else if (getIndex(1, str) >= null) {
            return true;
        } else {
            return null;
        }
    }

    private int getIndex(int i, String str) {
        while (i < this.items.size()) {
            if (str.equals(((SheetItem) this.items.get(i)).getId())) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
