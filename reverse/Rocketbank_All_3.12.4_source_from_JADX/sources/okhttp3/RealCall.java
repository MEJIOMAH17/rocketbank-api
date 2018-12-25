package okhttp3;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.connection.ConnectInterceptor;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;

final class RealCall implements Call {
    final OkHttpClient client;
    private EventListener eventListener;
    private boolean executed;
    final boolean forWebSocket;
    final Request originalRequest;
    final RetryAndFollowUpInterceptor retryAndFollowUpInterceptor;

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;

        AsyncCall(Callback callback) {
            super("OkHttp %s", r4.originalRequest.url.redact());
            this.responseCallback = callback;
        }

        protected final void execute() {
            Throwable e;
            Platform platform;
            StringBuilder stringBuilder;
            RealCall realCall;
            StringBuilder stringBuilder2;
            Dispatcher dispatcher;
            Object obj = 1;
            try {
                Response responseWithInterceptorChain = RealCall.this.getResponseWithInterceptorChain();
                if (RealCall.this.retryAndFollowUpInterceptor.isCanceled()) {
                    try {
                        this.responseCallback.onFailure(RealCall.this, new IOException("Canceled"));
                    } catch (IOException e2) {
                        e = e2;
                        if (obj == null) {
                            RealCall.this.eventListener;
                            this.responseCallback.onFailure(RealCall.this, e);
                        } else {
                            try {
                                platform = Platform.get();
                                stringBuilder = new StringBuilder("Callback failure for ");
                                realCall = RealCall.this;
                                stringBuilder2 = new StringBuilder();
                                stringBuilder2.append(realCall.retryAndFollowUpInterceptor.isCanceled() ? "" : "canceled ");
                                stringBuilder2.append(realCall.forWebSocket ? NotificationCompat.CATEGORY_CALL : "web socket");
                                stringBuilder2.append(" to ");
                                stringBuilder2.append(realCall.originalRequest.url.redact());
                                stringBuilder.append(stringBuilder2.toString());
                                platform.log(4, stringBuilder.toString(), e);
                            } catch (Throwable th) {
                                RealCall.this.client.dispatcher.finished(this);
                            }
                        }
                        dispatcher = RealCall.this.client.dispatcher;
                        dispatcher.finished(this);
                    }
                }
                this.responseCallback.onResponse(RealCall.this, responseWithInterceptorChain);
                dispatcher = RealCall.this.client.dispatcher;
            } catch (Throwable e3) {
                e = e3;
                obj = null;
                if (obj == null) {
                    platform = Platform.get();
                    stringBuilder = new StringBuilder("Callback failure for ");
                    realCall = RealCall.this;
                    stringBuilder2 = new StringBuilder();
                    if (realCall.retryAndFollowUpInterceptor.isCanceled()) {
                    }
                    stringBuilder2.append(realCall.retryAndFollowUpInterceptor.isCanceled() ? "" : "canceled ");
                    if (realCall.forWebSocket) {
                    }
                    stringBuilder2.append(realCall.forWebSocket ? NotificationCompat.CATEGORY_CALL : "web socket");
                    stringBuilder2.append(" to ");
                    stringBuilder2.append(realCall.originalRequest.url.redact());
                    stringBuilder.append(stringBuilder2.toString());
                    platform.log(4, stringBuilder.toString(), e);
                } else {
                    RealCall.this.eventListener;
                    this.responseCallback.onFailure(RealCall.this, e);
                }
                dispatcher = RealCall.this.client.dispatcher;
                dispatcher.finished(this);
            }
            dispatcher.finished(this);
        }
    }

    private RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        this.client = okHttpClient;
        this.originalRequest = request;
        this.forWebSocket = z;
        this.retryAndFollowUpInterceptor = new RetryAndFollowUpInterceptor(okHttpClient, z);
    }

    static RealCall newRealCall$1f91d1d2(OkHttpClient okHttpClient, Request request) {
        RealCall realCall = new RealCall(okHttpClient, request, false);
        realCall.eventListener = okHttpClient.eventListenerFactory.create$a995d89();
        return realCall;
    }

    public final Request request() {
        return this.originalRequest;
    }

    public final Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.retryAndFollowUpInterceptor.setCallStackTrace(Platform.get().getStackTraceForCloseable("response.body().close()"));
        try {
            this.client.dispatcher.executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain();
            if (responseWithInterceptorChain == null) {
                throw new IOException("Canceled");
            }
            this.client.dispatcher.finished(this);
            return responseWithInterceptorChain;
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            this.client.dispatcher.finished(this);
        }
    }

    public final void enqueue(Callback callback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.retryAndFollowUpInterceptor.setCallStackTrace(Platform.get().getStackTraceForCloseable("response.body().close()"));
        this.client.dispatcher.enqueue(new AsyncCall(callback));
    }

    public final void cancel() {
        this.retryAndFollowUpInterceptor.cancel();
    }

    final Response getResponseWithInterceptorChain() throws IOException {
        List arrayList = new ArrayList();
        arrayList.addAll(this.client.interceptors);
        arrayList.add(this.retryAndFollowUpInterceptor);
        arrayList.add(new BridgeInterceptor(this.client.cookieJar));
        OkHttpClient okHttpClient = this.client;
        arrayList.add(new CacheInterceptor(okHttpClient.cache != null ? okHttpClient.cache.internalCache$5db781e9 : okHttpClient.internalCache$5db781e9));
        arrayList.add(new ConnectInterceptor(this.client));
        if (!this.forWebSocket) {
            arrayList.addAll(this.client.networkInterceptors);
        }
        arrayList.add(new CallServerInterceptor(this.forWebSocket));
        return new RealInterceptorChain(arrayList, null, null, null, 0, this.originalRequest, this, this.eventListener, this.client.connectTimeout, this.client.readTimeout, this.client.writeTimeout).proceed(this.originalRequest);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        OkHttpClient okHttpClient = this.client;
        RealCall realCall = new RealCall(okHttpClient, this.originalRequest, this.forWebSocket);
        realCall.eventListener = okHttpClient.eventListenerFactory.create$a995d89();
        return realCall;
    }
}
