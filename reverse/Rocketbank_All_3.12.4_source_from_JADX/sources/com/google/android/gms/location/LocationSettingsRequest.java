package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest extends zza {
    public static final Creator<LocationSettingsRequest> CREATOR = new zzq();
    private final List<LocationRequest> zzaWt;
    private final boolean zzbkd;
    private final boolean zzbke;
    private zzo zzbkf;

    public static final class Builder {
        private boolean zzbkd = false;
        private boolean zzbke = false;
        private zzo zzbkf = null;
        private final ArrayList<LocationRequest> zzbkg = new ArrayList();

        public final Builder addAllLocationRequests(Collection<LocationRequest> collection) {
            this.zzbkg.addAll(collection);
            return this;
        }

        public final Builder addLocationRequest(LocationRequest locationRequest) {
            this.zzbkg.add(locationRequest);
            return this;
        }

        public final LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.zzbkg, this.zzbkd, this.zzbke, null);
        }

        public final Builder setAlwaysShow(boolean z) {
            this.zzbkd = z;
            return this;
        }

        public final Builder setNeedBle(boolean z) {
            this.zzbke = z;
            return this;
        }
    }

    LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzo zzo) {
        this.zzaWt = list;
        this.zzbkd = z;
        this.zzbke = z2;
        this.zzbkf = zzo;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    public final List<LocationRequest> zzDf() {
        return Collections.unmodifiableList(this.zzaWt);
    }

    public final boolean zzIj() {
        return this.zzbkd;
    }

    public final boolean zzIk() {
        return this.zzbke;
    }

    public final zzo zzIl() {
        return this.zzbkf;
    }
}
