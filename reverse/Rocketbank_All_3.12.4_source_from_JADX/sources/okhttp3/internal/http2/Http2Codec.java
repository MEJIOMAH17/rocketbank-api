package okhttp3.internal.http2;

import com.google.maps.android.C0651R;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okio.Buffer;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

public final class Http2Codec implements HttpCodec {
    private static final ByteString CONNECTION = ByteString.encodeUtf8("connection");
    private static final ByteString ENCODING = ByteString.encodeUtf8("encoding");
    private static final ByteString HOST = ByteString.encodeUtf8("host");
    private static final List<ByteString> HTTP_2_SKIPPED_REQUEST_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE, Header.TARGET_METHOD, Header.TARGET_PATH, Header.TARGET_SCHEME, Header.TARGET_AUTHORITY);
    private static final List<ByteString> HTTP_2_SKIPPED_RESPONSE_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE);
    private static final ByteString KEEP_ALIVE = ByteString.encodeUtf8("keep-alive");
    private static final ByteString PROXY_CONNECTION = ByteString.encodeUtf8("proxy-connection");
    private static final ByteString TE = ByteString.encodeUtf8("te");
    private static final ByteString TRANSFER_ENCODING = ByteString.encodeUtf8("transfer-encoding");
    private static final ByteString UPGRADE = ByteString.encodeUtf8("upgrade");
    private final Chain chain;
    private final OkHttpClient client;
    private final Http2Connection connection;
    private Http2Stream stream;
    final StreamAllocation streamAllocation;

    class StreamFinishingSource extends ForwardingSource {
        long bytesRead = null;
        boolean completed = null;

        StreamFinishingSource(Source source) {
            super(source);
        }

        public final long read(Buffer buffer, long j) throws IOException {
            try {
                buffer = delegate().read(buffer, j);
                if (buffer > 0) {
                    this.bytesRead += buffer;
                }
                return buffer;
            } catch (Buffer buffer2) {
                if (this.completed == null) {
                    this.completed = 1;
                    Http2Codec.this.streamAllocation.streamFinished$50294127(false, Http2Codec.this);
                }
                throw buffer2;
            }
        }

        public final void close() throws IOException {
            super.close();
            if (!this.completed) {
                this.completed = true;
                Http2Codec.this.streamAllocation.streamFinished$50294127(false, Http2Codec.this);
            }
        }
    }

    public Http2Codec(OkHttpClient okHttpClient, Chain chain, StreamAllocation streamAllocation, Http2Connection http2Connection) {
        this.client = okHttpClient;
        this.chain = chain;
        this.streamAllocation = streamAllocation;
        this.connection = http2Connection;
    }

    public final Sink createRequestBody(Request request, long j) {
        return this.stream.getSink();
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        if (this.stream == null) {
            int i = 0;
            boolean z = request.body() != null;
            Headers headers = request.headers();
            List arrayList = new ArrayList(headers.size() + 4);
            arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
            arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.url())));
            String header = request.header("Host");
            if (header != null) {
                arrayList.add(new Header(Header.TARGET_AUTHORITY, header));
            }
            arrayList.add(new Header(Header.TARGET_SCHEME, request.url().scheme()));
            request = headers.size();
            while (i < request) {
                ByteString encodeUtf8 = ByteString.encodeUtf8(headers.name(i).toLowerCase(Locale.US));
                if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(encodeUtf8)) {
                    arrayList.add(new Header(encodeUtf8, headers.value(i)));
                }
                i++;
            }
            this.stream = this.connection.newStream(arrayList, z);
            this.stream.readTimeout.timeout((long) this.chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
            this.stream.writeTimeout.timeout((long) this.chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        }
    }

    public final void flushRequest() throws IOException {
        this.connection.writer.flush();
    }

    public final void finishRequest() throws IOException {
        this.stream.getSink().close();
    }

    public final Builder readResponseHeaders(boolean z) throws IOException {
        List takeResponseHeaders = this.stream.takeResponseHeaders();
        Headers.Builder builder = new Headers.Builder();
        int size = takeResponseHeaders.size();
        Headers.Builder builder2 = builder;
        C0651R c0651r = null;
        for (int i = 0; i < size; i++) {
            Header header = (Header) takeResponseHeaders.get(i);
            if (header != null) {
                ByteString byteString = header.name;
                String utf8 = header.value.utf8();
                if (byteString.equals(Header.RESPONSE_STATUS)) {
                    c0651r = C0651R.parse$73c5b6cb("HTTP/1.1 ".concat(String.valueOf(utf8)));
                } else if (!HTTP_2_SKIPPED_RESPONSE_HEADERS.contains(byteString)) {
                    Internal.instance.addLenient(builder2, byteString.utf8(), utf8);
                }
            } else if (c0651r != null && c0651r.code == 100) {
                builder2 = new Headers.Builder();
                c0651r = null;
            }
        }
        if (c0651r == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        Builder headers = new Builder().protocol(Protocol.HTTP_2).code(c0651r.code).message(c0651r.message).headers(builder2.build());
        if (z && Internal.instance.code(headers)) {
            return null;
        }
        return headers;
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        return new RealResponseBody(response.header("Content-Type"), HttpHeaders.contentLength(response), Okio.buffer(new StreamFinishingSource(this.stream.getSource())));
    }

    public final void cancel() {
        if (this.stream != null) {
            this.stream.closeLater(ErrorCode.CANCEL);
        }
    }
}
