package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

class zzatn {
    final String mAppId;
    final String mName;
    final long zzbrB;
    final long zzbrC;
    final long zzbrD;

    zzatn(String str, String str2, long j, long j2, long j3) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        boolean z = false;
        zzac.zzaw(j >= 0);
        if (j2 >= 0) {
            z = true;
        }
        zzac.zzaw(z);
        this.mAppId = str;
        this.mName = str2;
        this.zzbrB = j;
        this.zzbrC = j2;
        this.zzbrD = j3;
    }

    zzatn zzLV() {
        return new zzatn(this.mAppId, this.mName, this.zzbrB + 1, this.zzbrC + 1, this.zzbrD);
    }

    zzatn zzap(long j) {
        return new zzatn(this.mAppId, this.mName, this.zzbrB, this.zzbrC, j);
    }
}
