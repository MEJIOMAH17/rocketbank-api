package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzbyw implements zzbzb {
    private final zzbzb zzcxZ;

    public void close() throws IOException {
        this.zzcxZ.close();
    }

    public long read(zzbyr zzbyr, long j) throws IOException {
        return this.zzcxZ.read(zzbyr, j);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append("(");
        stringBuilder.append(this.zzcxZ.toString());
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
