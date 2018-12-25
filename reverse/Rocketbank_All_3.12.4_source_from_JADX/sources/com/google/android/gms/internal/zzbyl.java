package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

final class zzbyl {
    final int tag;
    final byte[] zzbyc;

    zzbyl(int i, byte[] bArr) {
        this.tag = i;
        this.zzbyc = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbyl)) {
            return false;
        }
        zzbyl zzbyl = (zzbyl) obj;
        return this.tag == zzbyl.tag && Arrays.equals(this.zzbyc, zzbyl.zzbyc);
    }

    public final int hashCode() {
        return ((527 + this.tag) * 31) + Arrays.hashCode(this.zzbyc);
    }

    final void zza(zzbyc zzbyc) throws IOException {
        zzbyc.zzrp(this.tag);
        zzbyc.zzak(this.zzbyc);
    }

    final int zzu() {
        return (0 + zzbyc.zzrq(this.tag)) + this.zzbyc.length;
    }
}
