package okhttp3.internal.http1;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.maps.android.C0651R;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy.Type;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class Http1Codec implements HttpCodec {
    final OkHttpClient client;
    private long headerLimit = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    final BufferedSink sink;
    final BufferedSource source;
    int state = 0;
    final StreamAllocation streamAllocation;

    abstract class AbstractSource implements Source {
        protected long bytesRead;
        protected boolean closed;
        protected final ForwardingTimeout timeout;

        private AbstractSource() {
            this.timeout = new ForwardingTimeout(Http1Codec.this.source.timeout());
            this.bytesRead = 0;
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public long read(Buffer buffer, long j) throws IOException {
            try {
                buffer = Http1Codec.this.source.read(buffer, j);
                if (buffer > 0) {
                    this.bytesRead += buffer;
                }
                return buffer;
            } catch (Buffer buffer2) {
                endOfInput$173a006b(0);
                throw buffer2;
            }
        }

        protected final void endOfInput$173a006b(boolean z) throws IOException {
            if (Http1Codec.this.state != 6) {
                if (Http1Codec.this.state != 5) {
                    StringBuilder stringBuilder = new StringBuilder("state: ");
                    stringBuilder.append(Http1Codec.this.state);
                    throw new IllegalStateException(stringBuilder.toString());
                }
                ForwardingTimeout forwardingTimeout = this.timeout;
                Timeout delegate = forwardingTimeout.delegate();
                forwardingTimeout.setDelegate(Timeout.NONE);
                delegate.clearDeadline();
                delegate.clearTimeout();
                Http1Codec.this.state = 6;
                if (Http1Codec.this.streamAllocation != null) {
                    Http1Codec.this.streamAllocation.streamFinished$50294127(z ^ 1, Http1Codec.this);
                }
            }
        }
    }

    final class ChunkedSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout = new ForwardingTimeout(Http1Codec.this.sink.timeout());

        ChunkedSink() {
        }

        public final Timeout timeout() {
            return this.timeout;
        }

        public final void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                Http1Codec.this.sink.writeHexadecimalUnsignedLong(j);
                Http1Codec.this.sink.writeUtf8("\r\n");
                Http1Codec.this.sink.write(buffer, j);
                Http1Codec.this.sink.writeUtf8("\r\n");
            }
        }

        public final synchronized void flush() throws IOException {
            if (!this.closed) {
                Http1Codec.this.sink.flush();
            }
        }

        public final synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                Http1Codec.this.sink.writeUtf8("0\r\n\r\n");
                ForwardingTimeout forwardingTimeout = this.timeout;
                Timeout delegate = forwardingTimeout.delegate();
                forwardingTimeout.setDelegate(Timeout.NONE);
                delegate.clearDeadline();
                delegate.clearTimeout();
                Http1Codec.this.state = 3;
            }
        }
    }

    final class FixedLengthSink implements Sink {
        private long bytesRemaining;
        private boolean closed;
        private final ForwardingTimeout timeout = new ForwardingTimeout(Http1Codec.this.sink.timeout());

        FixedLengthSink(long j) {
            this.bytesRemaining = j;
        }

        public final Timeout timeout() {
            return this.timeout;
        }

        public final void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(buffer.size(), 0, j);
            if (j > this.bytesRemaining) {
                StringBuilder stringBuilder = new StringBuilder("expected ");
                stringBuilder.append(this.bytesRemaining);
                stringBuilder.append(" bytes but received ");
                stringBuilder.append(j);
                throw new ProtocolException(stringBuilder.toString());
            }
            Http1Codec.this.sink.write(buffer, j);
            this.bytesRemaining -= j;
        }

        public final void flush() throws IOException {
            if (!this.closed) {
                Http1Codec.this.sink.flush();
            }
        }

        public final void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                if (this.bytesRemaining > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                ForwardingTimeout forwardingTimeout = this.timeout;
                Timeout delegate = forwardingTimeout.delegate();
                forwardingTimeout.setDelegate(Timeout.NONE);
                delegate.clearDeadline();
                delegate.clearTimeout();
                Http1Codec.this.state = 3;
            }
        }
    }

    class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk = -1;
        private boolean hasMoreChunks = true;
        private final HttpUrl url;

        ChunkedSource(HttpUrl httpUrl) {
            super();
            this.url = httpUrl;
        }

        public final long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (!this.hasMoreChunks) {
                return -1;
            } else {
                if (this.bytesRemainingInChunk == 0 || this.bytesRemainingInChunk == -1) {
                    if (this.bytesRemainingInChunk != -1) {
                        Http1Codec.this.source.readUtf8LineStrict();
                    }
                    try {
                        this.bytesRemainingInChunk = Http1Codec.this.source.readHexadecimalUnsignedLong();
                        String trim = Http1Codec.this.source.readUtf8LineStrict().trim();
                        if (this.bytesRemainingInChunk >= 0) {
                            if (trim.isEmpty() || trim.startsWith(";")) {
                                if (this.bytesRemainingInChunk == 0) {
                                    this.hasMoreChunks = false;
                                    HttpHeaders.receiveHeaders(Http1Codec.this.client.cookieJar(), this.url, Http1Codec.this.readHeaders());
                                    endOfInput$173a006b(true);
                                }
                                if (!this.hasMoreChunks) {
                                    return -1;
                                }
                            }
                        }
                        j = new StringBuilder("expected chunk size and optional extensions but was \"");
                        j.append(this.bytesRemainingInChunk);
                        j.append(trim);
                        j.append("\"");
                        throw new ProtocolException(j.toString());
                    } catch (Buffer buffer2) {
                        throw new ProtocolException(buffer2.getMessage());
                    }
                }
                buffer2 = super.read(buffer2, Math.min(j, this.bytesRemainingInChunk));
                if (buffer2 == -1) {
                    buffer2 = new ProtocolException("unexpected end of stream");
                    endOfInput$173a006b(false);
                    throw buffer2;
                }
                this.bytesRemainingInChunk -= buffer2;
                return buffer2;
            }
        }

        public final void close() throws IOException {
            if (!this.closed) {
                if (this.hasMoreChunks && !Util.discard$1a4e8ddd(this, TimeUnit.MILLISECONDS)) {
                    endOfInput$173a006b(false);
                }
                this.closed = true;
            }
        }
    }

    class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        FixedLengthSource(long j) throws IOException {
            super();
            this.bytesRemaining = j;
            if (this.bytesRemaining == 0) {
                endOfInput$173a006b(true);
            }
        }

        public final long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.bytesRemaining == 0) {
                return -1;
            } else {
                buffer = super.read(buffer, Math.min(this.bytesRemaining, j));
                if (buffer == -1) {
                    buffer = new ProtocolException("unexpected end of stream");
                    endOfInput$173a006b(0);
                    throw buffer;
                }
                this.bytesRemaining -= buffer;
                if (this.bytesRemaining == 0) {
                    endOfInput$173a006b(true);
                }
                return buffer;
            }
        }

        public final void close() throws IOException {
            if (!this.closed) {
                if (!(this.bytesRemaining == 0 || Util.discard$1a4e8ddd(this, TimeUnit.MILLISECONDS))) {
                    endOfInput$173a006b(false);
                }
                this.closed = true;
            }
        }
    }

    class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        UnknownLengthSource() {
            super();
        }

        public final long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.inputExhausted) {
                return -1;
            } else {
                buffer = super.read(buffer, j);
                if (buffer != -1) {
                    return buffer;
                }
                this.inputExhausted = true;
                endOfInput$173a006b(true);
                return -1;
            }
        }

        public final void close() throws IOException {
            if (!this.closed) {
                if (!this.inputExhausted) {
                    endOfInput$173a006b(false);
                }
                this.closed = true;
            }
        }
    }

    public Http1Codec(OkHttpClient okHttpClient, StreamAllocation streamAllocation, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.client = okHttpClient;
        this.streamAllocation = streamAllocation;
        this.source = bufferedSource;
        this.sink = bufferedSink;
    }

    public final Sink createRequestBody(Request request, long j) {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding")) != null) {
            if (this.state != 1) {
                j = new StringBuilder("state: ");
                j.append(this.state);
                throw new IllegalStateException(j.toString());
            }
            this.state = 2;
            return new ChunkedSink();
        } else if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        } else if (this.state != 1) {
            j = new StringBuilder("state: ");
            j.append(this.state);
            throw new IllegalStateException(j.toString());
        } else {
            this.state = 2;
            return new FixedLengthSink(j);
        }
    }

    public final void cancel() {
        RealConnection connection = this.streamAllocation.connection();
        if (connection != null) {
            connection.cancel();
        }
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        Type type = this.streamAllocation.connection().route().proxy().type();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(request.method());
        stringBuilder.append(' ');
        Object obj = (request.isHttps() || type != Type.HTTP) ? null : 1;
        if (obj != null) {
            stringBuilder.append(request.url());
        } else {
            stringBuilder.append(RequestLine.requestPath(request.url()));
        }
        stringBuilder.append(" HTTP/1.1");
        writeRequest(request.headers(), stringBuilder.toString());
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        String header = response.header("Content-Type");
        if (!HttpHeaders.hasBody(response)) {
            return new RealResponseBody(header, 0, Okio.buffer(newFixedLengthSource(0)));
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            response = response.request().url();
            if (this.state != 4) {
                StringBuilder stringBuilder = new StringBuilder("state: ");
                stringBuilder.append(this.state);
                throw new IllegalStateException(stringBuilder.toString());
            }
            this.state = 5;
            return new RealResponseBody(header, -1, Okio.buffer(new ChunkedSource(response)));
        }
        long contentLength = HttpHeaders.contentLength(response);
        if (contentLength != -1) {
            return new RealResponseBody(header, contentLength, Okio.buffer(newFixedLengthSource(contentLength)));
        }
        if (this.state != 4) {
            stringBuilder = new StringBuilder("state: ");
            stringBuilder.append(this.state);
            throw new IllegalStateException(stringBuilder.toString());
        } else if (this.streamAllocation == null) {
            throw new IllegalStateException("streamAllocation == null");
        } else {
            this.state = 5;
            this.streamAllocation.noNewStreams();
            return new RealResponseBody(header, -1, Okio.buffer(new UnknownLengthSource()));
        }
    }

    public final void flushRequest() throws IOException {
        this.sink.flush();
    }

    public final void finishRequest() throws IOException {
        this.sink.flush();
    }

    public final void writeRequest(Headers headers, String str) throws IOException {
        if (this.state != 0) {
            str = new StringBuilder("state: ");
            str.append(this.state);
            throw new IllegalStateException(str.toString());
        }
        this.sink.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (str = null; str < size; str++) {
            this.sink.writeUtf8(headers.name(str)).writeUtf8(": ").writeUtf8(headers.value(str)).writeUtf8("\r\n");
        }
        this.sink.writeUtf8("\r\n");
        this.state = 1;
    }

    public final Builder readResponseHeaders(boolean z) throws IOException {
        if (this.state == 1 || this.state == 3) {
            try {
                String readUtf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
                this.headerLimit -= (long) readUtf8LineStrict.length();
                C0651R parse$73c5b6cb = C0651R.parse$73c5b6cb(readUtf8LineStrict);
                Builder headers = new Builder().protocol(parse$73c5b6cb.protocol).code(parse$73c5b6cb.code).message(parse$73c5b6cb.message).headers(readHeaders());
                if (z && parse$73c5b6cb.code) {
                    return false;
                }
                if (parse$73c5b6cb.code) {
                    this.state = 3;
                    return headers;
                }
                this.state = true;
                return headers;
            } catch (boolean z2) {
                StringBuilder stringBuilder = new StringBuilder("unexpected end of stream on ");
                stringBuilder.append(this.streamAllocation);
                IOException iOException = new IOException(stringBuilder.toString());
                iOException.initCause(z2);
                throw iOException;
            }
        }
        StringBuilder stringBuilder2 = new StringBuilder("state: ");
        stringBuilder2.append(this.state);
        throw new IllegalStateException(stringBuilder2.toString());
    }

    public final Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String readUtf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
            this.headerLimit -= (long) readUtf8LineStrict.length();
            if (readUtf8LineStrict.length() == 0) {
                return builder.build();
            }
            Internal.instance.addLenient(builder, readUtf8LineStrict);
        }
    }

    public final Source newFixedLengthSource(long j) throws IOException {
        if (this.state != 4) {
            StringBuilder stringBuilder = new StringBuilder("state: ");
            stringBuilder.append(this.state);
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.state = 5;
        return new FixedLengthSource(j);
    }
}
