package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.zzac;

public final class CustomCap extends Cap {
    public final BitmapDescriptor bitmapDescriptor;
    public final float refWidth;

    public CustomCap(BitmapDescriptor bitmapDescriptor) {
        this(bitmapDescriptor, 10.0f);
    }

    public CustomCap(BitmapDescriptor bitmapDescriptor, float f) {
        super((BitmapDescriptor) zzac.zzb((Object) bitmapDescriptor, (Object) "bitmapDescriptor must not be null"), zza(f, "refWidth must be positive"));
        this.bitmapDescriptor = bitmapDescriptor;
        this.refWidth = f;
    }

    private static float zza(float f, String str) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            return f;
        }
        throw new IllegalArgumentException(str);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.bitmapDescriptor);
        float f = this.refWidth;
        StringBuilder stringBuilder = new StringBuilder(55 + String.valueOf(valueOf).length());
        stringBuilder.append("[CustomCap: bitmapDescriptor=");
        stringBuilder.append(valueOf);
        stringBuilder.append(" refWidth=");
        stringBuilder.append(f);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
