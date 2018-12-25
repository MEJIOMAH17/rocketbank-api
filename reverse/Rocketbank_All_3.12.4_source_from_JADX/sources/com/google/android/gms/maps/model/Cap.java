package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;

public class Cap extends zza {
    public static final Creator<Cap> CREATOR = new zzb();
    private static final String TAG = "Cap";
    private final BitmapDescriptor bitmapDescriptor;
    private final int type;
    private final Float zzbpd;

    protected Cap(int i) {
        this(i, null, null);
    }

    Cap(int i, IBinder iBinder, Float f) {
        this(i, zzeh(iBinder), f);
    }

    private Cap(int i, BitmapDescriptor bitmapDescriptor, Float f) {
        boolean z = false;
        boolean z2 = f != null && f.floatValue() > BitmapDescriptorFactory.HUE_RED;
        if (i != 3 || (bitmapDescriptor != null && z2)) {
            z = true;
        }
        String valueOf = String.valueOf(bitmapDescriptor);
        String valueOf2 = String.valueOf(f);
        StringBuilder stringBuilder = new StringBuilder((63 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
        stringBuilder.append("Invalid Cap: type=");
        stringBuilder.append(i);
        stringBuilder.append(" bitmapDescriptor=");
        stringBuilder.append(valueOf);
        stringBuilder.append(" bitmapRefWidth=");
        stringBuilder.append(valueOf2);
        zzac.zzb(z, stringBuilder.toString());
        this.type = i;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzbpd = f;
    }

    protected Cap(BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    private static BitmapDescriptor zzeh(IBinder iBinder) {
        return iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && zzaa.equal(this.bitmapDescriptor, cap.bitmapDescriptor) && zzaa.equal(this.zzbpd, cap.zzbpd);
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.type), this.bitmapDescriptor, this.zzbpd);
    }

    public String toString() {
        int i = this.type;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append("[Cap: type=");
        stringBuilder.append(i);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public Float zzJH() {
        return this.zzbpd;
    }

    IBinder zzJI() {
        return this.bitmapDescriptor == null ? null : this.bitmapDescriptor.zzJm().asBinder();
    }

    Cap zzJJ() {
        switch (this.type) {
            case 0:
                return new ButtCap();
            case 1:
                return new SquareCap();
            case 2:
                return new RoundCap();
            case 3:
                return new CustomCap(this.bitmapDescriptor, this.zzbpd.floatValue());
            default:
                String str = TAG;
                int i = this.type;
                StringBuilder stringBuilder = new StringBuilder(29);
                stringBuilder.append("Unknown Cap type: ");
                stringBuilder.append(i);
                Log.w(str, stringBuilder.toString());
                return this;
        }
    }
}
