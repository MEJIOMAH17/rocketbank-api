package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public final class ByteArrayOutputStream extends OutputStream {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private final List<byte[]> buffers;
    private int count;
    private byte[] currentBuffer;
    private int currentBufferIndex;
    private int filledBufferSum;
    private boolean reuseBuffers;

    public final void close() throws IOException {
    }

    public ByteArrayOutputStream() {
        this((byte) 0);
    }

    private ByteArrayOutputStream(byte b) {
        this.buffers = new ArrayList();
        this.reuseBuffers = true;
        synchronized (this) {
            needNewBuffer((byte) 0);
        }
    }

    private void needNewBuffer(int i) {
        if (this.currentBufferIndex < this.buffers.size() - 1) {
            this.filledBufferSum += this.currentBuffer.length;
            this.currentBufferIndex++;
            this.currentBuffer = (byte[]) this.buffers.get(this.currentBufferIndex);
            return;
        }
        if (this.currentBuffer == null) {
            this.filledBufferSum = 0;
        } else {
            i = Math.max(this.currentBuffer.length << 1, i - this.filledBufferSum);
            this.filledBufferSum += this.currentBuffer.length;
        }
        this.currentBufferIndex++;
        this.currentBuffer = new byte[i];
        this.buffers.add(this.currentBuffer);
    }

    public final void write(byte[] bArr, int i, int i2) {
        if (i >= 0 && i <= bArr.length && i2 >= 0) {
            i += i2;
            if (i <= bArr.length) {
                if (i >= 0) {
                    if (i2 != 0) {
                        synchronized (this) {
                            int i3 = this.count + i2;
                            int i4 = this.count - this.filledBufferSum;
                            while (i2 > 0) {
                                int min = Math.min(i2, this.currentBuffer.length - i4);
                                System.arraycopy(bArr, i - i2, this.currentBuffer, i4, min);
                                i2 -= min;
                                if (i2 > 0) {
                                    needNewBuffer(i3);
                                    i4 = 0;
                                }
                            }
                            this.count = i3;
                        }
                        return;
                    }
                    return;
                }
            }
        }
        throw new IndexOutOfBoundsException();
    }

    public final synchronized void write(int i) {
        int i2 = this.count - this.filledBufferSum;
        if (i2 == this.currentBuffer.length) {
            needNewBuffer(this.count + 1);
            i2 = 0;
        }
        this.currentBuffer[i2] = (byte) i;
        this.count++;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized byte[] toByteArray() {
        /*
        r7 = this;
        monitor-enter(r7);
        r0 = r7.count;	 Catch:{ all -> 0x002d }
        if (r0 != 0) goto L_0x0009;
    L_0x0005:
        r0 = EMPTY_BYTE_ARRAY;	 Catch:{ all -> 0x002d }
        monitor-exit(r7);
        return r0;
    L_0x0009:
        r1 = new byte[r0];	 Catch:{ all -> 0x002d }
        r2 = r7.buffers;	 Catch:{ all -> 0x002d }
        r2 = r2.iterator();	 Catch:{ all -> 0x002d }
        r3 = 0;
        r4 = r3;
    L_0x0013:
        r5 = r2.hasNext();	 Catch:{ all -> 0x002d }
        if (r5 == 0) goto L_0x002b;
    L_0x0019:
        r5 = r2.next();	 Catch:{ all -> 0x002d }
        r5 = (byte[]) r5;	 Catch:{ all -> 0x002d }
        r6 = r5.length;	 Catch:{ all -> 0x002d }
        r6 = java.lang.Math.min(r6, r0);	 Catch:{ all -> 0x002d }
        java.lang.System.arraycopy(r5, r3, r1, r4, r6);	 Catch:{ all -> 0x002d }
        r4 = r4 + r6;
        r0 = r0 - r6;
        if (r0 != 0) goto L_0x0013;
    L_0x002b:
        monitor-exit(r7);
        return r1;
    L_0x002d:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.output.ByteArrayOutputStream.toByteArray():byte[]");
    }

    @Deprecated
    public final String toString() {
        return new String(toByteArray(), Charset.defaultCharset());
    }
}
