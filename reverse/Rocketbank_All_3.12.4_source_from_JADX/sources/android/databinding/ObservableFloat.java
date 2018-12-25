package android.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableFloat extends BaseObservableField implements Parcelable, Serializable {
    public static final Creator<ObservableFloat> CREATOR = new C00091();
    static final long serialVersionUID = 1;
    private float mValue;

    /* renamed from: android.databinding.ObservableFloat$1 */
    static class C00091 implements Creator<ObservableFloat> {
        C00091() {
        }

        public final ObservableFloat createFromParcel(Parcel parcel) {
            return new ObservableFloat(parcel.readFloat());
        }

        public final ObservableFloat[] newArray(int i) {
            return new ObservableFloat[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ObservableFloat(float f) {
        this.mValue = f;
    }

    public ObservableFloat(Observable... observableArr) {
        super(observableArr);
    }

    public float get() {
        return this.mValue;
    }

    public void set(float f) {
        if (f != this.mValue) {
            this.mValue = f;
            notifyChange();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.mValue);
    }
}
