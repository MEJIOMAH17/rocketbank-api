package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;

public abstract class zzc {
    protected final DataHolder zzaBi;
    protected int zzaDL;
    private int zzaDM;

    public zzc(DataHolder dataHolder, int i) {
        this.zzaBi = (DataHolder) zzac.zzw(dataHolder);
        zzcG(i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzc) {
            zzc zzc = (zzc) obj;
            if (zzaa.equal(Integer.valueOf(zzc.zzaDL), Integer.valueOf(this.zzaDL)) && zzaa.equal(Integer.valueOf(zzc.zzaDM), Integer.valueOf(this.zzaDM)) && zzc.zzaBi == this.zzaBi) {
                return true;
            }
        }
        return false;
    }

    protected boolean getBoolean(String str) {
        return this.zzaBi.zze(str, this.zzaDL, this.zzaDM);
    }

    protected byte[] getByteArray(String str) {
        return this.zzaBi.zzg(str, this.zzaDL, this.zzaDM);
    }

    protected float getFloat(String str) {
        return this.zzaBi.zzf(str, this.zzaDL, this.zzaDM);
    }

    protected int getInteger(String str) {
        return this.zzaBi.zzc(str, this.zzaDL, this.zzaDM);
    }

    protected long getLong(String str) {
        return this.zzaBi.zzb(str, this.zzaDL, this.zzaDM);
    }

    protected String getString(String str) {
        return this.zzaBi.zzd(str, this.zzaDL, this.zzaDM);
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaDL), Integer.valueOf(this.zzaDM), this.zzaBi);
    }

    public boolean isDataValid() {
        return !this.zzaBi.isClosed();
    }

    protected void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzaBi.zza(str, this.zzaDL, this.zzaDM, charArrayBuffer);
    }

    protected void zzcG(int i) {
        boolean z = i >= 0 && i < this.zzaBi.getCount();
        zzac.zzav(z);
        this.zzaDL = i;
        this.zzaDM = this.zzaBi.zzcI(this.zzaDL);
    }

    public boolean zzdf(String str) {
        return this.zzaBi.zzdf(str);
    }

    protected Uri zzdg(String str) {
        return this.zzaBi.zzh(str, this.zzaDL, this.zzaDM);
    }

    protected boolean zzdh(String str) {
        return this.zzaBi.zzi(str, this.zzaDL, this.zzaDM);
    }

    protected int zzxi() {
        return this.zzaDL;
    }
}
