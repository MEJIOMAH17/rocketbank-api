package android.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableLong extends BaseObservableField implements Parcelable, Serializable {
    public static final Creator<ObservableLong> CREATOR = new C00111();
    static final long serialVersionUID = 1;
    private long mValue;

    /* renamed from: android.databinding.ObservableLong$1 */
    static class C00111 implements Creator<ObservableLong> {
        C00111() {
        }

        public final ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        public final ObservableLong[] newArray(int i) {
            return new ObservableLong[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ObservableLong(long j) {
        this.mValue = j;
    }

    public ObservableLong(Observable... observableArr) {
        super(observableArr);
    }

    public long get() {
        return this.mValue;
    }

    public void set(long j) {
        if (j != this.mValue) {
            this.mValue = j;
            notifyChange();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mValue);
    }
}
