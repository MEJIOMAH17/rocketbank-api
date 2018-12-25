package android.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableByte extends BaseObservableField implements Parcelable, Serializable {
    public static final Creator<ObservableByte> CREATOR = new C00061();
    static final long serialVersionUID = 1;
    private byte mValue;

    /* renamed from: android.databinding.ObservableByte$1 */
    static class C00061 implements Creator<ObservableByte> {
        C00061() {
        }

        public final ObservableByte createFromParcel(Parcel parcel) {
            return new ObservableByte(parcel.readByte());
        }

        public final ObservableByte[] newArray(int i) {
            return new ObservableByte[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ObservableByte(byte b) {
        this.mValue = b;
    }

    public ObservableByte(Observable... observableArr) {
        super(observableArr);
    }

    public byte get() {
        return this.mValue;
    }

    public void set(byte b) {
        if (b != this.mValue) {
            this.mValue = b;
            notifyChange();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.mValue);
    }
}
