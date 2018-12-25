package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import ru.rocketbank.core.model.AbstractOperation;

public class ActionOperation extends AbstractOperation implements Parcelable {
    public static final Creator<ActionOperation> CREATOR = new C08221();
    private int type;

    /* renamed from: ru.rocketbank.core.model.operation.ActionOperation$1 */
    static class C08221 implements Creator<ActionOperation> {
        C08221() {
        }

        public final ActionOperation createFromParcel(Parcel parcel) {
            return new ActionOperation(parcel);
        }

        public final ActionOperation[] newArray(int i) {
            return new ActionOperation[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ActionOperation(int i, int i2) {
        this.type = i;
        setId(i2);
    }

    protected ActionOperation(Parcel parcel) {
        super(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
