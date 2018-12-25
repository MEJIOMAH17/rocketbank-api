package okhttp3.internal.http;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.StreamAllocation;

public final class RetryAndFollowUpInterceptor implements Interceptor {
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private volatile StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient, boolean z) {
        this.client = okHttpClient;
        this.forWebSocket = z;
    }

    public final void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    public final boolean isCanceled() {
        return this.canceled;
    }

    public final void setCallStackTrace(Object obj) {
        this.callStackTrace = obj;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final okhttp3.Response intercept(okhttp3.Interceptor.Chain r15) throws java.io.IOException {
        /*
        r14 = this;
        r0 = r15.request();
        r15 = (okhttp3.internal.http.RealInterceptorChain) r15;
        r7 = r15.call();
        r8 = r15.eventListener();
        r9 = new okhttp3.internal.connection.StreamAllocation;
        r1 = r14.client;
        r2 = r1.connectionPool();
        r1 = r0.url();
        r3 = r14.createAddress(r1);
        r6 = r14.callStackTrace;
        r1 = r9;
        r4 = r7;
        r5 = r8;
        r1.<init>(r2, r3, r4, r5, r6);
        r14.streamAllocation = r9;
        r10 = 0;
        r11 = 0;
        r2 = r10;
        r1 = r11;
    L_0x002c:
        r3 = r14.canceled;
        if (r3 == 0) goto L_0x003b;
    L_0x0030:
        r9.release();
        r15 = new java.io.IOException;
        r0 = "Canceled";
        r15.<init>(r0);
        throw r15;
    L_0x003b:
        r3 = 1;
        r4 = r15.proceed(r0, r9, r11, r11);	 Catch:{ RouteException -> 0x023a, IOException -> 0x022c }
        if (r1 == 0) goto L_0x005b;
    L_0x0042:
        r0 = r4.newBuilder();
        r1 = r1.newBuilder();
        r1 = r1.body(r11);
        r1 = r1.build();
        r0 = r0.priorResponse(r1);
        r0 = r0.build();
        goto L_0x005c;
    L_0x005b:
        r0 = r4;
    L_0x005c:
        r1 = r9.route();
        if (r0 != 0) goto L_0x0068;
    L_0x0062:
        r15 = new java.lang.IllegalStateException;
        r15.<init>();
        throw r15;
    L_0x0068:
        r4 = r0.code();
        r5 = r0.request();
        r5 = r5.method();
        switch(r4) {
            case 300: goto L_0x00f9;
            case 301: goto L_0x00f9;
            case 302: goto L_0x00f9;
            case 303: goto L_0x00f9;
            case 307: goto L_0x00e9;
            case 308: goto L_0x00e9;
            case 401: goto L_0x019c;
            case 407: goto L_0x00cc;
            case 408: goto L_0x009b;
            case 503: goto L_0x0079;
            default: goto L_0x0077;
        };
    L_0x0077:
        goto L_0x019c;
    L_0x0079:
        r1 = r0.priorResponse();
        if (r1 == 0) goto L_0x008b;
    L_0x007f:
        r1 = r0.priorResponse();
        r1 = r1.code();
        r3 = 503; // 0x1f7 float:7.05E-43 double:2.485E-321;
        if (r1 == r3) goto L_0x019c;
    L_0x008b:
        r1 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r1 = retryAfter(r0, r1);
        if (r1 != 0) goto L_0x019c;
    L_0x0094:
        r1 = r0.request();
    L_0x0098:
        r12 = r1;
        goto L_0x019d;
    L_0x009b:
        r1 = r14.client;
        r1 = r1.retryOnConnectionFailure();
        if (r1 == 0) goto L_0x019c;
    L_0x00a3:
        r1 = r0.request();
        r1 = r1.body();
        r1 = r1 instanceof okhttp3.internal.http.UnrepeatableRequestBody;
        if (r1 != 0) goto L_0x019c;
    L_0x00af:
        r1 = r0.priorResponse();
        if (r1 == 0) goto L_0x00c1;
    L_0x00b5:
        r1 = r0.priorResponse();
        r1 = r1.code();
        r3 = 408; // 0x198 float:5.72E-43 double:2.016E-321;
        if (r1 == r3) goto L_0x019c;
    L_0x00c1:
        r1 = retryAfter(r0, r10);
        if (r1 > 0) goto L_0x019c;
    L_0x00c7:
        r1 = r0.request();
        goto L_0x0098;
    L_0x00cc:
        if (r1 == 0) goto L_0x00d3;
    L_0x00ce:
        r1 = r1.proxy();
        goto L_0x00d9;
    L_0x00d3:
        r1 = r14.client;
        r1 = r1.proxy();
    L_0x00d9:
        r1 = r1.type();
        r3 = java.net.Proxy.Type.HTTP;
        if (r1 == r3) goto L_0x019c;
    L_0x00e1:
        r15 = new java.net.ProtocolException;
        r0 = "Received HTTP_PROXY_AUTH (407) code while not using proxy";
        r15.<init>(r0);
        throw r15;
    L_0x00e9:
        r1 = "GET";
        r1 = r5.equals(r1);
        if (r1 != 0) goto L_0x00f9;
    L_0x00f1:
        r1 = "HEAD";
        r1 = r5.equals(r1);
        if (r1 == 0) goto L_0x019c;
    L_0x00f9:
        r1 = r14.client;
        r1 = r1.followRedirects();
        if (r1 == 0) goto L_0x019c;
    L_0x0101:
        r1 = "Location";
        r1 = r0.header(r1);
        if (r1 == 0) goto L_0x019c;
    L_0x0109:
        r4 = r0.request();
        r4 = r4.url();
        r1 = r4.resolve(r1);
        if (r1 == 0) goto L_0x019c;
    L_0x0117:
        r4 = r1.scheme();
        r6 = r0.request();
        r6 = r6.url();
        r6 = r6.scheme();
        r4 = r4.equals(r6);
        if (r4 != 0) goto L_0x0135;
    L_0x012d:
        r4 = r14.client;
        r4 = r4.followSslRedirects();
        if (r4 == 0) goto L_0x019c;
    L_0x0135:
        r4 = r0.request();
        r4 = r4.newBuilder();
        r6 = "GET";
        r6 = r5.equals(r6);
        if (r6 != 0) goto L_0x014f;
    L_0x0145:
        r6 = "HEAD";
        r6 = r5.equals(r6);
        if (r6 != 0) goto L_0x014f;
    L_0x014d:
        r6 = r3;
        goto L_0x0150;
    L_0x014f:
        r6 = r10;
    L_0x0150:
        if (r6 == 0) goto L_0x0187;
    L_0x0152:
        r6 = "PROPFIND";
        r6 = r5.equals(r6);
        r12 = "PROPFIND";
        r12 = r5.equals(r12);
        r3 = r3 ^ r12;
        if (r3 == 0) goto L_0x0167;
    L_0x0161:
        r3 = "GET";
        r4.method(r3, r11);
        goto L_0x0176;
    L_0x0167:
        if (r6 == 0) goto L_0x0172;
    L_0x0169:
        r3 = r0.request();
        r3 = r3.body();
        goto L_0x0173;
    L_0x0172:
        r3 = r11;
    L_0x0173:
        r4.method(r5, r3);
    L_0x0176:
        if (r6 != 0) goto L_0x0187;
    L_0x0178:
        r3 = "Transfer-Encoding";
        r4.removeHeader(r3);
        r3 = "Content-Length";
        r4.removeHeader(r3);
        r3 = "Content-Type";
        r4.removeHeader(r3);
    L_0x0187:
        r3 = sameConnection(r0, r1);
        if (r3 != 0) goto L_0x0192;
    L_0x018d:
        r3 = "Authorization";
        r4.removeHeader(r3);
    L_0x0192:
        r1 = r4.url(r1);
        r1 = r1.build();
        goto L_0x0098;
    L_0x019c:
        r12 = r11;
    L_0x019d:
        if (r12 != 0) goto L_0x01a7;
    L_0x019f:
        r15 = r14.forWebSocket;
        if (r15 != 0) goto L_0x01a6;
    L_0x01a3:
        r9.release();
    L_0x01a6:
        return r0;
    L_0x01a7:
        r1 = r0.body();
        okhttp3.internal.Util.closeQuietly(r1);
        r13 = r2 + 1;
        r1 = 20;
        if (r13 <= r1) goto L_0x01c7;
    L_0x01b4:
        r9.release();
        r15 = new java.net.ProtocolException;
        r0 = "Too many follow-up requests: ";
        r1 = java.lang.String.valueOf(r13);
        r0 = r0.concat(r1);
        r15.<init>(r0);
        throw r15;
    L_0x01c7:
        r1 = r12.body();
        r1 = r1 instanceof okhttp3.internal.http.UnrepeatableRequestBody;
        if (r1 == 0) goto L_0x01de;
    L_0x01cf:
        r9.release();
        r15 = new java.net.HttpRetryException;
        r1 = "Cannot retry streamed HTTP body";
        r0 = r0.code();
        r15.<init>(r1, r0);
        throw r15;
    L_0x01de:
        r1 = r12.url();
        r1 = sameConnection(r0, r1);
        if (r1 != 0) goto L_0x0206;
    L_0x01e8:
        r9.release();
        r9 = new okhttp3.internal.connection.StreamAllocation;
        r1 = r14.client;
        r2 = r1.connectionPool();
        r1 = r12.url();
        r3 = r14.createAddress(r1);
        r6 = r14.callStackTrace;
        r1 = r9;
        r4 = r7;
        r5 = r8;
        r1.<init>(r2, r3, r4, r5, r6);
        r14.streamAllocation = r9;
        goto L_0x0225;
    L_0x0206:
        r1 = r9.codec();
        if (r1 == 0) goto L_0x0225;
    L_0x020c:
        r15 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r2 = "Closing the body of ";
        r1.<init>(r2);
        r1.append(r0);
        r0 = " didn't close its backing stream. Bad interceptor?";
        r1.append(r0);
        r0 = r1.toString();
        r15.<init>(r0);
        throw r15;
    L_0x0225:
        r1 = r0;
        r0 = r12;
        r2 = r13;
        goto L_0x002c;
    L_0x022a:
        r15 = move-exception;
        goto L_0x024a;
    L_0x022c:
        r4 = move-exception;
        r5 = r4 instanceof okhttp3.internal.http2.ConnectionShutdownException;	 Catch:{ all -> 0x022a }
        if (r5 != 0) goto L_0x0232;
    L_0x0231:
        goto L_0x0233;
    L_0x0232:
        r3 = r10;
    L_0x0233:
        r3 = r14.recover(r4, r9, r3, r0);	 Catch:{ all -> 0x022a }
        if (r3 != 0) goto L_0x002c;
    L_0x0239:
        throw r4;	 Catch:{ all -> 0x022a }
    L_0x023a:
        r3 = move-exception;
        r4 = r3.getLastConnectException();	 Catch:{ all -> 0x022a }
        r4 = r14.recover(r4, r9, r10, r0);	 Catch:{ all -> 0x022a }
        if (r4 != 0) goto L_0x002c;
    L_0x0245:
        r15 = r3.getLastConnectException();	 Catch:{ all -> 0x022a }
        throw r15;	 Catch:{ all -> 0x022a }
    L_0x024a:
        r9.streamFailed(r11);
        r9.release();
        throw r15;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private Address createAddress(HttpUrl httpUrl) {
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        CertificatePinner certificatePinner;
        RetryAndFollowUpInterceptor retryAndFollowUpInterceptor = this;
        if (httpUrl.isHttps()) {
            SSLSocketFactory sslSocketFactory = retryAndFollowUpInterceptor.client.sslSocketFactory();
            hostnameVerifier = retryAndFollowUpInterceptor.client.hostnameVerifier();
            sSLSocketFactory = sslSocketFactory;
            certificatePinner = retryAndFollowUpInterceptor.client.certificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = sSLSocketFactory;
            certificatePinner = hostnameVerifier;
        }
        return new Address(httpUrl.host(), httpUrl.port(), retryAndFollowUpInterceptor.client.dns(), retryAndFollowUpInterceptor.client.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, retryAndFollowUpInterceptor.client.proxyAuthenticator(), retryAndFollowUpInterceptor.client.proxy(), retryAndFollowUpInterceptor.client.protocols(), retryAndFollowUpInterceptor.client.connectionSpecs(), retryAndFollowUpInterceptor.client.proxySelector());
    }

    private boolean recover(IOException iOException, StreamAllocation streamAllocation, boolean z, Request request) {
        streamAllocation.streamFailed(iOException);
        if (!this.client.retryOnConnectionFailure()) {
            return false;
        }
        if ((z && (request.body() instanceof UnrepeatableRequestBody) != null) || isRecoverable(iOException, z) == null || streamAllocation.hasMoreRoutes() == null) {
            return false;
        }
        return true;
    }

    private static boolean isRecoverable(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if ((iOException instanceof SocketTimeoutException) == null || z) {
                return false;
            }
            return true;
        } else if ((!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && (iOException instanceof SSLPeerUnverifiedException) == null) {
            return true;
        } else {
            return false;
        }
    }

    private static int retryAfter(Response response, int i) {
        response = response.header("Retry-After");
        if (response == null) {
            return i;
        }
        return response.matches("\\d+") != 0 ? Integer.valueOf(response).intValue() : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    private static boolean sameConnection(Response response, HttpUrl httpUrl) {
        response = response.request().url();
        return (response.host().equals(httpUrl.host()) && response.port() == httpUrl.port() && response.scheme().equals(httpUrl.scheme()) != null) ? true : null;
    }
}
