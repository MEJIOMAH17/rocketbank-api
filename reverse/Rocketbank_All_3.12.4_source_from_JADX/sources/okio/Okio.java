package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import okio.AsyncTimeout.C13161;
import okio.AsyncTimeout.C13172;

public final class Okio {
    static final Logger logger = Logger.getLogger(Okio.class.getName());

    /* renamed from: okio.Okio$1 */
    class C13181 implements Sink {
        final /* synthetic */ OutputStream val$out;
        final /* synthetic */ Timeout val$timeout;

        C13181(Timeout timeout, OutputStream outputStream) {
            this.val$timeout = timeout;
            this.val$out = outputStream;
        }

        public final void write(Buffer buffer, long j) throws IOException {
            Util.checkOffsetAndCount(buffer.size, 0, j);
            while (j > 0) {
                this.val$timeout.throwIfReached();
                Segment segment = buffer.head;
                int min = (int) Math.min(j, (long) (segment.limit - segment.pos));
                this.val$out.write(segment.data, segment.pos, min);
                segment.pos += min;
                long j2 = (long) min;
                long j3 = j - j2;
                buffer.size -= j2;
                if (segment.pos == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                j = j3;
            }
        }

        public final void flush() throws IOException {
            this.val$out.flush();
        }

        public final void close() throws IOException {
            this.val$out.close();
        }

        public final Timeout timeout() {
            return this.val$timeout;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("sink(");
            stringBuilder.append(this.val$out);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    /* renamed from: okio.Okio$2 */
    class C13192 implements Source {
        final /* synthetic */ InputStream val$in;
        final /* synthetic */ Timeout val$timeout;

        C13192(Timeout timeout, InputStream inputStream) {
            this.val$timeout = timeout;
            this.val$in = inputStream;
        }

        public final long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (j == 0) {
                return 0;
            } else {
                try {
                    this.val$timeout.throwIfReached();
                    Segment writableSegment = buffer.writableSegment(1);
                    j = this.val$in.read(writableSegment.data, writableSegment.limit, (int) Math.min(j, (long) (8192 - writableSegment.limit)));
                    if (j == -1) {
                        return -1;
                    }
                    writableSegment.limit += j;
                    j = (long) j;
                    buffer.size += j;
                    return j;
                } catch (Buffer buffer2) {
                    if (Okio.isAndroidGetsocknameError(buffer2) != null) {
                        throw new IOException(buffer2);
                    }
                    throw buffer2;
                }
            }
        }

        public final void close() throws IOException {
            this.val$in.close();
        }

        public final Timeout timeout() {
            return this.val$timeout;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("source(");
            stringBuilder.append(this.val$in);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    /* renamed from: okio.Okio$4 */
    class C14234 extends AsyncTimeout {
        final /* synthetic */ Socket val$socket;

        C14234(Socket socket) {
            this.val$socket = socket;
        }

        protected final IOException newTimeoutException(@Nullable IOException iOException) {
            IOException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        protected final void timedOut() {
            Logger logger;
            Level level;
            StringBuilder stringBuilder;
            try {
                this.val$socket.close();
            } catch (Throwable e) {
                logger = Okio.logger;
                level = Level.WARNING;
                stringBuilder = new StringBuilder("Failed to close timed out socket ");
                stringBuilder.append(this.val$socket);
                logger.log(level, stringBuilder.toString(), e);
            } catch (Throwable e2) {
                if (Okio.isAndroidGetsocknameError(e2)) {
                    logger = Okio.logger;
                    level = Level.WARNING;
                    stringBuilder = new StringBuilder("Failed to close timed out socket ");
                    stringBuilder.append(this.val$socket);
                    logger.log(level, stringBuilder.toString(), e2);
                    return;
                }
                throw e2;
            }
        }
    }

    private Okio() {
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static Sink sink(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        } else {
            Timeout c14234 = new C14234(socket);
            socket = socket.getOutputStream();
            if (socket != null) {
                return new C13161(new C13181(c14234, socket));
            }
            throw new IllegalArgumentException("out == null");
        }
    }

    public static Source source(InputStream inputStream) {
        Timeout timeout = new Timeout();
        if (inputStream != null) {
            return new C13192(timeout, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    public static Source source(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return new C13192(new Timeout(), new FileInputStream(file));
    }

    public static Sink sink(File file) throws FileNotFoundException {
        return new C13181(new Timeout(), new FileOutputStream(file));
    }

    public static Source source(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        } else {
            Timeout c14234 = new C14234(socket);
            socket = socket.getInputStream();
            if (socket != null) {
                return new C13172(new C13192(c14234, socket));
            }
            throw new IllegalArgumentException("in == null");
        }
    }

    static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || assertionError.getMessage().contains("getsockname failed") == null) ? null : true;
    }
}
