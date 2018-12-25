package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzac;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> zzaDI;
    protected int zzaDJ = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.zzaDI = (DataBuffer) zzac.zzw(dataBuffer);
    }

    public boolean hasNext() {
        return this.zzaDJ < this.zzaDI.getCount() - 1;
    }

    public T next() {
        if (hasNext()) {
            DataBuffer dataBuffer = this.zzaDI;
            int i = this.zzaDJ + 1;
            this.zzaDJ = i;
            return dataBuffer.get(i);
        }
        i = this.zzaDJ;
        StringBuilder stringBuilder = new StringBuilder(46);
        stringBuilder.append("Cannot advance the iterator beyond ");
        stringBuilder.append(i);
        throw new NoSuchElementException(stringBuilder.toString());
    }

    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
