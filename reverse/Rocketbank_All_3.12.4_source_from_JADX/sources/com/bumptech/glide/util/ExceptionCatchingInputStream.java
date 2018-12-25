package com.bumptech.glide.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public final class ExceptionCatchingInputStream extends InputStream {
    private static final Queue<ExceptionCatchingInputStream> QUEUE = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    public static ExceptionCatchingInputStream obtain(InputStream inputStream) {
        ExceptionCatchingInputStream exceptionCatchingInputStream;
        synchronized (QUEUE) {
            exceptionCatchingInputStream = (ExceptionCatchingInputStream) QUEUE.poll();
        }
        if (exceptionCatchingInputStream == null) {
            exceptionCatchingInputStream = new ExceptionCatchingInputStream();
        }
        exceptionCatchingInputStream.wrapped = inputStream;
        return exceptionCatchingInputStream;
    }

    ExceptionCatchingInputStream() {
    }

    public final int available() throws IOException {
        return this.wrapped.available();
    }

    public final void close() throws IOException {
        this.wrapped.close();
    }

    public final void mark(int i) {
        this.wrapped.mark(i);
    }

    public final boolean markSupported() {
        return this.wrapped.markSupported();
    }

    public final int read(byte[] bArr) throws IOException {
        try {
            return this.wrapped.read(bArr);
        } catch (byte[] bArr2) {
            this.exception = bArr2;
            return -1;
        }
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.wrapped.read(bArr, i, i2);
        } catch (byte[] bArr2) {
            this.exception = bArr2;
            return -1;
        }
    }

    public final synchronized void reset() throws IOException {
        this.wrapped.reset();
    }

    public final long skip(long j) throws IOException {
        try {
            return this.wrapped.skip(j);
        } catch (long j2) {
            this.exception = j2;
            return 0;
        }
    }

    public final int read() throws IOException {
        try {
            return this.wrapped.read();
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }

    public final IOException getException() {
        return this.exception;
    }

    public final void release() {
        this.exception = null;
        this.wrapped = null;
        synchronized (QUEUE) {
            QUEUE.offer(this);
        }
    }
}
