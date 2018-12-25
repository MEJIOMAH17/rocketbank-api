package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzaa;

public class zzbtj {
    private String zzaiJ;

    public zzbtj(String str) {
        this.zzaiJ = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbtj)) {
            return false;
        }
        return zzaa.equal(this.zzaiJ, ((zzbtj) obj).zzaiJ);
    }

    public String getToken() {
        return this.zzaiJ;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaiJ);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("token", this.zzaiJ).toString();
    }
}
