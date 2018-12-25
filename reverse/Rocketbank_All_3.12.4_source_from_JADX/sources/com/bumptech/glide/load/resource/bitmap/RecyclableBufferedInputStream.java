package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] buf;
    private int count;
    private int marklimit;
    private int markpos = -1;
    private int pos;

    public static class InvalidMarkException extends RuntimeException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public final boolean markSupported() {
        return true;
    }

    public RecyclableBufferedInputStream(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        if (bArr != null) {
            if (bArr.length != null) {
                this.buf = bArr;
                return;
            }
        }
        throw new IllegalArgumentException("buffer is null or empty");
    }

    public final synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.in;
        if (this.buf != null) {
            if (inputStream != null) {
            }
        }
        throw new IOException("BufferedInputStream is closed");
        return (this.count - this.pos) + inputStream.available();
    }

    public final synchronized void fixMarkLimit() {
        this.marklimit = this.buf.length;
    }

    public final void close() throws IOException {
        this.buf = null;
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    private int fillbuf(InputStream inputStream, byte[] bArr) throws IOException {
        if (this.markpos != -1) {
            if (this.pos - this.markpos < this.marklimit) {
                if (this.markpos == 0 && this.marklimit > bArr.length && this.count == bArr.length) {
                    int length = bArr.length << 1;
                    if (length > this.marklimit) {
                        length = this.marklimit;
                    }
                    if (Log.isLoggable("BufferedIs", 3)) {
                        Log.d("BufferedIs", "allocate buffer of length: ".concat(String.valueOf(length)));
                    }
                    Object obj = new byte[length];
                    System.arraycopy(bArr, 0, obj, 0, bArr.length);
                    this.buf = obj;
                    bArr = obj;
                } else if (this.markpos > 0) {
                    System.arraycopy(bArr, this.markpos, bArr, 0, bArr.length - this.markpos);
                }
                this.pos -= this.markpos;
                this.markpos = 0;
                this.count = 0;
                inputStream = inputStream.read(bArr, this.pos, bArr.length - this.pos);
                if (inputStream <= null) {
                    bArr = this.pos;
                } else {
                    bArr = this.pos + inputStream;
                }
                this.count = bArr;
                return inputStream;
            }
        }
        inputStream = inputStream.read(bArr);
        if (inputStream > null) {
            this.markpos = -1;
            this.pos = 0;
            this.count = inputStream;
        }
        return inputStream;
    }

    public final synchronized void mark(int i) {
        this.marklimit = Math.max(this.marklimit, i);
        this.markpos = this.pos;
    }

    public final synchronized int read() throws IOException {
        byte[] bArr = this.buf;
        InputStream inputStream = this.in;
        if (bArr != null) {
            if (inputStream != null) {
                if (this.pos >= this.count && fillbuf(inputStream, bArr) == -1) {
                    return -1;
                }
                if (bArr != this.buf) {
                    bArr = this.buf;
                    if (bArr == null) {
                        throw new IOException("BufferedInputStream is closed");
                    }
                }
                if (this.count - this.pos <= 0) {
                    return -1;
                }
                int i = this.pos;
                this.pos = i + 1;
                return bArr[i] & 255;
            }
        }
        throw new IOException("BufferedInputStream is closed");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized int read(byte[] r6, int r7, int r8) throws java.io.IOException {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.buf;	 Catch:{ all -> 0x00a6 }
        if (r0 != 0) goto L_0x000d;
    L_0x0005:
        r6 = new java.io.IOException;	 Catch:{ all -> 0x00a6 }
        r7 = "BufferedInputStream is closed";
        r6.<init>(r7);	 Catch:{ all -> 0x00a6 }
        throw r6;	 Catch:{ all -> 0x00a6 }
    L_0x000d:
        if (r8 != 0) goto L_0x0012;
    L_0x000f:
        r6 = 0;
        monitor-exit(r5);
        return r6;
    L_0x0012:
        r1 = r5.in;	 Catch:{ all -> 0x00a6 }
        if (r1 != 0) goto L_0x001e;
    L_0x0016:
        r6 = new java.io.IOException;	 Catch:{ all -> 0x00a6 }
        r7 = "BufferedInputStream is closed";
        r6.<init>(r7);	 Catch:{ all -> 0x00a6 }
        throw r6;	 Catch:{ all -> 0x00a6 }
    L_0x001e:
        r2 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r3 = r5.count;	 Catch:{ all -> 0x00a6 }
        if (r2 >= r3) goto L_0x004b;
    L_0x0024:
        r2 = r5.count;	 Catch:{ all -> 0x00a6 }
        r3 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r2 = r2 - r3;
        if (r2 < r8) goto L_0x002d;
    L_0x002b:
        r2 = r8;
        goto L_0x0032;
    L_0x002d:
        r2 = r5.count;	 Catch:{ all -> 0x00a6 }
        r3 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r2 = r2 - r3;
    L_0x0032:
        r3 = r5.pos;	 Catch:{ all -> 0x00a6 }
        java.lang.System.arraycopy(r0, r3, r6, r7, r2);	 Catch:{ all -> 0x00a6 }
        r3 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r3 = r3 + r2;
        r5.pos = r3;	 Catch:{ all -> 0x00a6 }
        if (r2 == r8) goto L_0x0049;
    L_0x003e:
        r3 = r1.available();	 Catch:{ all -> 0x00a6 }
        if (r3 != 0) goto L_0x0045;
    L_0x0044:
        goto L_0x0049;
    L_0x0045:
        r7 = r7 + r2;
        r2 = r8 - r2;
        goto L_0x004c;
    L_0x0049:
        monitor-exit(r5);
        return r2;
    L_0x004b:
        r2 = r8;
    L_0x004c:
        r3 = r5.markpos;	 Catch:{ all -> 0x00a6 }
        r4 = -1;
        if (r3 != r4) goto L_0x0061;
    L_0x0051:
        r3 = r0.length;	 Catch:{ all -> 0x00a6 }
        if (r2 < r3) goto L_0x0061;
    L_0x0054:
        r3 = r1.read(r6, r7, r2);	 Catch:{ all -> 0x00a6 }
        if (r3 != r4) goto L_0x0096;
    L_0x005a:
        if (r2 != r8) goto L_0x005e;
    L_0x005c:
        monitor-exit(r5);
        return r4;
    L_0x005e:
        r8 = r8 - r2;
        monitor-exit(r5);
        return r8;
    L_0x0061:
        r3 = r5.fillbuf(r1, r0);	 Catch:{ all -> 0x00a6 }
        if (r3 != r4) goto L_0x006e;
    L_0x0067:
        if (r2 != r8) goto L_0x006b;
    L_0x0069:
        monitor-exit(r5);
        return r4;
    L_0x006b:
        r8 = r8 - r2;
        monitor-exit(r5);
        return r8;
    L_0x006e:
        r3 = r5.buf;	 Catch:{ all -> 0x00a6 }
        if (r0 == r3) goto L_0x007e;
    L_0x0072:
        r0 = r5.buf;	 Catch:{ all -> 0x00a6 }
        if (r0 != 0) goto L_0x007e;
    L_0x0076:
        r6 = new java.io.IOException;	 Catch:{ all -> 0x00a6 }
        r7 = "BufferedInputStream is closed";
        r6.<init>(r7);	 Catch:{ all -> 0x00a6 }
        throw r6;	 Catch:{ all -> 0x00a6 }
    L_0x007e:
        r3 = r5.count;	 Catch:{ all -> 0x00a6 }
        r4 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r3 = r3 - r4;
        if (r3 < r2) goto L_0x0087;
    L_0x0085:
        r3 = r2;
        goto L_0x008c;
    L_0x0087:
        r3 = r5.count;	 Catch:{ all -> 0x00a6 }
        r4 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r3 = r3 - r4;
    L_0x008c:
        r4 = r5.pos;	 Catch:{ all -> 0x00a6 }
        java.lang.System.arraycopy(r0, r4, r6, r7, r3);	 Catch:{ all -> 0x00a6 }
        r4 = r5.pos;	 Catch:{ all -> 0x00a6 }
        r4 = r4 + r3;
        r5.pos = r4;	 Catch:{ all -> 0x00a6 }
    L_0x0096:
        r2 = r2 - r3;
        if (r2 != 0) goto L_0x009b;
    L_0x0099:
        monitor-exit(r5);
        return r8;
    L_0x009b:
        r4 = r1.available();	 Catch:{ all -> 0x00a6 }
        if (r4 != 0) goto L_0x00a4;
    L_0x00a1:
        r8 = r8 - r2;
        monitor-exit(r5);
        return r8;
    L_0x00a4:
        r7 = r7 + r3;
        goto L_0x004c;
    L_0x00a6:
        r6 = move-exception;
        monitor-exit(r5);
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream.read(byte[], int, int):int");
    }

    public final synchronized void reset() throws IOException {
        if (this.buf == null) {
            throw new IOException("Stream is closed");
        } else if (-1 == this.markpos) {
            throw new InvalidMarkException("Mark has been invalidated");
        } else {
            this.pos = this.markpos;
        }
    }

    public final synchronized long skip(long j) throws IOException {
        byte[] bArr = this.buf;
        InputStream inputStream = this.in;
        if (bArr == null) {
            throw new IOException("BufferedInputStream is closed");
        } else if (j < 1) {
            return 0;
        } else {
            if (inputStream == null) {
                throw new IOException("BufferedInputStream is closed");
            } else if (((long) (this.count - this.pos)) >= j) {
                this.pos = (int) (((long) this.pos) + j);
                return j;
            } else {
                long j2 = (long) (this.count - this.pos);
                this.pos = this.count;
                if (this.markpos == -1 || j > ((long) this.marklimit)) {
                    return j2 + inputStream.skip(j - j2);
                } else if (fillbuf(inputStream, bArr) == -1) {
                    return j2;
                } else {
                    long j3 = j - j2;
                    if (((long) (this.count - this.pos)) >= j3) {
                        this.pos = (int) (((long) this.pos) + j3);
                        return j;
                    }
                    j2 = (j2 + ((long) this.count)) - ((long) this.pos);
                    this.pos = this.count;
                    return j2;
                }
            }
        }
    }
}
