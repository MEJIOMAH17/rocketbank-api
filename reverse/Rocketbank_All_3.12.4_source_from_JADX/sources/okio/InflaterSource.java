package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.Inflater;

public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.source = bufferedSource;
            this.inflater = inflater;
        }
    }

    public final long read(Buffer buffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0;
        } else {
            int i;
            do {
                Segment segment;
                i = 0;
                if (this.inflater.needsInput()) {
                    releaseInflatedBytes();
                    if (this.inflater.getRemaining() != 0) {
                        throw new IllegalStateException("?");
                    } else if (this.source.exhausted()) {
                        i = 1;
                    } else {
                        segment = this.source.buffer().head;
                        this.bufferBytesHeldByInflater = segment.limit - segment.pos;
                        this.inflater.setInput(segment.data, segment.pos, this.bufferBytesHeldByInflater);
                    }
                }
                try {
                    segment = buffer.writableSegment(1);
                    int inflate = this.inflater.inflate(segment.data, segment.limit, (int) Math.min(j, (long) (8192 - segment.limit)));
                    if (inflate > 0) {
                        segment.limit += inflate;
                        long j2 = (long) inflate;
                        buffer.size += j2;
                        return j2;
                    }
                    if (!this.inflater.finished()) {
                        if (this.inflater.needsDictionary()) {
                        }
                    }
                    releaseInflatedBytes();
                    if (segment.pos == segment.limit) {
                        buffer.head = segment.pop();
                        SegmentPool.recycle(segment);
                    }
                    return -1;
                } catch (Buffer buffer2) {
                    throw new IOException(buffer2);
                }
            } while (i == 0);
            throw new EOFException("source exhausted prematurely");
        }
    }

    private void releaseInflatedBytes() throws IOException {
        if (this.bufferBytesHeldByInflater != 0) {
            int remaining = this.bufferBytesHeldByInflater - this.inflater.getRemaining();
            this.bufferBytesHeldByInflater -= remaining;
            this.source.skip((long) remaining);
        }
    }

    public final Timeout timeout() {
        return this.source.timeout();
    }

    public final void close() throws IOException {
        if (!this.closed) {
            this.inflater.end();
            this.closed = true;
            this.source.close();
        }
    }
}
