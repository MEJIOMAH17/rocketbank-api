package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;

public final class RealInterceptorChain implements Chain {
    private final Call call;
    private int calls;
    private final int connectTimeout;
    private final RealConnection connection;
    private final EventListener eventListener;
    private final HttpCodec httpCodec;
    private final int index;
    private final List<Interceptor> interceptors;
    private final int readTimeout;
    private final Request request;
    private final StreamAllocation streamAllocation;
    private final int writeTimeout;

    public RealInterceptorChain(List<Interceptor> list, StreamAllocation streamAllocation, HttpCodec httpCodec, RealConnection realConnection, int i, Request request, Call call, EventListener eventListener, int i2, int i3, int i4) {
        this.interceptors = list;
        this.connection = realConnection;
        this.streamAllocation = streamAllocation;
        this.httpCodec = httpCodec;
        this.index = i;
        this.request = request;
        this.call = call;
        this.eventListener = eventListener;
        this.connectTimeout = i2;
        this.readTimeout = i3;
        this.writeTimeout = i4;
    }

    public final Connection connection() {
        return this.connection;
    }

    public final int connectTimeoutMillis() {
        return this.connectTimeout;
    }

    public final int readTimeoutMillis() {
        return this.readTimeout;
    }

    public final int writeTimeoutMillis() {
        return this.writeTimeout;
    }

    public final StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }

    public final HttpCodec httpStream() {
        return this.httpCodec;
    }

    public final Call call() {
        return this.call;
    }

    public final EventListener eventListener() {
        return this.eventListener;
    }

    public final Request request() {
        return this.request;
    }

    public final Response proceed(Request request) throws IOException {
        return proceed(request, this.streamAllocation, this.httpCodec, this.connection);
    }

    public final Response proceed(Request request, StreamAllocation streamAllocation, HttpCodec httpCodec, RealConnection realConnection) throws IOException {
        if (this.index >= this.interceptors.size()) {
            throw new AssertionError();
        }
        r0.calls++;
        StringBuilder stringBuilder;
        if (r0.httpCodec != null && !r0.connection.supportsUrl(request.url())) {
            stringBuilder = new StringBuilder("network interceptor ");
            stringBuilder.append(r0.interceptors.get(r0.index - 1));
            stringBuilder.append(" must retain the same host and port");
            throw new IllegalStateException(stringBuilder.toString());
        } else if (r0.httpCodec == null || r0.calls <= 1) {
            RealInterceptorChain realInterceptorChain = new RealInterceptorChain(r0.interceptors, streamAllocation, httpCodec, realConnection, r0.index + 1, request, r0.call, r0.eventListener, r0.connectTimeout, r0.readTimeout, r0.writeTimeout);
            Interceptor interceptor = (Interceptor) r0.interceptors.get(r0.index);
            Response intercept = interceptor.intercept(realInterceptorChain);
            StringBuilder stringBuilder2;
            if (httpCodec != null && r0.index + 1 < r0.interceptors.size() && realInterceptorChain.calls != 1) {
                stringBuilder2 = new StringBuilder("network interceptor ");
                stringBuilder2.append(interceptor);
                stringBuilder2.append(" must call proceed() exactly once");
                throw new IllegalStateException(stringBuilder2.toString());
            } else if (intercept == null) {
                stringBuilder2 = new StringBuilder("interceptor ");
                stringBuilder2.append(interceptor);
                stringBuilder2.append(" returned null");
                throw new NullPointerException(stringBuilder2.toString());
            } else if (intercept.body() != null) {
                return intercept;
            } else {
                stringBuilder2 = new StringBuilder("interceptor ");
                stringBuilder2.append(interceptor);
                stringBuilder2.append(" returned a response with no body");
                throw new IllegalStateException(stringBuilder2.toString());
            }
        } else {
            stringBuilder = new StringBuilder("network interceptor ");
            stringBuilder.append(r0.interceptors.get(r0.index - 1));
            stringBuilder.append(" must call proceed() exactly once");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }
}
