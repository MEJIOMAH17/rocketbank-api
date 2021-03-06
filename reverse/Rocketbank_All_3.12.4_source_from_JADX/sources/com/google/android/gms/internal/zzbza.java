package com.google.android.gms.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public interface zzbza extends Closeable, Flushable {
    void close() throws IOException;

    void flush() throws IOException;

    void write(zzbyr zzbyr, long j) throws IOException;
}
