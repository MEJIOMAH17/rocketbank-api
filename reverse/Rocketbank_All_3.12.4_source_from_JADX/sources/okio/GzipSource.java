package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class GzipSource implements Source {
    private final CRC32 crc = new CRC32();
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private int section = 0;
    private final BufferedSource source;

    public GzipSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.inflater = new Inflater(true);
        this.source = Okio.buffer(source);
        this.inflaterSource = new InflaterSource(this.source, this.inflater);
    }

    public final long read(Buffer buffer, long j) throws IOException {
        GzipSource gzipSource = this;
        Buffer buffer2 = buffer;
        long j2 = j;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (j2 == 0) {
            return 0;
        } else {
            if (gzipSource.section == 0) {
                long indexOf$132bdb;
                gzipSource.source.require(10);
                byte b = gzipSource.source.buffer().getByte(3);
                int i = ((b >> 1) & 1) == 1 ? 1 : 0;
                if (i != 0) {
                    updateCrc(gzipSource.source.buffer(), 0, 10);
                }
                checkEqual("ID1ID2", 8075, gzipSource.source.readShort());
                gzipSource.source.skip(8);
                if (((b >> 2) & 1) == 1) {
                    long j3;
                    gzipSource.source.require(2);
                    if (i != 0) {
                        updateCrc(gzipSource.source.buffer(), 0, 2);
                    }
                    long readShortLe = (long) gzipSource.source.buffer().readShortLe();
                    gzipSource.source.require(readShortLe);
                    if (i != 0) {
                        j3 = readShortLe;
                        updateCrc(gzipSource.source.buffer(), 0, readShortLe);
                    } else {
                        j3 = readShortLe;
                    }
                    gzipSource.source.skip(j3);
                }
                if (((b >> 3) & 1) == 1) {
                    indexOf$132bdb = gzipSource.source.indexOf$132bdb();
                    if (indexOf$132bdb == -1) {
                        throw new EOFException();
                    }
                    if (i != 0) {
                        updateCrc(gzipSource.source.buffer(), 0, indexOf$132bdb + 1);
                    }
                    gzipSource.source.skip(indexOf$132bdb + 1);
                }
                if (((b >> 4) & 1) == 1) {
                    indexOf$132bdb = gzipSource.source.indexOf$132bdb();
                    if (indexOf$132bdb == -1) {
                        throw new EOFException();
                    }
                    if (i != 0) {
                        updateCrc(gzipSource.source.buffer(), 0, indexOf$132bdb + 1);
                    }
                    gzipSource.source.skip(indexOf$132bdb + 1);
                }
                if (i != 0) {
                    checkEqual("FHCRC", gzipSource.source.readShortLe(), (short) ((int) gzipSource.crc.getValue()));
                    gzipSource.crc.reset();
                }
                gzipSource.section = 1;
            }
            if (gzipSource.section == 1) {
                long j4 = buffer2.size;
                j2 = gzipSource.inflaterSource.read(buffer2, j2);
                if (j2 != -1) {
                    updateCrc(buffer2, j4, j2);
                    return j2;
                }
                gzipSource.section = 2;
            }
            if (gzipSource.section == 2) {
                checkEqual("CRC", gzipSource.source.readIntLe(), (int) gzipSource.crc.getValue());
                checkEqual("ISIZE", gzipSource.source.readIntLe(), (int) gzipSource.inflater.getBytesWritten());
                gzipSource.section = 3;
                if (!gzipSource.source.exhausted()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    public final Timeout timeout() {
        return this.source.timeout();
    }

    public final void close() throws IOException {
        this.inflaterSource.close();
    }

    private void updateCrc(Buffer buffer, long j, long j2) {
        buffer = buffer.head;
        while (j >= ((long) (buffer.limit - buffer.pos))) {
            long j3 = j - ((long) (buffer.limit - buffer.pos));
            buffer = buffer.next;
            j = j3;
        }
        while (j2 > 0) {
            j = (int) (((long) buffer.pos) + j);
            int min = (int) Math.min((long) (buffer.limit - j), j2);
            this.crc.update(buffer.data, j, min);
            j3 = j2 - ((long) min);
            buffer = buffer.next;
            j = 0;
            j2 = j3;
        }
    }

    private static void checkEqual(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}));
        }
    }
}
