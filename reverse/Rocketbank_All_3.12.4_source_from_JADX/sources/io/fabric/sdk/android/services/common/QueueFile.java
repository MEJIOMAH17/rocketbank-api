package io.fabric.sdk.android.services.common;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.WritableByteChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QueueFile implements Closeable {
    static final int HEADER_LENGTH = 16;
    private static final int INITIAL_LENGTH = 4096;
    private static final Logger LOGGER = Logger.getLogger(QueueFile.class.getName());
    private final byte[] buffer;
    private int elementCount;
    int fileLength;
    private Element first;
    private Element last;
    private final RandomAccessFile raf;

    static class Element {
        static final int HEADER_LENGTH = 4;
        static final Element NULL = new Element(0, 0);
        final int length;
        final int position;

        Element(int i, int i2) {
            this.position = i;
            this.length = i2;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getClass().getSimpleName());
            stringBuilder.append("[position = ");
            stringBuilder.append(this.position);
            stringBuilder.append(", length = ");
            stringBuilder.append(this.length);
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
    }

    private final class ElementInputStream extends InputStream {
        private int position;
        private int remaining;

        private ElementInputStream(Element element) {
            this.position = QueueFile.this.wrapPosition(element.position + 4);
            this.remaining = element.length;
        }

        public final int read(byte[] bArr, int i, int i2) throws IOException {
            QueueFile.nonNull(bArr, "buffer");
            if ((i | i2) >= 0) {
                if (i2 <= bArr.length - i) {
                    if (this.remaining <= 0) {
                        return -1;
                    }
                    if (i2 > this.remaining) {
                        i2 = this.remaining;
                    }
                    QueueFile.this.ringRead(this.position, bArr, i, i2);
                    this.position = QueueFile.this.wrapPosition(this.position + i2);
                    this.remaining -= i2;
                    return i2;
                }
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        public final int read() throws IOException {
            if (this.remaining == 0) {
                return -1;
            }
            QueueFile.this.raf.seek((long) this.position);
            int read = QueueFile.this.raf.read();
            this.position = QueueFile.this.wrapPosition(this.position + 1);
            this.remaining--;
            return read;
        }
    }

    public interface ElementReader {
        void read(InputStream inputStream, int i) throws IOException;
    }

    public QueueFile(File file) throws IOException {
        this.buffer = new byte[16];
        if (!file.exists()) {
            initialize(file);
        }
        this.raf = open(file);
        readHeader();
    }

    QueueFile(RandomAccessFile randomAccessFile) throws IOException {
        this.buffer = new byte[16];
        this.raf = randomAccessFile;
        readHeader();
    }

    private static void writeInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void writeInts(byte[] bArr, int... iArr) {
        int i = 0;
        int length = iArr.length;
        int i2 = 0;
        while (i < length) {
            writeInt(bArr, i2, iArr[i]);
            i2 += 4;
            i++;
        }
    }

    private static int readInt(byte[] bArr, int i) {
        return ((((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16)) + ((bArr[i + 2] & 255) << 8)) + (bArr[i + 3] & 255);
    }

    private void readHeader() throws IOException {
        this.raf.seek(0);
        this.raf.readFully(this.buffer);
        this.fileLength = readInt(this.buffer, 0);
        if (((long) this.fileLength) > this.raf.length()) {
            StringBuilder stringBuilder = new StringBuilder("File is truncated. Expected length: ");
            stringBuilder.append(this.fileLength);
            stringBuilder.append(", Actual length: ");
            stringBuilder.append(this.raf.length());
            throw new IOException(stringBuilder.toString());
        }
        this.elementCount = readInt(this.buffer, 4);
        int readInt = readInt(this.buffer, 8);
        int readInt2 = readInt(this.buffer, 12);
        this.first = readElement(readInt);
        this.last = readElement(readInt2);
    }

    private void writeHeader(int i, int i2, int i3, int i4) throws IOException {
        writeInts(this.buffer, i, i2, i3, i4);
        this.raf.seek(0);
        this.raf.write(this.buffer);
    }

    private Element readElement(int i) throws IOException {
        if (i == 0) {
            return Element.NULL;
        }
        this.raf.seek((long) i);
        return new Element(i, this.raf.readInt());
    }

    private static void initialize(File file) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(file.getPath());
        stringBuilder.append(".tmp");
        File file2 = new File(stringBuilder.toString());
        RandomAccessFile open = open(file2);
        try {
            open.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            open.seek(0);
            byte[] bArr = new byte[16];
            writeInts(bArr, 4096, 0, 0, 0);
            open.write(bArr);
            if (file2.renameTo(file) == null) {
                throw new IOException("Rename failed!");
            }
        } finally {
            open.close();
        }
    }

    private static RandomAccessFile open(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private int wrapPosition(int i) {
        return i < this.fileLength ? i : (i + 16) - this.fileLength;
    }

    private void ringWrite(int i, byte[] bArr, int i2, int i3) throws IOException {
        i = wrapPosition(i);
        if (i + i3 <= this.fileLength) {
            this.raf.seek((long) i);
            this.raf.write(bArr, i2, i3);
            return;
        }
        int i4 = this.fileLength - i;
        this.raf.seek((long) i);
        this.raf.write(bArr, i2, i4);
        this.raf.seek(16);
        this.raf.write(bArr, i2 + i4, i3 - i4);
    }

    private void ringRead(int i, byte[] bArr, int i2, int i3) throws IOException {
        i = wrapPosition(i);
        if (i + i3 <= this.fileLength) {
            this.raf.seek((long) i);
            this.raf.readFully(bArr, i2, i3);
            return;
        }
        int i4 = this.fileLength - i;
        this.raf.seek((long) i);
        this.raf.readFully(bArr, i2, i4);
        this.raf.seek(16);
        this.raf.readFully(bArr, i2 + i4, i3 - i4);
    }

    public void add(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public synchronized void add(byte[] bArr, int i, int i2) throws IOException {
        nonNull(bArr, "buffer");
        if ((i | i2) >= 0) {
            if (i2 <= bArr.length - i) {
                int i3;
                expandIfNecessary(i2);
                boolean isEmpty = isEmpty();
                if (isEmpty) {
                    i3 = 16;
                } else {
                    i3 = wrapPosition((this.last.position + 4) + this.last.length);
                }
                Element element = new Element(i3, i2);
                writeInt(this.buffer, 0, i2);
                ringWrite(element.position, this.buffer, 0, 4);
                ringWrite(element.position + 4, bArr, i, i2);
                writeHeader(this.fileLength, this.elementCount + 1, isEmpty ? element.position : this.first.position, element.position);
                this.last = element;
                this.elementCount++;
                if (isEmpty) {
                    this.first = this.last;
                }
            }
        }
        throw new IndexOutOfBoundsException();
    }

    public int usedBytes() {
        if (this.elementCount == 0) {
            return 16;
        }
        if (this.last.position >= this.first.position) {
            return (((this.last.position - this.first.position) + 4) + this.last.length) + 16;
        }
        return (((this.last.position + 4) + this.last.length) + this.fileLength) - this.first.position;
    }

    private int remainingBytes() {
        return this.fileLength - usedBytes();
    }

    public synchronized boolean isEmpty() {
        return this.elementCount == 0;
    }

    private void expandIfNecessary(int i) throws IOException {
        i += 4;
        int remainingBytes = remainingBytes();
        if (remainingBytes < i) {
            int i2 = this.fileLength;
            do {
                remainingBytes += i2;
                i2 <<= 1;
            } while (remainingBytes < i);
            setLength(i2);
            i = wrapPosition((this.last.position + 4) + this.last.length);
            if (i < this.first.position) {
                WritableByteChannel channel = this.raf.getChannel();
                channel.position((long) this.fileLength);
                long j = (long) (i - 4);
                if (channel.transferTo(16, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.last.position < this.first.position) {
                i = (this.fileLength + this.last.position) - 16;
                writeHeader(i2, this.elementCount, this.first.position, i);
                this.last = new Element(i, this.last.length);
            } else {
                writeHeader(i2, this.elementCount, this.first.position, this.last.position);
            }
            this.fileLength = i2;
        }
    }

    private void setLength(int i) throws IOException {
        this.raf.setLength((long) i);
        this.raf.getChannel().force(true);
    }

    public synchronized byte[] peek() throws IOException {
        if (isEmpty()) {
            return null;
        }
        int i = this.first.length;
        byte[] bArr = new byte[i];
        ringRead(this.first.position + 4, bArr, 0, i);
        return bArr;
    }

    public synchronized void peek(ElementReader elementReader) throws IOException {
        if (this.elementCount > 0) {
            elementReader.read(new ElementInputStream(this.first), this.first.length);
        }
    }

    public synchronized void forEach(ElementReader elementReader) throws IOException {
        int i = this.first.position;
        for (int i2 = 0; i2 < this.elementCount; i2++) {
            Element readElement = readElement(i);
            elementReader.read(new ElementInputStream(readElement), readElement.length);
            i = wrapPosition((readElement.position + 4) + readElement.length);
        }
    }

    private static <T> T nonNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public synchronized int size() {
        return this.elementCount;
    }

    public synchronized void remove() throws IOException {
        if (isEmpty()) {
            throw new NoSuchElementException();
        } else if (this.elementCount == 1) {
            clear();
        } else {
            int wrapPosition = wrapPosition((this.first.position + 4) + this.first.length);
            ringRead(wrapPosition, this.buffer, 0, 4);
            int readInt = readInt(this.buffer, 0);
            writeHeader(this.fileLength, this.elementCount - 1, wrapPosition, this.last.position);
            this.elementCount--;
            this.first = new Element(wrapPosition, readInt);
        }
    }

    public synchronized void clear() throws IOException {
        writeHeader(4096, 0, 0, 0);
        this.elementCount = 0;
        this.first = Element.NULL;
        this.last = Element.NULL;
        if (this.fileLength > 4096) {
            setLength(4096);
        }
        this.fileLength = 4096;
    }

    public synchronized void close() throws IOException {
        this.raf.close();
    }

    public boolean hasSpaceFor(int i, int i2) {
        return (usedBytes() + 4) + i <= i2;
    }

    public String toString() {
        final StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append('[');
        stringBuilder.append("fileLength=");
        stringBuilder.append(this.fileLength);
        stringBuilder.append(", size=");
        stringBuilder.append(this.elementCount);
        stringBuilder.append(", first=");
        stringBuilder.append(this.first);
        stringBuilder.append(", last=");
        stringBuilder.append(this.last);
        stringBuilder.append(", element lengths=[");
        try {
            forEach(new ElementReader() {
                boolean first = true;

                public void read(InputStream inputStream, int i) throws IOException {
                    if (this.first != null) {
                        this.first = null;
                    } else {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(i);
                }
            });
        } catch (Throwable e) {
            LOGGER.log(Level.WARNING, "read error", e);
        }
        stringBuilder.append("]]");
        return stringBuilder.toString();
    }
}
