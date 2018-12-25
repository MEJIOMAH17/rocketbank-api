package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public class zzg<T> extends zzb<T> {
    private T zzaEe;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    public T next() {
        if (hasNext()) {
            this.zzaDJ++;
            if (this.zzaDJ == 0) {
                this.zzaEe = this.zzaDI.get(0);
                if (!(this.zzaEe instanceof zzc)) {
                    String valueOf = String.valueOf(this.zzaEe.getClass());
                    StringBuilder stringBuilder = new StringBuilder(44 + String.valueOf(valueOf).length());
                    stringBuilder.append("DataBuffer reference of type ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append(" is not movable");
                    throw new IllegalStateException(stringBuilder.toString());
                }
            }
            ((zzc) this.zzaEe).zzcG(this.zzaDJ);
            return this.zzaEe;
        }
        int i = this.zzaDJ;
        stringBuilder = new StringBuilder(46);
        stringBuilder.append("Cannot advance the iterator beyond ");
        stringBuilder.append(i);
        throw new NoSuchElementException(stringBuilder.toString());
    }
}
