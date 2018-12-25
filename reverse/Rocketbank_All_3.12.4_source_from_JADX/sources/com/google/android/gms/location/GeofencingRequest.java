package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest extends zza {
    public static final Creator<GeofencingRequest> CREATOR = new zzi();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final String mTag;
    private final List<zzasm> zzbjN;
    private final int zzbjO;

    public static final class Builder {
        private String mTag = "";
        private final List<zzasm> zzbjN = new ArrayList();
        private int zzbjO = 5;

        public static int zzkh(int i) {
            return i & 7;
        }

        public final Builder addGeofence(Geofence geofence) {
            zzac.zzb((Object) geofence, (Object) "geofence can't be null.");
            zzac.zzb(geofence instanceof zzasm, (Object) "Geofence must be created using Geofence.Builder.");
            this.zzbjN.add((zzasm) geofence);
            return this;
        }

        public final Builder addGeofences(List<Geofence> list) {
            if (list == null || list.isEmpty()) {
                return this;
            }
            for (Geofence geofence : list) {
                if (geofence != null) {
                    addGeofence(geofence);
                }
            }
            return this;
        }

        public final GeofencingRequest build() {
            zzac.zzb(this.zzbjN.isEmpty() ^ 1, (Object) "No geofence has been added to this request.");
            return new GeofencingRequest(this.zzbjN, this.zzbjO, this.mTag);
        }

        public final Builder setInitialTrigger(int i) {
            this.zzbjO = zzkh(i);
            return this;
        }
    }

    GeofencingRequest(List<zzasm> list, int i, String str) {
        this.zzbjN = list;
        this.zzbjO = i;
        this.mTag = str;
    }

    public List<Geofence> getGeofences() {
        List<Geofence> arrayList = new ArrayList();
        arrayList.addAll(this.zzbjN);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.zzbjO;
    }

    public String getTag() {
        return this.mTag;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public List<zzasm> zzIf() {
        return this.zzbjN;
    }
}
