package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class MonthlyMerchant implements Parcelable, Serializable {
    public static final Creator<MonthlyMerchant> CREATOR = new C08151();
    public boolean isEnable;
    private Merchant merchant;
    private int percent;

    /* renamed from: ru.rocketbank.core.model.dto.operations.MonthlyMerchant$1 */
    static class C08151 implements Creator<MonthlyMerchant> {
        C08151() {
        }

        public final MonthlyMerchant createFromParcel(Parcel parcel) {
            return new MonthlyMerchant(parcel);
        }

        public final MonthlyMerchant[] newArray(int i) {
            return new MonthlyMerchant[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected MonthlyMerchant(Parcel parcel) {
        this.isEnable = parcel.readByte() != (byte) 0;
        this.percent = parcel.readInt();
        this.merchant = (Merchant) parcel.readParcelable(Merchant.class.getClassLoader());
    }

    public int getPercent() {
        return this.percent;
    }

    public Merchant getMerchant() {
        return this.merchant;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) this.isEnable);
        parcel.writeInt(this.percent);
        parcel.writeParcelable(this.merchant, i);
    }
}
