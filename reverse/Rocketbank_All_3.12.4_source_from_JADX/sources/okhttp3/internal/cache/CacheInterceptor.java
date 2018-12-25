package okhttp3.internal.cache;

import android.arch.lifecycle.GeneratedAdapter;
import com.facebook.appevents.AppEventsConstants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy.Factory;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class CacheInterceptor implements Interceptor {
    final GeneratedAdapter cache$5db781e9;

    public CacheInterceptor(GeneratedAdapter generatedAdapter) {
        this.cache$5db781e9 = generatedAdapter;
    }

    public final Response intercept(Chain chain) throws IOException {
        Response $75562139 = this.cache$5db781e9 != null ? this.cache$5db781e9.get$75562139() : null;
        CacheStrategy cacheStrategy = new Factory(System.currentTimeMillis(), chain.request(), $75562139).get();
        Request request = cacheStrategy.networkRequest;
        Response response = cacheStrategy.cacheResponse;
        if ($75562139 != null && response == null) {
            Util.closeQuietly($75562139.body());
        }
        if (request == null && response == null) {
            return new Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request == null) {
            chain = response.newBuilder();
            if (!(response == null || response.body() == null)) {
                response = response.newBuilder().body(null).build();
            }
            return chain.cacheResponse(response).build();
        }
        try {
            Builder newBuilder;
            chain = chain.proceed(request);
            if (chain == null) {
            }
            if (response != null) {
                if (chain.code() == 304) {
                    newBuilder = response.newBuilder();
                    Headers headers = response.headers();
                    Headers headers2 = chain.headers();
                    Headers.Builder builder = new Headers.Builder();
                    int size = headers.size();
                    int i = 0;
                    while (true) {
                        Object obj = 1;
                        if (i >= size) {
                            break;
                        }
                        String name = headers.name(i);
                        String value = headers.value(i);
                        if (!"Warning".equalsIgnoreCase(name) || !value.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_YES)) {
                            if (!("Content-Length".equalsIgnoreCase(name) || "Content-Encoding".equalsIgnoreCase(name))) {
                                if (!"Content-Type".equalsIgnoreCase(name)) {
                                    obj = null;
                                }
                            }
                            if (obj != null || !isEndToEnd(name) || headers2.get(name) == null) {
                                Internal.instance.addLenient(builder, name, value);
                            }
                        }
                        i++;
                    }
                    int size2 = headers2.size();
                    for (size = 0; size < size2; size++) {
                        Object obj2;
                        String name2 = headers2.name(size);
                        if (!("Content-Length".equalsIgnoreCase(name2) || "Content-Encoding".equalsIgnoreCase(name2))) {
                            if (!"Content-Type".equalsIgnoreCase(name2)) {
                                obj2 = null;
                                if (obj2 == null && isEndToEnd(name2)) {
                                    Internal.instance.addLenient(builder, name2, headers2.value(size));
                                }
                            }
                        }
                        obj2 = 1;
                        Internal.instance.addLenient(builder, name2, headers2.value(size));
                    }
                    newBuilder = newBuilder.headers(builder.build()).sentRequestAtMillis(chain.sentRequestAtMillis()).receivedResponseAtMillis(chain.receivedResponseAtMillis());
                    if (!(response == null || response.body() == null)) {
                        response = response.newBuilder().body(null).build();
                    }
                    newBuilder = newBuilder.cacheResponse(response);
                    Response build = (chain == null || chain.body() == null) ? chain : chain.newBuilder().body(null).build();
                    $75562139 = newBuilder.networkResponse(build).build();
                    chain.body().close();
                    return $75562139;
                }
                Util.closeQuietly(response.body());
            }
            newBuilder = chain.newBuilder();
            if (!(response == null || response.body() == null)) {
                response = response.newBuilder().body(null).build();
            }
            newBuilder = newBuilder.cacheResponse(response);
            if (!(chain == null || chain.body() == null)) {
                chain = chain.newBuilder().body(null).build();
            }
            chain = newBuilder.networkResponse(chain).build();
            if (this.cache$5db781e9 != null) {
                if (HttpHeaders.hasBody(chain) && CacheStrategy.isCacheable(chain, request)) {
                    final GeneratedAdapter put$cd4e278$4d5a729a = this.cache$5db781e9.put$cd4e278$4d5a729a();
                    if (put$cd4e278$4d5a729a == null) {
                        return chain;
                    }
                    Sink body = put$cd4e278$4d5a729a.body();
                    if (body == null) {
                        return chain;
                    }
                    final BufferedSource source = chain.body().source();
                    final BufferedSink buffer = Okio.buffer(body);
                    return chain.newBuilder().body(new RealResponseBody(chain.header("Content-Type"), chain.body().contentLength(), Okio.buffer(new Source() {
                        boolean cacheRequestClosed;

                        public final long read(Buffer buffer, long j) throws IOException {
                            try {
                                j = source.read(buffer, j);
                                if (j == -1) {
                                    if (this.cacheRequestClosed == null) {
                                        this.cacheRequestClosed = true;
                                        buffer.close();
                                    }
                                    return -1;
                                }
                                buffer.copyTo(buffer.buffer(), buffer.size() - j, j);
                                buffer.emitCompleteSegments();
                                return j;
                            } catch (Buffer buffer2) {
                                if (this.cacheRequestClosed == null) {
                                    this.cacheRequestClosed = true;
                                }
                                throw buffer2;
                            }
                        }

                        public final Timeout timeout() {
                            return source.timeout();
                        }

                        public final void close() throws IOException {
                            if (!(this.cacheRequestClosed || Util.discard$1a4e8ddd(this, TimeUnit.MILLISECONDS))) {
                                this.cacheRequestClosed = true;
                            }
                            source.close();
                        }
                    }))).build();
                }
                String method = request.method();
                if (!(method.equals("POST") || method.equals("PATCH") || method.equals("PUT") || method.equals("DELETE"))) {
                    method.equals("MOVE");
                }
            }
            return chain;
        } finally {
            if ($75562139 != null) {
                Util.closeQuietly($75562139.body());
            }
        }
    }

    private static boolean isEndToEnd(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str) != null) ? null : true;
    }
}
