package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import ru.rocketbank.core.model.AbstractOperation;

public class BarOperation extends AbstractOperation implements Parcelable {
    public static final Creator<BarOperation> CREATOR = new C08231();

    /* renamed from: ru.rocketbank.core.model.operation.BarOperation$1 */
    static class C08231 implements Creator<BarOperation> {
        C08231() {
        }

        public final BarOperation createFromParcel(Parcel parcel) {
            return new BarOperation(parcel);
        }

        public final BarOperation[] newArray(int i) {
            return new BarOperation[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public BarOperation() {
        setId(65536);
    }

    protected BarOperation(Parcel parcel) {
        super(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
