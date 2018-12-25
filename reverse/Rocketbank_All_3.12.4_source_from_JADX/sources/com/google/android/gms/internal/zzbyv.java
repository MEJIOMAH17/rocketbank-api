package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzbyv implements zzbza {
    private final zzbza zzcxY;

    public void close() throws IOException {
        this.zzcxY.close();
    }

    public void flush() throws IOException {
        this.zzcxY.flush();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append("(");
        stringBuilder.append(this.zzcxY.toString());
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void write(zzbyr zzbyr, long j) throws IOException {
        this.zzcxY.write(zzbyr, j);
    }
}
