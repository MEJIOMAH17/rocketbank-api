package okio;

import javax.annotation.Nullable;

final class Segment {
    final byte[] data;
    int limit;
    Segment next;
    boolean owner;
    int pos;
    Segment prev;
    boolean shared;

    Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    Segment(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.shared = 1;
        this.owner = null;
    }

    @Nullable
    public final Segment pop() {
        Segment segment = this.next != this ? this.next : null;
        this.prev.next = this.next;
        this.next.prev = this.prev;
        this.next = null;
        this.prev = null;
        return segment;
    }

    public final void writeTo(Segment segment, int i) {
        if (segment.owner) {
            if (segment.limit + i > 8192) {
                if (segment.shared) {
                    throw new IllegalArgumentException();
                } else if ((segment.limit + i) - segment.pos > 8192) {
                    throw new IllegalArgumentException();
                } else {
                    System.arraycopy(segment.data, segment.pos, segment.data, 0, segment.limit - segment.pos);
                    segment.limit -= segment.pos;
                    segment.pos = 0;
                }
            }
            System.arraycopy(this.data, this.pos, segment.data, segment.limit, i);
            segment.limit += i;
            this.pos += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
