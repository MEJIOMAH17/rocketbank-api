package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MonthCashBackChosen extends MonthCashBack implements Parcelable {
    public static final Creator<MonthCashBackChosen> CREATOR = new C08141();

    /* renamed from: ru.rocketbank.core.model.dto.operations.MonthCashBackChosen$1 */
    static class C08141 implements Creator<MonthCashBackChosen> {
        C08141() {
        }

        public final MonthCashBackChosen createFromParcel(Parcel parcel) {
            return new MonthCashBackChosen(parcel);
        }

        public final MonthCashBackChosen[] newArray(int i) {
            return new MonthCashBackChosen[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected MonthCashBackChosen(Parcel parcel) {
        super(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
