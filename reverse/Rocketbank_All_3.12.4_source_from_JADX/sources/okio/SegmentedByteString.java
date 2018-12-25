package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

final class SegmentedByteString extends ByteString {
    final transient int[] directory;
    final transient byte[][] segments;

    SegmentedByteString(Buffer buffer, int i) {
        super(null);
        Util.checkOffsetAndCount(buffer.size, 0, (long) i);
        int i2 = 0;
        Segment segment = buffer.head;
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            if (segment.limit == segment.pos) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += segment.limit - segment.pos;
            i4++;
            segment = segment.next;
        }
        this.segments = new byte[i4][];
        this.directory = new int[(i4 << 1)];
        segment = buffer.head;
        buffer = null;
        while (i2 < i) {
            this.segments[buffer] = segment.data;
            i2 += segment.limit - segment.pos;
            if (i2 > i) {
                i2 = i;
            }
            this.directory[buffer] = i2;
            this.directory[this.segments.length + buffer] = segment.pos;
            segment.shared = true;
            buffer++;
            segment = segment.next;
        }
    }

    public final String utf8() {
        return toByteString().utf8();
    }

    public final String string(Charset charset) {
        return toByteString().string(charset);
    }

    public final String base64() {
        return toByteString().base64();
    }

    public final String hex() {
        return toByteString().hex();
    }

    public final ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    public final ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    public final ByteString md5() {
        return toByteString().md5();
    }

    public final ByteString sha1() {
        return toByteString().sha1();
    }

    public final ByteString sha256() {
        return toByteString().sha256();
    }

    public final ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    public final String base64Url() {
        return toByteString().base64Url();
    }

    public final ByteString substring(int i) {
        return toByteString().substring(i);
    }

    public final ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    public final byte getByte(int i) {
        int i2;
        Util.checkOffsetAndCount((long) this.directory[this.segments.length - 1], (long) i, 1);
        int segment = segment(i);
        if (segment == 0) {
            i2 = 0;
        } else {
            i2 = this.directory[segment - 1];
        }
        return this.segments[segment][(i - i2) + this.directory[this.segments.length + segment]];
    }

    private int segment(int i) {
        i = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        return i >= 0 ? i : i ^ -1;
    }

    public final int size() {
        return this.directory[this.segments.length - 1];
    }

    public final byte[] toByteArray() {
        int i = 0;
        Object obj = new byte[this.directory[this.segments.length - 1]];
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            System.arraycopy(this.segments[i], i3, obj, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return obj;
    }

    public final ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    public final void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int i = 0;
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            outputStream.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    final void write(Buffer buffer) {
        int i = 0;
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            Segment segment = new Segment(this.segments[i], i3, (i3 + i4) - i2);
            if (buffer.head == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                Segment segment2 = buffer.head.prev;
                segment.prev = segment2;
                segment.next = segment2.next;
                segment2.next.prev = segment;
                segment2.next = segment;
            }
            i++;
            i2 = i4;
        }
        buffer.size += (long) i2;
    }

    public final boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i >= 0) {
            if (i <= size() - i3) {
                int segment = segment(i);
                while (i3 > 0) {
                    int i4;
                    if (segment == 0) {
                        i4 = 0;
                    } else {
                        i4 = this.directory[segment - 1];
                    }
                    int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
                    if (!byteString.rangeEquals(i2, this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], min)) {
                        return false;
                    }
                    i += min;
                    i2 += min;
                    i3 -= min;
                    segment++;
                }
                return true;
            }
        }
        return false;
    }

    public final boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0 && i <= size() - i3 && i2 >= 0) {
            if (i2 <= bArr.length - i3) {
                int segment = segment(i);
                while (i3 > 0) {
                    int i4;
                    if (segment == 0) {
                        i4 = 0;
                    } else {
                        i4 = this.directory[segment - 1];
                    }
                    int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
                    if (!Util.arrayRangeEquals(this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], bArr, i2, min)) {
                        return false;
                    }
                    i += min;
                    i2 += min;
                    i3 -= min;
                    segment++;
                }
                return true;
            }
        }
        return false;
    }

    public final int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    public final int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    private ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    final byte[] internalArray() {
        return toByteArray();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            return byteString.size() == size() && rangeEquals(0, byteString, 0, size()) != null;
        }
    }

    public final int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        i = this.segments.length;
        int i3 = 1;
        int i4 = 0;
        while (i2 < i) {
            byte[] bArr = this.segments[i2];
            int i5 = this.directory[i + i2];
            int i6 = this.directory[i2];
            i4 = (i6 - i4) + i5;
            while (i5 < i4) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.hashCode = i3;
        return i3;
    }

    public final String toString() {
        return toByteString().toString();
    }

    private Object writeReplace() {
        return toByteString();
    }
}
