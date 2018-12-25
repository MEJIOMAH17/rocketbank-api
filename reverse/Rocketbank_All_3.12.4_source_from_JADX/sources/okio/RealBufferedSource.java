package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

final class RealBufferedSource implements BufferedSource {
    public final Buffer buffer = new Buffer();
    boolean closed;
    public final Source source;

    /* renamed from: okio.RealBufferedSource$1 */
    class C07761 extends InputStream {
        C07761() {
        }

        public final int read() throws IOException {
            if (RealBufferedSource.this.closed) {
                throw new IOException("closed");
            } else if (RealBufferedSource.this.buffer.size == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            } else {
                return RealBufferedSource.this.buffer.readByte() & 255;
            }
        }

        public final int read(byte[] bArr, int i, int i2) throws IOException {
            if (RealBufferedSource.this.closed) {
                throw new IOException("closed");
            }
            Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
            if (RealBufferedSource.this.buffer.size == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return RealBufferedSource.this.buffer.read(bArr, i, i2);
        }

        public final int available() throws IOException {
            if (!RealBufferedSource.this.closed) {
                return (int) Math.min(RealBufferedSource.this.buffer.size, 2147483647L);
            }
            throw new IOException("closed");
        }

        public final void close() throws IOException {
            RealBufferedSource.this.close();
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(RealBufferedSource.this);
            stringBuilder.append(".inputStream()");
            return stringBuilder.toString();
        }
    }

    RealBufferedSource(Source source) {
        if (source == null) {
            throw new NullPointerException("source == null");
        }
        this.source = source;
    }

    public final Buffer buffer() {
        return this.buffer;
    }

    public final long read(Buffer buffer, long j) throws IOException {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else if (this.buffer.size == 0 && this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        } else {
            return this.buffer.read(buffer, Math.min(j, this.buffer.size));
        }
    }

    public final boolean exhausted() throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        return ((this.buffer.size > 0 ? 1 : (this.buffer.size == 0 ? 0 : -1)) == 0) && this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    public final void require(long j) throws IOException {
        if (request(j) == null) {
            throw new EOFException();
        }
    }

    public final boolean request(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else {
            while (this.buffer.size < j) {
                if (this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return 0;
                }
            }
            return 1;
        }
    }

    public final byte[] readByteArray() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    public final void readFully(byte[] bArr) throws IOException {
        try {
            if (request((long) bArr.length)) {
                this.buffer.readFully(bArr);
                return;
            }
            throw new EOFException();
        } catch (EOFException e) {
            int i = 0;
            while (this.buffer.size > 0) {
                int read = this.buffer.read(bArr, i, (int) this.buffer.size);
                if (read == -1) {
                    throw new AssertionError();
                }
                i += read;
            }
            throw e;
        }
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.buffer.size == 0 && this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }

    public final long readAll(Sink sink) throws IOException {
        long j = 0;
        while (this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                long j2 = j + completeSegmentByteCount;
                sink.write(this.buffer, completeSegmentByteCount);
                j = j2;
            }
        }
        if (this.buffer.size <= 0) {
            return j;
        }
        completeSegmentByteCount = j + this.buffer.size;
        sink.write(this.buffer, this.buffer.size);
        return completeSegmentByteCount;
    }

    public final String readString(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.buffer.writeAll(this.source);
        return this.buffer.readString(charset);
    }

    public final String readUtf8LineStrict() throws IOException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    public final String readUtf8LineStrict(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long indexOf = indexOf((byte) 10, 0, j2);
        if (indexOf != -1) {
            return this.buffer.readUtf8Line(indexOf);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && this.buffer.getByte(j2 - 1) == (byte) 13 && request(j2 + 1) && this.buffer.getByte(j2) == (byte) 10) {
            return this.buffer.readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        this.buffer.copyTo(buffer, 0, Math.min(32, this.buffer.size));
        StringBuilder stringBuilder = new StringBuilder("\\n not found: limit=");
        stringBuilder.append(Math.min(this.buffer.size, j));
        stringBuilder.append(" content=");
        stringBuilder.append(new ByteString(buffer.readByteArray()).hex());
        stringBuilder.append(8230);
        throw new EOFException(stringBuilder.toString());
    }

    public final void skip(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.buffer.size == 0 && this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.buffer.size);
            this.buffer.skip(min);
            j -= min;
        }
    }

    public final long indexOf$132bdb() throws IOException {
        return indexOf((byte) 0, 0, Long.MAX_VALUE);
    }

    private long indexOf(byte b, long j, long j2) throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        } else if (j2 < 0) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(0), Long.valueOf(j2)}));
        } else {
            while (j < j2) {
                long indexOf = this.buffer.indexOf(b, j, j2);
                if (indexOf != -1) {
                    return indexOf;
                }
                indexOf = this.buffer.size;
                if (indexOf < j2) {
                    if (this.source.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                        j = Math.max(j, indexOf);
                    }
                }
                return -1;
            }
            return -1;
        }
    }

    public final boolean rangeEquals$45b61a70(ByteString byteString) throws IOException {
        int size = byteString.size();
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (size >= 0) {
            if (byteString.size() >= size) {
                int i = 0;
                while (i < size) {
                    long j = 0 + ((long) i);
                    if (!request(j + 1) || this.buffer.getByte(j) != byteString.getByte(i)) {
                        return false;
                    }
                    i++;
                }
                return true;
            }
        }
        return false;
    }

    public final InputStream inputStream() {
        return new C07761();
    }

    public final boolean isOpen() {
        return !this.closed;
    }

    public final void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            this.source.close();
            Buffer buffer = this.buffer;
            try {
                buffer.skip(buffer.size);
            } catch (EOFException e) {
                throw new AssertionError(e);
            }
        }
    }

    public final Timeout timeout() {
        return this.source.timeout();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("buffer(");
        stringBuilder.append(this.source);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final byte readByte() throws IOException {
        if (request(1)) {
            return this.buffer.readByte();
        }
        throw new EOFException();
    }

    public final ByteString readByteString(long j) throws IOException {
        if (request(j)) {
            return this.buffer.readByteString(j);
        }
        throw new EOFException();
    }

    public final byte[] readByteArray(long j) throws IOException {
        if (request(j)) {
            return this.buffer.readByteArray(j);
        }
        throw new EOFException();
    }

    public final short readShort() throws IOException {
        if (request(2)) {
            return this.buffer.readShort();
        }
        throw new EOFException();
    }

    public final short readShortLe() throws IOException {
        if (request(2)) {
            return this.buffer.readShortLe();
        }
        throw new EOFException();
    }

    public final int readInt() throws IOException {
        if (request(4)) {
            return this.buffer.readInt();
        }
        throw new EOFException();
    }

    public final int readIntLe() throws IOException {
        if (request(4)) {
            return this.buffer.readIntLe();
        }
        throw new EOFException();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long readHexadecimalUnsignedLong() throws java.io.IOException {
        /*
        r6 = this;
        r0 = 1;
        r0 = r6.request(r0);
        if (r0 != 0) goto L_0x000e;
    L_0x0008:
        r0 = new java.io.EOFException;
        r0.<init>();
        throw r0;
    L_0x000e:
        r0 = 0;
        r1 = r0;
    L_0x0010:
        r2 = r1 + 1;
        r3 = (long) r2;
        r3 = r6.request(r3);
        if (r3 == 0) goto L_0x0052;
    L_0x0019:
        r3 = r6.buffer;
        r4 = (long) r1;
        r3 = r3.getByte(r4);
        r4 = 48;
        if (r3 < r4) goto L_0x0028;
    L_0x0024:
        r4 = 57;
        if (r3 <= r4) goto L_0x0039;
    L_0x0028:
        r4 = 97;
        if (r3 < r4) goto L_0x0030;
    L_0x002c:
        r4 = 102; // 0x66 float:1.43E-43 double:5.04E-322;
        if (r3 <= r4) goto L_0x0039;
    L_0x0030:
        r4 = 65;
        if (r3 < r4) goto L_0x003b;
    L_0x0034:
        r4 = 70;
        if (r3 <= r4) goto L_0x0039;
    L_0x0038:
        goto L_0x003b;
    L_0x0039:
        r1 = r2;
        goto L_0x0010;
    L_0x003b:
        if (r1 != 0) goto L_0x0052;
    L_0x003d:
        r1 = new java.lang.NumberFormatException;
        r2 = "Expected leading [0-9a-fA-F] character but was %#x";
        r4 = 1;
        r4 = new java.lang.Object[r4];
        r3 = java.lang.Byte.valueOf(r3);
        r4[r0] = r3;
        r0 = java.lang.String.format(r2, r4);
        r1.<init>(r0);
        throw r1;
    L_0x0052:
        r0 = r6.buffer;
        r0 = r0.readHexadecimalUnsignedLong();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readHexadecimalUnsignedLong():long");
    }
}
