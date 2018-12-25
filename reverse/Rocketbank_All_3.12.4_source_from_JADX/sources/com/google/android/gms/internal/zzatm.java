package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import java.util.Iterator;

public class zzatm {
    final String mAppId;
    final String mName;
    final String mOrigin;
    final long zzaxb;
    final zzato zzbrA;
    final long zzbrz;

    zzatm(zzaue zzaue, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzac.zzdr(str2);
        zzac.zzdr(str3);
        this.mAppId = str2;
        this.mName = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.mOrigin = str;
        this.zzaxb = j;
        this.zzbrz = j2;
        if (this.zzbrz != 0 && this.zzbrz > this.zzaxb) {
            zzaue.zzKl().zzMb().zzj("Event created with reverse previous/current timestamps. appId", zzatx.zzfE(str2));
        }
        this.zzbrA = zza(zzaue, bundle);
    }

    private zzatm(zzaue zzaue, String str, String str2, String str3, long j, long j2, zzato zzato) {
        zzac.zzdr(str2);
        zzac.zzdr(str3);
        zzac.zzw(zzato);
        this.mAppId = str2;
        this.mName = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.mOrigin = str;
        this.zzaxb = j;
        this.zzbrz = j2;
        if (this.zzbrz != 0 && this.zzbrz > this.zzaxb) {
            zzaue.zzKl().zzMb().zzj("Event created with reverse previous/current timestamps. appId", zzatx.zzfE(str2));
        }
        this.zzbrA = zzato;
    }

    static zzato zza(zzaue zzaue, Bundle bundle) {
        if (bundle == null || bundle.isEmpty()) {
            return new zzato(new Bundle());
        }
        Bundle bundle2 = new Bundle(bundle);
        Iterator it = bundle2.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                zzaue.zzKl().zzLZ().log("Param name can't be null");
            } else {
                Object zzk = zzaue.zzKh().zzk(str, bundle2.get(str));
                if (zzk == null) {
                    zzaue.zzKl().zzMb().zzj("Param value can't be null", str);
                } else {
                    zzaue.zzKh().zza(bundle2, str, zzk);
                }
            }
            it.remove();
        }
        return new zzato(bundle2);
    }

    public String toString() {
        String str = this.mAppId;
        String str2 = this.mName;
        String valueOf = String.valueOf(this.zzbrA);
        StringBuilder stringBuilder = new StringBuilder(((33 + String.valueOf(str).length()) + String.valueOf(str2).length()) + String.valueOf(valueOf).length());
        stringBuilder.append("Event{appId='");
        stringBuilder.append(str);
        stringBuilder.append("', name='");
        stringBuilder.append(str2);
        stringBuilder.append("', params=");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    zzatm zza(zzaue zzaue, long j) {
        return new zzatm(zzaue, this.mOrigin, this.mAppId, this.mName, this.zzaxb, j, this.zzbrA);
    }
}
