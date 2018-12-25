package com.crashlytics.android.core;

import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStream;

final class CodedOutputStream implements Flushable {
    private final byte[] buffer;
    private final int limit = 4096;
    private final OutputStream output;
    private int position = null;

    static class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    public static int computeRawVarint32Size(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (i & -268435456) == 0 ? 4 : 5;
    }

    public static int encodeZigZag32(int i) {
        return (i >> 31) ^ (i << 1);
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.output = outputStream;
        this.buffer = bArr;
    }

    private void refreshBuffer() throws IOException {
        if (this.output == null) {
            throw new OutOfSpaceException();
        }
        this.output.write(this.buffer, 0, this.position);
        this.position = 0;
    }

    public final void flush() throws IOException {
        if (this.output != null) {
            refreshBuffer();
        }
    }

    public final void writeRawBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (4096 - this.position >= length) {
            System.arraycopy(bArr, 0, this.buffer, this.position, length);
            this.position += length;
            return;
        }
        int i = 4096 - this.position;
        System.arraycopy(bArr, 0, this.buffer, this.position, i);
        length -= i;
        this.position = 4096;
        refreshBuffer();
        if (length <= 4096) {
            System.arraycopy(bArr, i, this.buffer, 0, length);
            this.position = length;
            return;
        }
        this.output.write(bArr, i, length);
    }

    public final void writeTag(int i, int i2) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, i2));
    }

    public static int computeTagSize(int i) {
        return computeRawVarint32Size(WireFormat.makeTag(i, 0));
    }

    public static CodedOutputStream newInstance(OutputStream outputStream) {
        return new CodedOutputStream(outputStream, new byte[4096]);
    }

    public final void writeUInt64(int i, long j) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, 0));
        writeRawVarint64(j);
    }

    public final void writeBool(int i, boolean z) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, 0));
        i = (byte) z;
        if (this.position) {
            refreshBuffer();
        }
        z = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        z[i2] = i;
    }

    public final void writeBytes(int i, ByteString byteString) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, 2));
        writeRawVarint32(byteString.size());
        i = byteString.size();
        if (4096 - this.position >= i) {
            byteString.copyTo(this.buffer, 0, this.position, i);
            this.position += i;
            return;
        }
        int i2 = 4096 - this.position;
        byteString.copyTo(this.buffer, 0, this.position, i2);
        i -= i2;
        this.position = 4096;
        refreshBuffer();
        if (i <= 4096) {
            byteString.copyTo(this.buffer, i2, 0, i);
            this.position = i;
            return;
        }
        byteString = byteString.newInput();
        long j = (long) i2;
        if (j != byteString.skip(j)) {
            throw new IllegalStateException("Skip failed.");
        }
        while (i > 0) {
            i2 = Math.min(i, 4096);
            int read = byteString.read(this.buffer, 0, i2);
            if (read != i2) {
                throw new IllegalStateException("Read failed.");
            }
            this.output.write(this.buffer, 0, read);
            i -= read;
        }
    }

    public final void writeUInt32(int i, int i2) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, 0));
        writeRawVarint32(i2);
    }

    public final void writeEnum(int i, int i2) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i, 0));
        if (i2 >= 0) {
            writeRawVarint32(i2);
        } else {
            writeRawVarint64((long) i2);
        }
    }

    public static int computeFloatSize$255e745() {
        return computeRawVarint32Size(WireFormat.makeTag(1, 0)) + 4;
    }

    public static int computeUInt64Size(int i, long j) {
        i = computeRawVarint32Size(WireFormat.makeTag(i, 0));
        j = (j & -128) == 0 ? 1 : (j & -16384) == 0 ? 2 : (j & -2097152) == 0 ? 3 : (j & -268435456) == 0 ? 4 : (j & -34359738368L) == 0 ? 5 : (j & -4398046511104L) == 0 ? 6 : (j & -562949953421312L) == 0 ? 7 : (j & -72057594037927936L) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10;
        return i + j;
    }

    public static int computeBoolSize$2563259(int i) {
        return computeRawVarint32Size(WireFormat.makeTag(i, 0)) + 1;
    }

    public static int computeBytesSize(int i, ByteString byteString) {
        return computeRawVarint32Size(WireFormat.makeTag(i, 0)) + (computeRawVarint32Size(byteString.size()) + byteString.size());
    }

    public static int computeUInt32Size(int i, int i2) {
        return computeRawVarint32Size(WireFormat.makeTag(i, 0)) + computeRawVarint32Size(i2);
    }

    public static int computeEnumSize(int i, int i2) {
        return computeRawVarint32Size(WireFormat.makeTag(i, 0)) + (i2 >= 0 ? computeRawVarint32Size(i2) : 10);
    }

    public static int computeSInt32Size$255f288(int i) {
        return computeRawVarint32Size(WireFormat.makeTag(2, 0)) + computeRawVarint32Size((i >> 31) ^ (i << 1));
    }

    public final void writeRawByte(int i) throws IOException {
        i = (byte) i;
        if (this.position == 4096) {
            refreshBuffer();
        }
        byte[] bArr = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr[i2] = i;
    }

    public final void writeRawVarint32(int i) throws IOException {
        while ((i & -128) != 0) {
            byte b = (byte) ((i & 127) | 128);
            if (this.position == 4096) {
                refreshBuffer();
            }
            byte[] bArr = this.buffer;
            int i2 = this.position;
            this.position = i2 + 1;
            bArr[i2] = b;
            i >>>= 7;
        }
        i = (byte) i;
        if (this.position == 4096) {
            refreshBuffer();
        }
        byte[] bArr2 = this.buffer;
        int i3 = this.position;
        this.position = i3 + 1;
        bArr2[i3] = i;
    }

    private void writeRawVarint64(long j) throws IOException {
        while ((j & -128) != 0) {
            byte b = (byte) ((((int) j) & 127) | 128);
            if (this.position == 4096) {
                refreshBuffer();
            }
            byte[] bArr = this.buffer;
            int i = this.position;
            this.position = i + 1;
            bArr[i] = b;
            j >>>= 7;
        }
        j = (byte) ((int) j);
        if (this.position == 4096) {
            refreshBuffer();
        }
        byte[] bArr2 = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr2[i2] = j;
    }
}
