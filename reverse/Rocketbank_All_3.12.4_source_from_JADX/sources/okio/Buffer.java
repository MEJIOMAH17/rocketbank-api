package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public final class Buffer implements Cloneable, ByteChannel, BufferedSink, BufferedSource {
    private static final byte[] DIGITS = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
    @Nullable
    Segment head;
    long size;

    /* renamed from: okio.Buffer$1 */
    class C07741 extends OutputStream {
        public final void close() {
        }

        public final void flush() {
        }

        C07741() {
        }

        public final void write(int i) {
            Buffer.this.writeByte((byte) i);
        }

        public final void write(byte[] bArr, int i, int i2) {
            Buffer.this.write(bArr, i, i2);
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Buffer.this);
            stringBuilder.append(".outputStream()");
            return stringBuilder.toString();
        }
    }

    /* renamed from: okio.Buffer$2 */
    class C07752 extends InputStream {
        public final void close() {
        }

        C07752() {
        }

        public final int read() {
            return Buffer.this.size > 0 ? Buffer.this.readByte() & 255 : -1;
        }

        public final int read(byte[] bArr, int i, int i2) {
            return Buffer.this.read(bArr, i, i2);
        }

        public final int available() {
            return (int) Math.min(Buffer.this.size, 2147483647L);
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Buffer.this);
            stringBuilder.append(".inputStream()");
            return stringBuilder.toString();
        }
    }

    public final Buffer buffer() {
        return this;
    }

    public final void close() {
    }

    public final /* bridge */ /* synthetic */ BufferedSink emitCompleteSegments() throws IOException {
        return this;
    }

    public final void flush() {
    }

    public final boolean isOpen() {
        return true;
    }

    public final long size() {
        return this.size;
    }

    public final OutputStream outputStream() {
        return new C07741();
    }

    public final boolean exhausted() {
        return this.size == 0;
    }

    public final void require(long j) throws EOFException {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    public final boolean request(long j) {
        return this.size >= j ? 1 : 0;
    }

    public final InputStream inputStream() {
        return new C07752();
    }

    public final Buffer copyTo(Buffer buffer, long j, long j2) {
        if (buffer == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 == 0) {
            return this;
        }
        buffer.size += j2;
        Segment segment = this.head;
        while (j >= ((long) (segment.limit - segment.pos))) {
            long j3 = j - ((long) (segment.limit - segment.pos));
            segment = segment.next;
            j = j3;
        }
        while (j2 > 0) {
            segment.shared = true;
            Segment segment2 = new Segment(segment.data, segment.pos, segment.limit);
            segment2.pos = (int) (((long) segment2.pos) + j);
            segment2.limit = Math.min(segment2.pos + ((int) j2), segment2.limit);
            if (buffer.head == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                j = buffer.head.prev;
                segment2.prev = j;
                segment2.next = j.next;
                j.next.prev = segment2;
                j.next = segment2;
            }
            long j4 = j2 - ((long) (segment2.limit - segment2.pos));
            segment = segment.next;
            j = 0;
            j2 = j4;
        }
        return this;
    }

    public final long completeSegmentByteCount() {
        long j = this.size;
        if (j == 0) {
            return 0;
        }
        Segment segment = this.head.prev;
        if (segment.limit < 8192 && segment.owner) {
            j -= (long) (segment.limit - segment.pos);
        }
        return j;
    }

    public final byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        this.size--;
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    public final byte getByte(long j) {
        Util.checkOffsetAndCount(this.size, j, 1);
        if (this.size - j > j) {
            Segment segment = this.head;
            while (true) {
                long j2 = (long) (segment.limit - segment.pos);
                if (j < j2) {
                    return segment.data[segment.pos + ((int) j)];
                }
                long j3 = j - j2;
                segment = segment.next;
                j = j3;
            }
        } else {
            long j4 = j - this.size;
            j = this.head.prev;
            while (true) {
                long j5 = j4 + ((long) (j.limit - j.pos));
                if (j5 >= 0) {
                    return j.data[j.pos + ((int) j5)];
                }
                j = j.prev;
                j4 = j5;
            }
        }
    }

    public final short readShort() {
        if (this.size < 2) {
            StringBuilder stringBuilder = new StringBuilder("size < 2: ");
            stringBuilder.append(this.size);
            throw new IllegalStateException(stringBuilder.toString());
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.size -= 2;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) i;
    }

    public final int readInt() {
        if (this.size < 4) {
            StringBuilder stringBuilder = new StringBuilder("size < 4: ");
            stringBuilder.append(this.size);
            throw new IllegalStateException(stringBuilder.toString());
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((((readByte() & 255) << 24) | ((readByte() & 255) << 16)) | ((readByte() & 255) << 8)) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        i3 = i4 + 1;
        i |= (bArr[i4] & 255) << 8;
        i4 = i3 + 1;
        i |= bArr[i3] & 255;
        this.size -= 4;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return i;
    }

    public final short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    public final int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    public final long readHexadecimalUnsignedLong() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i = 0;
        int i2 = 0;
        long j = 0;
        do {
            Segment segment = r0.head;
            byte[] bArr = segment.data;
            int i3 = segment.pos;
            int i4 = segment.limit;
            while (i3 < i4) {
                int i5;
                int i6 = bArr[i3];
                if (i6 >= (byte) 48 && i6 <= (byte) 57) {
                    i5 = i6 - 48;
                } else if (i6 >= (byte) 97 && i6 <= (byte) 102) {
                    i5 = (i6 - 97) + 10;
                } else if (i6 < (byte) 65 || i6 > (byte) 70) {
                    if (i != 0) {
                        i2 = 1;
                        if (i3 != i4) {
                            r0.head = segment.pop();
                            SegmentPool.recycle(segment);
                        } else {
                            segment.pos = i3;
                        }
                        if (i2 == 0) {
                            break;
                        }
                    } else {
                        StringBuilder stringBuilder = new StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
                        stringBuilder.append(Integer.toHexString(i6));
                        throw new NumberFormatException(stringBuilder.toString());
                    }
                } else {
                    i5 = (i6 - 65) + 10;
                }
                if ((j & -1152921504606846976L) != 0) {
                    Buffer writeByte = new Buffer().writeHexadecimalUnsignedLong(j).writeByte(i6);
                    StringBuilder stringBuilder2 = new StringBuilder("Number too large: ");
                    stringBuilder2.append(writeByte.readUtf8());
                    throw new NumberFormatException(stringBuilder2.toString());
                }
                i3++;
                i++;
                j = (j << 4) | ((long) i5);
            }
            if (i3 != i4) {
                segment.pos = i3;
            } else {
                r0.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            if (i2 == 0) {
                break;
            }
        } while (r0.head != null);
        r0.size -= (long) i;
        return j;
    }

    public final ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    public final ByteString readByteString(long j) throws EOFException {
        return new ByteString(readByteArray(j));
    }

    public final long readAll(Sink sink) throws IOException {
        long j = this.size;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    public final String readUtf8() {
        try {
            return readString(this.size, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final String readString(Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (Charset charset2) {
            throw new AssertionError(charset2);
        }
    }

    private String readString(long j, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        } else if (j == 0) {
            return "";
        } else {
            Segment segment = this.head;
            if (((long) segment.pos) + j > ((long) segment.limit)) {
                return new String(readByteArray(j), charset);
            }
            String str = new String(segment.data, segment.pos, (int) j, charset);
            segment.pos = (int) (((long) segment.pos) + j);
            this.size -= j;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return str;
        }
    }

    public final String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    public final String readUtf8LineStrict(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
        }
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j + 1;
        }
        long indexOf = indexOf((byte) 10, 0, j2);
        if (indexOf != -1) {
            return readUtf8Line(indexOf);
        }
        if (j2 < this.size && getByte(j2 - 1) == (byte) 13 && getByte(j2) == (byte) 10) {
            return readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0, Math.min(32, this.size));
        StringBuilder stringBuilder = new StringBuilder("\\n not found: limit=");
        stringBuilder.append(Math.min(this.size, j));
        stringBuilder.append(" content=");
        stringBuilder.append(new ByteString(buffer.readByteArray()).hex());
        stringBuilder.append(8230);
        throw new EOFException(stringBuilder.toString());
    }

    final String readUtf8Line(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (getByte(j2) == (byte) 13) {
                j = readString(j2, Util.UTF_8);
                skip(2);
                return j;
            }
        }
        j = readString(j, Util.UTF_8);
        skip(1);
        return j;
    }

    public final int readUtf8CodePoint() throws EOFException {
        if (this.size == 0) {
            throw new EOFException();
        }
        int i;
        int i2;
        byte b = getByte(0);
        int i3 = 1;
        int i4;
        if ((b & 128) == 0) {
            i = b & 127;
            i4 = 0;
            i2 = 1;
        } else if ((b & 224) == 192) {
            i = b & 31;
            i2 = 2;
            i4 = 128;
        } else if ((b & 240) == 224) {
            i = b & 15;
            i2 = 3;
            i4 = 2048;
        } else if ((b & 248) == 240) {
            i = b & 7;
            i2 = 4;
            i4 = 65536;
        } else {
            skip(1);
            return 65533;
        }
        long j = (long) i2;
        if (this.size < j) {
            StringBuilder stringBuilder = new StringBuilder("size < ");
            stringBuilder.append(i2);
            stringBuilder.append(": ");
            stringBuilder.append(this.size);
            stringBuilder.append(" (to read code point prefixed 0x");
            stringBuilder.append(Integer.toHexString(b));
            stringBuilder.append(")");
            throw new EOFException(stringBuilder.toString());
        }
        while (i3 < i2) {
            long j2 = (long) i3;
            b = getByte(j2);
            if ((b & 192) == 128) {
                i = (i << 6) | (b & 63);
                i3++;
            } else {
                skip(j2);
                return 65533;
            }
        }
        skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if ((i < 55296 || i > 57343) && i >= r6) {
            return i;
        }
        return 65533;
    }

    public final byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] readByteArray(long j) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        j = new byte[((int) j)];
        readFully(j);
        return j;
    }

    public final void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        i2 = Math.min(i2, segment.limit - segment.pos);
        System.arraycopy(segment.data, segment.pos, bArr, i, i2);
        segment.pos += i2;
        this.size -= (long) i2;
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return i2;
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, min);
        segment.pos += min;
        this.size -= (long) min;
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    public final void clear() {
        try {
            skip(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final void skip(long j) throws EOFException {
        while (j > 0) {
            if (this.head == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, (long) (this.head.limit - this.head.pos));
            long j2 = (long) min;
            this.size -= j2;
            long j3 = j - j2;
            j = this.head;
            j.pos += min;
            if (this.head.pos == this.head.limit) {
                j = this.head;
                this.head = j.pop();
                SegmentPool.recycle(j);
            }
            j = j3;
        }
    }

    public final Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.write(this);
        return this;
    }

    public final Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    public final Buffer writeUtf8(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
        } else if (i2 < i) {
            r0 = new StringBuilder("endIndex < beginIndex: ");
            r0.append(i2);
            r0.append(" < ");
            r0.append(i);
            throw new IllegalArgumentException(r0.toString());
        } else if (i2 > str.length()) {
            r0 = new StringBuilder("endIndex > string.length: ");
            r0.append(i2);
            r0.append(" > ");
            r0.append(str.length());
            throw new IllegalArgumentException(r0.toString());
        } else {
            while (i < i2) {
                char charAt = str.charAt(i);
                int i3;
                int min;
                if (charAt < '') {
                    Segment writableSegment = writableSegment(1);
                    byte[] bArr = writableSegment.data;
                    i3 = writableSegment.limit - i;
                    min = Math.min(i2, 8192 - i3);
                    int i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                    while (true) {
                        i = i4;
                        if (i >= min) {
                            break;
                        }
                        charAt = str.charAt(i);
                        if (charAt >= '') {
                            break;
                        }
                        i4 = i + 1;
                        bArr[i + i3] = (byte) charAt;
                    }
                    i3 = (i3 + i) - writableSegment.limit;
                    writableSegment.limit += i3;
                    this.size += (long) i3;
                } else if (charAt < 'ࠀ') {
                    writeByte((charAt >> 6) | 192);
                    writeByte((charAt & 63) | 128);
                    i++;
                } else {
                    if (charAt >= '?') {
                        if (charAt <= '?') {
                            i3 = i + 1;
                            if (i3 < i2) {
                                min = str.charAt(i3);
                            } else {
                                min = 0;
                            }
                            if (charAt <= '?' && min >= 56320) {
                                if (min <= 57343) {
                                    int i5 = 65536 + (((charAt & -55297) << 10) | (-56321 & min));
                                    writeByte((i5 >> 18) | 240);
                                    writeByte(((i5 >> 12) & 63) | 128);
                                    writeByte(((i5 >> 6) & 63) | 128);
                                    writeByte((i5 & 63) | 128);
                                    i += 2;
                                }
                            }
                            writeByte(63);
                            i = i3;
                        }
                    }
                    writeByte((charAt >> 12) | 224);
                    writeByte(((charAt >> 6) & 63) | 128);
                    writeByte((charAt & 63) | 128);
                    i++;
                }
            }
            return this;
        }
    }

    public final Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            StringBuilder stringBuilder = new StringBuilder("Unexpected code point: ");
            stringBuilder.append(Integer.toHexString(i));
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return this;
    }

    public final Buffer writeString(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i2 < 0) {
            i = new StringBuilder("endIndex < beginIndex: ");
            i.append(i2);
            i.append(" < 0");
            throw new IllegalArgumentException(i.toString());
        } else if (i2 > str.length()) {
            charset = new StringBuilder("endIndex > string.length: ");
            charset.append(i2);
            charset.append(" > ");
            charset.append(str.length());
            throw new IllegalArgumentException(charset.toString());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(Util.UTF_8) != 0) {
            return writeUtf8(str, 0, i2);
        } else {
            byte[] bytes = str.substring(0, i2).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
    }

    public final Buffer write(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = (long) i2;
        Util.checkOffsetAndCount((long) bArr.length, (long) i, j);
        i2 += i;
        while (i < i2) {
            Segment writableSegment = writableSegment(1);
            int min = Math.min(i2 - i, 8192 - writableSegment.limit);
            System.arraycopy(bArr, i, writableSegment.data, writableSegment.limit, min);
            i += min;
            writableSegment.limit += min;
        }
        this.size += j;
        return this;
    }

    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Segment writableSegment = writableSegment(1);
            int min = Math.min(i, 8192 - writableSegment.limit);
            byteBuffer.get(writableSegment.data, writableSegment.limit, min);
            i -= min;
            writableSegment.limit += min;
        }
        this.size += (long) remaining;
        return remaining;
    }

    public final long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    public final Buffer writeByte(int i) {
        Segment writableSegment = writableSegment(1);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        writableSegment.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
        return this;
    }

    public final Buffer writeShort(int i) {
        Segment writableSegment = writableSegment(2);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        i2 = i3 + 1;
        bArr[i3] = (byte) i;
        writableSegment.limit = i2;
        this.size += 2;
        return this;
    }

    public final Buffer writeInt(int i) {
        Segment writableSegment = writableSegment(4);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        i2 = i3 + 1;
        bArr[i3] = (byte) i;
        writableSegment.limit = i2;
        this.size += 4;
        return this;
    }

    public final Buffer writeDecimalLong(long j) {
        if (j == 0) {
            return writeByte((int) 48);
        }
        int i = 0;
        int i2 = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                j = "-9223372036854775808";
                return writeUtf8(j, 0, j.length());
            }
            i = 1;
        }
        if (j >= 100000000) {
            i2 = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i2 = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i2 = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i2 = 2;
        }
        if (i != 0) {
            i2++;
        }
        Segment writableSegment = writableSegment(i2);
        byte[] bArr = writableSegment.data;
        int i3 = writableSegment.limit + i2;
        while (j != 0) {
            i3--;
            bArr[i3] = DIGITS[(int) (j % 10)];
            j /= 10;
        }
        if (i != 0) {
            bArr[i3 - 1] = 45;
        }
        writableSegment.limit += i2;
        this.size += (long) i2;
        return this;
    }

    public final Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte((int) 48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment writableSegment = writableSegment(numberOfTrailingZeros);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        for (int i2 = (writableSegment.limit + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (j & 15)];
            j >>>= 4;
        }
        writableSegment.limit += numberOfTrailingZeros;
        this.size += (long) numberOfTrailingZeros;
        return this;
    }

    final Segment writableSegment(int i) {
        if (i > 0) {
            if (i <= 8192) {
                Segment segment;
                if (this.head == null) {
                    this.head = SegmentPool.take();
                    i = this.head;
                    Segment segment2 = this.head;
                    segment = this.head;
                    segment2.prev = segment;
                    i.next = segment;
                    return segment;
                }
                segment = this.head.prev;
                if (segment.limit + i <= 8192) {
                    if (segment.owner != 0) {
                        i = segment;
                        return i;
                    }
                }
                i = SegmentPool.take();
                i.prev = segment;
                i.next = segment.next;
                segment.next.prev = i;
                segment.next = i;
                return i;
            }
        }
        throw new IllegalArgumentException();
    }

    public final void write(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        } else if (buffer == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            Util.checkOffsetAndCount(buffer.size, 0, j);
            while (j > 0) {
                Segment segment;
                int i = 0;
                if (j < ((long) (buffer.head.limit - buffer.head.pos))) {
                    int i2;
                    segment = this.head != null ? this.head.prev : null;
                    if (segment != null && segment.owner) {
                        long j2 = j + ((long) segment.limit);
                        if (segment.shared) {
                            i2 = 0;
                        } else {
                            i2 = segment.pos;
                        }
                        if (j2 - ((long) i2) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            buffer.head.writeTo(segment, (int) j);
                            buffer.size -= j;
                            this.size += j;
                            return;
                        }
                    }
                    segment = buffer.head;
                    i2 = (int) j;
                    if (i2 > 0) {
                        if (i2 <= segment.limit - segment.pos) {
                            Segment segment2;
                            if (i2 >= 1024) {
                                segment.shared = true;
                                segment2 = new Segment(segment.data, segment.pos, segment.limit);
                            } else {
                                segment2 = SegmentPool.take();
                                System.arraycopy(segment.data, segment.pos, segment2.data, 0, i2);
                            }
                            segment2.limit = segment2.pos + i2;
                            segment.pos += i2;
                            segment = segment.prev;
                            segment2.prev = segment;
                            segment2.next = segment.next;
                            segment.next.prev = segment2;
                            segment.next = segment2;
                            buffer.head = segment2;
                        }
                    }
                    throw new IllegalArgumentException();
                }
                segment = buffer.head;
                long j3 = (long) (segment.limit - segment.pos);
                buffer.head = segment.pop();
                Segment segment3;
                if (this.head == null) {
                    this.head = segment;
                    Segment segment4 = this.head;
                    segment = this.head;
                    segment3 = this.head;
                    segment.prev = segment3;
                    segment4.next = segment3;
                } else {
                    segment3 = this.head.prev;
                    segment.prev = segment3;
                    segment.next = segment3.next;
                    segment3.next.prev = segment;
                    segment3.next = segment;
                    if (segment.prev == segment) {
                        throw new IllegalStateException();
                    } else if (segment.prev.owner) {
                        int i3 = segment.limit - segment.pos;
                        int i4 = 8192 - segment.prev.limit;
                        if (!segment.prev.shared) {
                            i = segment.prev.pos;
                        }
                        if (i3 <= i4 + i) {
                            segment.writeTo(segment.prev, i3);
                            segment.pop();
                            SegmentPool.recycle(segment);
                        }
                    }
                }
                buffer.size -= j3;
                this.size += j3;
                j -= j3;
            }
        }
    }

    public final long read(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.size == 0) {
            return -1;
        } else {
            if (j > this.size) {
                j = this.size;
            }
            buffer.write(this, j);
            return j;
        }
    }

    public final long indexOf$132bdb() {
        return indexOf((byte) 0, 0, Long.MAX_VALUE);
    }

    public final long indexOf(byte b, long j, long j2) {
        Buffer buffer = this;
        long j3 = 0;
        if (j >= 0) {
            if (j2 >= j) {
                long j4 = j2 > buffer.size ? buffer.size : j2;
                if (j == j4) {
                    return -1;
                }
                Segment segment = buffer.head;
                if (segment == null) {
                    return -1;
                }
                if (buffer.size - j >= j) {
                    while (true) {
                        long j5 = j3 + ((long) (segment.limit - segment.pos));
                        if (j5 >= j) {
                            break;
                        }
                        segment = segment.next;
                        j3 = j5;
                    }
                } else {
                    j3 = buffer.size;
                    while (j3 > j) {
                        segment = segment.prev;
                        j3 -= (long) (segment.limit - segment.pos);
                    }
                }
                long j6 = j;
                while (j3 < j4) {
                    byte[] bArr = segment.data;
                    int min = (int) Math.min((long) segment.limit, (((long) segment.pos) + j4) - j3);
                    for (int i = (int) ((((long) segment.pos) + j6) - j3); i < min; i++) {
                        if (bArr[i] == b) {
                            return ((long) (i - segment.pos)) + j3;
                        }
                    }
                    byte b2 = b;
                    long j7 = j3 + ((long) (segment.limit - segment.pos));
                    segment = segment.next;
                    j6 = j7;
                    j3 = j6;
                }
                return -1;
            }
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(buffer.size), Long.valueOf(j), Long.valueOf(j2)}));
    }

    public final boolean rangeEquals$45b61a70(ByteString byteString) {
        int size = byteString.size();
        if (size >= 0 && this.size >= ((long) size)) {
            if (byteString.size() >= size) {
                for (int i = 0; i < size; i++) {
                    if (getByte(0 + ((long) i)) != byteString.getByte(i)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final Timeout timeout() {
        return Timeout.NONE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (this.size != buffer.size) {
            return false;
        }
        long j = 0;
        if (this.size == 0) {
            return true;
        }
        Segment segment = this.head;
        obj = buffer.head;
        int i = segment.pos;
        int i2 = obj.pos;
        while (j < this.size) {
            long min = (long) Math.min(segment.limit - i, obj.limit - i2);
            int i3 = i2;
            i2 = i;
            i = 0;
            while (((long) i) < min) {
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                if (segment.data[i2] != obj.data[i3]) {
                    return false;
                }
                i++;
                i2 = i4;
                i3 = i5;
            }
            if (i2 == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            } else {
                i = i2;
            }
            if (i3 == obj.limit) {
                obj = obj.next;
                i2 = obj.pos;
            } else {
                i2 = i3;
            }
            j += min;
        }
        return true;
    }

    public final int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            for (int i2 = segment.pos; i2 < segment.limit; i2++) {
                i = (i * 31) + segment.data[i2];
            }
            segment = segment.next;
        } while (segment != this.head);
        return i;
    }

    public final Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.size == 0) {
            return buffer;
        }
        Segment segment = this.head;
        segment.shared = true;
        buffer.head = new Segment(segment.data, segment.pos, segment.limit);
        segment = buffer.head;
        Segment segment2 = buffer.head;
        Segment segment3 = buffer.head;
        segment2.prev = segment3;
        segment.next = segment3;
        segment = this.head;
        while (true) {
            segment = segment.next;
            if (segment != this.head) {
                segment2 = buffer.head.prev;
                segment.shared = true;
                segment3 = new Segment(segment.data, segment.pos, segment.limit);
                segment3.prev = segment2;
                segment3.next = segment2.next;
                segment2.next.prev = segment3;
                segment2.next = segment3;
            } else {
                buffer.size = this.size;
                return buffer;
            }
        }
    }

    public final String toString() {
        if (this.size > 2147483647L) {
            StringBuilder stringBuilder = new StringBuilder("size > Integer.MAX_VALUE: ");
            stringBuilder.append(this.size);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        ByteString byteString;
        int i = (int) this.size;
        if (i == 0) {
            byteString = ByteString.EMPTY;
        } else {
            byteString = new SegmentedByteString(this, i);
        }
        return byteString.toString();
    }
}
