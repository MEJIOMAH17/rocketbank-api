package okhttp3.internal.http;

import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.IOException;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;
import okio.Source;

public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        this.cookieJar = cookieJar;
    }

    public final Response intercept(Chain chain) throws IOException {
        int i;
        Request request = chain.request();
        Builder newBuilder = request.newBuilder();
        RequestBody body = request.body();
        if (body != null) {
            MediaType contentType = body.contentType();
            if (contentType != null) {
                newBuilder.header("Content-Type", contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                newBuilder.header("Content-Length", Long.toString(contentLength));
                newBuilder.removeHeader("Transfer-Encoding");
            } else {
                newBuilder.header("Transfer-Encoding", "chunked");
                newBuilder.removeHeader("Content-Length");
            }
        }
        int i2 = 0;
        if (request.header("Host") == null) {
            newBuilder.header("Host", Util.hostHeader(request.url(), false));
        }
        if (request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null && request.header("Range") == null) {
            newBuilder.header("Accept-Encoding", "gzip");
            i = 1;
        } else {
            i = 0;
        }
        List loadForRequest$792063fe = this.cookieJar.loadForRequest$792063fe();
        if (!loadForRequest$792063fe.isEmpty()) {
            String str = "Cookie";
            StringBuilder stringBuilder = new StringBuilder();
            int size = loadForRequest$792063fe.size();
            while (i2 < size) {
                if (i2 > 0) {
                    stringBuilder.append("; ");
                }
                Cookie cookie = (Cookie) loadForRequest$792063fe.get(i2);
                stringBuilder.append(cookie.name());
                stringBuilder.append('=');
                stringBuilder.append(cookie.value());
                i2++;
            }
            newBuilder.header(str, stringBuilder.toString());
        }
        if (request.header(AbstractSpiCall.HEADER_USER_AGENT) == null) {
            newBuilder.header(AbstractSpiCall.HEADER_USER_AGENT, "okhttp/3.10.0");
        }
        chain = chain.proceed(newBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), chain.headers());
        Response.Builder request2 = chain.newBuilder().request(request);
        if (i != 0 && "gzip".equalsIgnoreCase(chain.header("Content-Encoding")) && HttpHeaders.hasBody(chain)) {
            Source gzipSource = new GzipSource(chain.body().source());
            request2.headers(chain.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build());
            request2.body(new RealResponseBody(chain.header("Content-Type"), -1, Okio.buffer(gzipSource)));
        }
        return request2.build();
    }
}
