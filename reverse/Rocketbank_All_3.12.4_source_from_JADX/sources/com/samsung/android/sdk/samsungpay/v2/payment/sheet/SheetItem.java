package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SheetItem implements Parcelable {
    public static final Creator<SheetItem> CREATOR = new C07221();
    private double dValue;
    private Bundle extraValue;
    private String id;
    private String sValue;
    private SheetItemType sheetItemType;
    private String title;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItem$1 */
    static class C07221 implements Creator<SheetItem> {
        C07221() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SheetItem[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new SheetItem(parcel);
        }
    }

    public static class Builder {
        private double dValue;
        private Bundle extraValue;
        private String id;
        private String sValue;
        private SheetItemType sheetItemType;
        private String title;

        public final Builder setId(String str) {
            this.id = str;
            return this;
        }

        public final Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public final Builder setSValue(String str) {
            this.sValue = str;
            return this;
        }

        public final Builder setDValue(double d) {
            this.dValue = d;
            return this;
        }

        public final Builder setSheetItemType(SheetItemType sheetItemType) {
            this.sheetItemType = sheetItemType;
            return this;
        }

        public final Builder setExtraValue(Bundle bundle) {
            this.extraValue = bundle;
            return this;
        }
    }

    public int describeContents() {
        return 0;
    }

    private SheetItem(Builder builder) {
        this.id = builder.id;
        this.title = builder.title;
        this.sValue = builder.sValue;
        this.dValue = builder.dValue;
        this.sheetItemType = builder.sheetItemType;
        this.extraValue = builder.extraValue;
    }

    protected SheetItem(Parcel parcel) {
        this.id = parcel.readString();
        this.title = parcel.readString();
        this.sValue = parcel.readString();
        this.dValue = parcel.readDouble();
        this.sheetItemType = (SheetItemType) parcel.readParcelable(SheetItemType.class.getClassLoader());
        this.extraValue = parcel.readBundle();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.title);
        parcel.writeString(this.sValue);
        parcel.writeDouble(this.dValue);
        parcel.writeParcelable(this.sheetItemType, i);
        parcel.writeBundle(this.extraValue);
    }

    public SheetItemType getSheetItemType() {
        return this.sheetItemType;
    }

    public Bundle getExtraValue() {
        return this.extraValue;
    }

    public String getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public String getSValue() {
        return this.sValue;
    }

    public double getDValue() {
        return this.dValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                return this.id.equals(((SheetItem) obj).id);
            }
        }
        return null;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("SheetItem{extraValue=");
        stringBuilder.append(this.extraValue);
        stringBuilder.append(", id='");
        stringBuilder.append(this.id);
        stringBuilder.append('\'');
        stringBuilder.append(", title='");
        stringBuilder.append(this.title);
        stringBuilder.append('\'');
        stringBuilder.append(", sValue='");
        stringBuilder.append(this.sValue);
        stringBuilder.append('\'');
        stringBuilder.append(", dValue='");
        stringBuilder.append(this.dValue);
        stringBuilder.append('\'');
        stringBuilder.append(", sheetItemType=");
        stringBuilder.append(this.sheetItemType);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
