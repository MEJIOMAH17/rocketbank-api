package android.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableParcelable<T extends Parcelable> extends ObservableField<T> implements Parcelable, Serializable {
    public static final Creator<ObservableParcelable> CREATOR = new C00121();
    static final long serialVersionUID = 1;

    /* renamed from: android.databinding.ObservableParcelable$1 */
    static class C00121 implements Creator<ObservableParcelable> {
        C00121() {
        }

        public final ObservableParcelable createFromParcel(Parcel parcel) {
            return new ObservableParcelable(parcel.readParcelable(getClass().getClassLoader()));
        }

        public final ObservableParcelable[] newArray(int i) {
            return new ObservableParcelable[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public ObservableParcelable(T t) {
        super((Object) t);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable((Parcelable) get(), 0);
    }
}
