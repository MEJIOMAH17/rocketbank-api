package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;

public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    protected final DataHolder zzaBi;

    protected AbstractDataBuffer(DataHolder dataHolder) {
        this.zzaBi = dataHolder;
    }

    @Deprecated
    public final void close() {
        release();
    }

    public abstract T get(int i);

    public int getCount() {
        return this.zzaBi == null ? 0 : this.zzaBi.getCount();
    }

    @Deprecated
    public boolean isClosed() {
        if (this.zzaBi != null) {
            if (!this.zzaBi.isClosed()) {
                return false;
            }
        }
        return true;
    }

    public Iterator<T> iterator() {
        return new zzb(this);
    }

    public void release() {
        if (this.zzaBi != null) {
            this.zzaBi.close();
        }
    }

    public Iterator<T> singleRefIterator() {
        return new zzg(this);
    }

    public Bundle zzxf() {
        return this.zzaBi.zzxf();
    }
}
