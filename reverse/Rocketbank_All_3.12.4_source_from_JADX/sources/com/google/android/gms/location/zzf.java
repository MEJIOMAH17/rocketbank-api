package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzarw;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

public class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    public static final Comparator<zzd> zzbju = new C06261();
    private final String mTag;
    private final List<zzd> zzbjv;
    private final List<zzarw> zzbjw;

    /* renamed from: com.google.android.gms.location.zzf$1 */
    class C06261 implements Comparator<zzd> {
        C06261() {
        }

        public final /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((zzd) obj, (zzd) obj2);
        }

        public final int zza(zzd zzd, zzd zzd2) {
            int zzBW = zzd.zzBW();
            int zzBW2 = zzd2.zzBW();
            if (zzBW != zzBW2) {
                return zzBW < zzBW2 ? -1 : 1;
            } else {
                int zzIc = zzd.zzIc();
                int zzIc2 = zzd2.zzIc();
                return zzIc == zzIc2 ? 0 : zzIc < zzIc2 ? -1 : 1;
            }
        }
    }

    public zzf(List<zzd> list, String str, List<zzarw> list2) {
        zzac.zzb((Object) list, (Object) "transitions can't be null");
        zzac.zzb(list.size() > 0, (Object) "transitions can't be empty.");
        zzD(list);
        this.zzbjv = Collections.unmodifiableList(list);
        this.mTag = str;
        this.zzbjw = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    private static void zzD(List<zzd> list) {
        TreeSet treeSet = new TreeSet(zzbju);
        for (zzd add : list) {
            zzac.zzb(treeSet.add(add), String.format("Found duplicated transition: %s.", new Object[]{add}));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzf zzf = (zzf) obj;
        return zzaa.equal(this.zzbjv, zzf.zzbjv) && zzaa.equal(this.mTag, zzf.mTag) && zzaa.equal(this.zzbjw, zzf.zzbjw);
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzbjv.hashCode() * 31) + (this.mTag != null ? this.mTag.hashCode() : 0)) * 31;
        if (this.zzbjw != null) {
            i = this.zzbjw.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbjv);
        String str = this.mTag;
        String valueOf2 = String.valueOf(this.zzbjw);
        StringBuilder stringBuilder = new StringBuilder(((61 + String.valueOf(valueOf).length()) + String.valueOf(str).length()) + String.valueOf(valueOf2).length());
        stringBuilder.append("ActivityTransitionRequest [mTransitions=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", mTag='");
        stringBuilder.append(str);
        stringBuilder.append("', mClients=");
        stringBuilder.append(valueOf2);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public List<zzd> zzId() {
        return this.zzbjv;
    }

    public List<zzarw> zzIe() {
        return this.zzbjw;
    }
}
