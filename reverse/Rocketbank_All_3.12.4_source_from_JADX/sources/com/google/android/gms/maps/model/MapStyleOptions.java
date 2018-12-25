package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.util.zzp;
import java.io.IOException;

public final class MapStyleOptions extends zza {
    public static final Creator<MapStyleOptions> CREATOR = new zzg();
    private static final String TAG = "MapStyleOptions";
    private String zzbpz;

    public MapStyleOptions(String str) {
        this.zzbpz = str;
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i) throws NotFoundException {
        try {
            return new MapStyleOptions(new String(zzp.zzj(context.getResources().openRawResource(i)), "UTF-8"));
        } catch (IOException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(37 + String.valueOf(valueOf).length());
            stringBuilder.append("Failed to read resource ");
            stringBuilder.append(i);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf);
            throw new NotFoundException(stringBuilder.toString());
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public final String zzJL() {
        return this.zzbpz;
    }
}
