package android.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableShort extends BaseObservableField implements Parcelable, Serializable {
    public static final Creator<ObservableShort> CREATOR = new C00131();
    static final long serialVersionUID = 1;
    private short mValue;

    /* renamed from: android.databinding.ObservableShort$1 */
    static class C00131 implements Creator<ObservableShort> {
        C00131() {
        }

        public final ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        public final ObservableShort[] newArray(int i) {
            return new ObservableShort[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ObservableShort(short s) {
        this.mValue = s;
    }

    public ObservableShort(Observable... observableArr) {
        super(observableArr);
    }

    public short get() {
        return this.mValue;
    }

    public void set(short s) {
        if (s != this.mValue) {
            this.mValue = s;
            notifyChange();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mValue);
    }
}
