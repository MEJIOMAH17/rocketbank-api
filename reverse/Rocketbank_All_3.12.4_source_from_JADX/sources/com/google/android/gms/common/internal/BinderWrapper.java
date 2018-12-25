package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public final class BinderWrapper implements Parcelable {
    public static final Creator<BinderWrapper> CREATOR = new C05431();
    private IBinder zzaFz;

    /* renamed from: com.google.android.gms.common.internal.BinderWrapper$1 */
    class C05431 implements Creator<BinderWrapper> {
        C05431() {
        }

        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzaR(parcel);
        }

        public final /* synthetic */ Object[] newArray(int i) {
            return zzcT(i);
        }

        public final BinderWrapper zzaR(Parcel parcel) {
            return new BinderWrapper(parcel);
        }

        public final BinderWrapper[] zzcT(int i) {
            return new BinderWrapper[i];
        }
    }

    public BinderWrapper() {
        this.zzaFz = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.zzaFz = null;
        this.zzaFz = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.zzaFz = null;
        this.zzaFz = parcel.readStrongBinder();
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzaFz);
    }
}
