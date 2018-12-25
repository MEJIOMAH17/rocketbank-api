package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItem.Builder;
import java.util.ArrayList;
import java.util.List;

public class AmountBoxControl extends SheetControl implements Parcelable {
    public static final Creator<AmountBoxControl> CREATOR = new C07161();
    private static final String TAG = "AmountBoxControl";
    private String currencyCode;
    private List<SheetItem> items = new ArrayList();

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.AmountBoxControl$1 */
    static class C07161 implements Creator<AmountBoxControl> {
        C07161() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AmountBoxControl[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            parcel.readParcelable(Controltype.class.getClassLoader());
            return new AmountBoxControl(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public AmountBoxControl(String str, String str2) {
        super(Controltype.AMOUNTBOX);
        setControlId(str);
        setCurrencyCode(str2);
    }

    protected AmountBoxControl(Parcel parcel) {
        super(parcel);
        this.items = parcel.createTypedArrayList(SheetItem.CREATOR);
        this.currencyCode = parcel.readString();
        setControltype(Controltype.AMOUNTBOX);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.items);
        parcel.writeString(this.currencyCode);
    }

    public List<SheetItem> getItems() {
        return this.items;
    }

    public double getValue(String str) {
        if (str == null) {
            throw new NullPointerException("You must set itemId.");
        }
        str = getItemIndex(str);
        if (str >= null) {
            return ((SheetItem) this.items.get(str)).getDValue();
        }
        throw new IllegalArgumentException("id is invalid.");
    }

    private int getItemIndex(String str) {
        for (int i = 0; i < this.items.size(); i++) {
            if (str.equals(((SheetItem) this.items.get(i)).getId())) {
                return i;
            }
        }
        return -1;
    }

    private int getAmountTotalIndex() {
        for (int i = 0; i < this.items.size(); i++) {
            if (((SheetItem) this.items.get(i)).getSheetItemType() == SheetItemType.AMOUNT_TOTAL) {
                return i;
            }
        }
        return -1;
    }

    private boolean hasAmountTotal() {
        return getAmountTotalIndex() >= 0;
    }

    public boolean existItem(String str) {
        if (str != null) {
            return getItemIndex(str) >= null ? true : null;
        } else {
            throw new NullPointerException("You must set id.");
        }
    }

    public void addItem(String str, String str2, double d, String str3) {
        if (hasAmountTotal()) {
            addItem(this.items.size() - 1, str, str2, d, str3);
        } else {
            addItem(this.items.size(), str, str2, d, str3);
        }
    }

    public void addItem(int i, String str, String str2, double d, String str3) {
        if (str == null) {
            throw new NullPointerException("addItem : You must set itemId.");
        } else if (str2 == null) {
            throw new NullPointerException("addItem : You must set title.");
        } else {
            if (i >= 0 && (!hasAmountTotal() || i < this.items.size())) {
                if (hasAmountTotal() || i <= this.items.size()) {
                    if (getItemIndex(str) >= 0) {
                        throw new IllegalArgumentException("addItem : same id is used.");
                    }
                    this.items.add(i, new SheetItem(new Builder().setId(str).setTitle(str2).setDValue(d).setSValue(str3).setSheetItemType(SheetItemType.AMOUNT_ITEM)));
                    return;
                }
            }
            throw new IllegalArgumentException("addItem : there is abnormal location");
        }
    }

    public void setAmountTotal(double d, String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                int amountTotalIndex = getAmountTotalIndex();
                SheetItem sheetItem = new SheetItem(new Builder().setId("").setTitle("").setDValue(d).setSValue(str).setSheetItemType(SheetItemType.AMOUNT_TOTAL));
                if (amountTotalIndex >= 0) {
                    this.items.set(amountTotalIndex, sheetItem);
                    return;
                } else {
                    this.items.add(sheetItem);
                    return;
                }
            }
        }
        throw new IllegalArgumentException("setAmountTotal : You must set displayOption.");
    }

    public void removeItem(String str) {
        if (str == null) {
            throw new NullPointerException("removeItem : You must set itemId.");
        }
        str = getItemIndex(str);
        if (str < null) {
            throw new IllegalArgumentException("removeItem : there is no id.");
        }
        this.items.remove(str);
    }

    public void updateValue(String str, double d) {
        if (str == null) {
            throw new NullPointerException("updateValue : You must set id.");
        }
        int itemIndex = getItemIndex(str);
        if (itemIndex >= 0) {
            this.items.set(itemIndex, new SheetItem(new Builder().setId(str).setTitle(((SheetItem) this.items.get(itemIndex)).getTitle()).setDValue(d).setSValue("").setSheetItemType(((SheetItem) this.items.get(itemIndex)).getSheetItemType())));
            return;
        }
        throw new IllegalArgumentException("updateValue : there are no items associated with the id.");
    }

    public void updateValue(String str, double d, String str2) {
        if (str == null) {
            throw new NullPointerException("updateValue : You must set id.");
        }
        int itemIndex = getItemIndex(str);
        if (itemIndex >= 0) {
            this.items.set(itemIndex, new SheetItem(new Builder().setId(str).setTitle(((SheetItem) this.items.get(itemIndex)).getTitle()).setDValue(d).setSValue(str2).setSheetItemType(((SheetItem) this.items.get(itemIndex)).getSheetItemType())));
            return;
        }
        throw new IllegalArgumentException("updateValue : there are no items associated with the id.");
    }

    public void updateTitle(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("You must set itemId.");
        }
        int itemIndex = getItemIndex(str);
        if (itemIndex >= 0) {
            this.items.set(itemIndex, new SheetItem(new Builder().setId(str).setTitle(str2).setDValue(((SheetItem) this.items.get(itemIndex)).getDValue()).setSValue(((SheetItem) this.items.get(itemIndex)).getSValue()).setSheetItemType(((SheetItem) this.items.get(itemIndex)).getSheetItemType())));
            return;
        }
        throw new IllegalArgumentException("updateTitle : there are no items associated with the id.");
    }

    public String getCurrencyCode() {
        return this.currencyCode;
    }

    @android.annotation.TargetApi(19)
    public void setCurrencyCode(java.lang.String r3) throws java.lang.IllegalArgumentException, java.lang.NullPointerException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        if (r3 != 0) goto L_0x000a;
    L_0x0002:
        r3 = new java.lang.NullPointerException;
        r0 = "currencyCode is null";
        r3.<init>(r0);
        throw r3;
    L_0x000a:
        r0 = java.util.Currency.getAvailableCurrencies();
        r0 = r0.iterator();
    L_0x0012:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x002b;
    L_0x0018:
        r1 = r0.next();
        r1 = (java.util.Currency) r1;
        r1 = r1.getCurrencyCode();	 Catch:{ Exception -> 0x0012 }
        r1 = r1.equals(r3);	 Catch:{ Exception -> 0x0012 }
        if (r1 == 0) goto L_0x0012;	 Catch:{ Exception -> 0x0012 }
    L_0x0028:
        r2.currencyCode = r3;	 Catch:{ Exception -> 0x0012 }
        return;
    L_0x002b:
        r0 = new java.lang.IllegalArgumentException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1.append(r3);
        r3 = " is invalid currencyCode.";
        r1.append(r3);
        r3 = r1.toString();
        r0.<init>(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.payment.sheet.AmountBoxControl.setCurrencyCode(java.lang.String):void");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("AmountBoxControl{, items=");
        stringBuilder.append(this.items);
        stringBuilder.append(", currencyCode='");
        stringBuilder.append(this.currencyCode);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
