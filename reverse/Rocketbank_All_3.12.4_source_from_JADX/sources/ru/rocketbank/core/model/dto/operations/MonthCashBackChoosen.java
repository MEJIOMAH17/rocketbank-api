package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MonthCashBackChoosen extends MonthCashBack implements Parcelable {
    public static final Creator<MonthCashBackChoosen> CREATOR = new C08131();

    /* renamed from: ru.rocketbank.core.model.dto.operations.MonthCashBackChoosen$1 */
    static class C08131 implements Creator<MonthCashBackChoosen> {
        C08131() {
        }

        public final MonthCashBackChoosen createFromParcel(Parcel parcel) {
            return new MonthCashBackChoosen(parcel);
        }

        public final MonthCashBackChoosen[] newArray(int i) {
            return new MonthCashBackChoosen[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected MonthCashBackChoosen(Parcel parcel) {
        super(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
