package com.bumptech.glide.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class MarkEnforcingInputStream extends FilterInputStream {
    private int availableBytes = Integer.MIN_VALUE;

    public MarkEnforcingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public final void mark(int i) {
        super.mark(i);
        this.availableBytes = i;
    }

    public final int read() throws IOException {
        if (getBytesToRead(1) == -1) {
            return -1;
        }
        int read = super.read();
        if (this.availableBytes != Integer.MIN_VALUE) {
            this.availableBytes = (int) (((long) this.availableBytes) - 1);
        }
        return read;
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        i2 = (int) getBytesToRead((long) i2);
        if (i2 == -1) {
            return -1;
        }
        bArr = super.read(bArr, i, i2);
        i = (long) bArr;
        if (!(this.availableBytes == Integer.MIN_VALUE || i == -1)) {
            this.availableBytes = (int) (((long) this.availableBytes) - i);
        }
        return bArr;
    }

    public final void reset() throws IOException {
        super.reset();
        this.availableBytes = Integer.MIN_VALUE;
    }

    public final long skip(long j) throws IOException {
        j = getBytesToRead(j);
        if (j == -1) {
            return -1;
        }
        j = super.skip(j);
        if (!(this.availableBytes == Integer.MIN_VALUE || j == -1)) {
            this.availableBytes = (int) (((long) this.availableBytes) - j);
        }
        return j;
    }

    public final int available() throws IOException {
        return this.availableBytes == Integer.MIN_VALUE ? super.available() : Math.min(this.availableBytes, super.available());
    }

    private long getBytesToRead(long j) {
        if (this.availableBytes == 0) {
            return -1;
        }
        return (this.availableBytes == Integer.MIN_VALUE || j <= ((long) this.availableBytes)) ? j : (long) this.availableBytes;
    }
}
