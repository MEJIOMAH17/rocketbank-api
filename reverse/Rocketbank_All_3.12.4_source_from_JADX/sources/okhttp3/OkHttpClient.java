package okhttp3;

import android.arch.lifecycle.GeneratedAdapter;
import com.google.gson.internal.Streams;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call.Factory;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

public class OkHttpClient implements Cloneable, Factory {
    static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = Util.immutableList(ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT);
    static final List<Protocol> DEFAULT_PROTOCOLS = Util.immutableList(Protocol.HTTP_2, Protocol.HTTP_1_1);
    final Authenticator authenticator;
    @Nullable
    final Cache cache;
    @Nullable
    final CertificateChainCleaner certificateChainCleaner;
    final CertificatePinner certificatePinner;
    final int connectTimeout;
    final ConnectionPool connectionPool;
    final List<ConnectionSpec> connectionSpecs;
    final CookieJar cookieJar;
    final Dispatcher dispatcher;
    final Dns dns;
    final EventListener.Factory eventListenerFactory;
    final boolean followRedirects;
    final boolean followSslRedirects;
    final HostnameVerifier hostnameVerifier;
    final List<Interceptor> interceptors;
    @Nullable
    final GeneratedAdapter internalCache$5db781e9;
    final List<Interceptor> networkInterceptors;
    final int pingInterval;
    final List<Protocol> protocols;
    @Nullable
    final Proxy proxy;
    final Authenticator proxyAuthenticator;
    final ProxySelector proxySelector;
    final int readTimeout;
    final boolean retryOnConnectionFailure;
    final SocketFactory socketFactory;
    @Nullable
    final SSLSocketFactory sslSocketFactory;
    final int writeTimeout;

    public static final class Builder {
        Authenticator authenticator;
        @Nullable
        Cache cache;
        @Nullable
        CertificateChainCleaner certificateChainCleaner;
        CertificatePinner certificatePinner;
        int connectTimeout;
        ConnectionPool connectionPool;
        List<ConnectionSpec> connectionSpecs;
        CookieJar cookieJar;
        Dispatcher dispatcher;
        Dns dns;
        EventListener.Factory eventListenerFactory;
        boolean followRedirects;
        boolean followSslRedirects;
        HostnameVerifier hostnameVerifier;
        final List<Interceptor> interceptors;
        @Nullable
        GeneratedAdapter internalCache$5db781e9;
        final List<Interceptor> networkInterceptors;
        int pingInterval;
        List<Protocol> protocols;
        @Nullable
        Proxy proxy;
        Authenticator proxyAuthenticator;
        ProxySelector proxySelector;
        int readTimeout;
        boolean retryOnConnectionFailure;
        SocketFactory socketFactory;
        @Nullable
        SSLSocketFactory sslSocketFactory;
        int writeTimeout;

        public Builder() {
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.dispatcher = new Dispatcher();
            this.protocols = OkHttpClient.DEFAULT_PROTOCOLS;
            this.connectionSpecs = OkHttpClient.DEFAULT_CONNECTION_SPECS;
            this.eventListenerFactory = EventListener.factory(EventListener.NONE);
            this.proxySelector = ProxySelector.getDefault();
            this.cookieJar = CookieJar.NO_COOKIES;
            this.socketFactory = SocketFactory.getDefault();
            this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
            this.certificatePinner = CertificatePinner.DEFAULT;
            this.proxyAuthenticator = Authenticator.NONE;
            this.authenticator = Authenticator.NONE;
            this.connectionPool = new ConnectionPool();
            this.dns = Dns.SYSTEM;
            this.followSslRedirects = true;
            this.followRedirects = true;
            this.retryOnConnectionFailure = true;
            this.connectTimeout = AbstractSpiCall.DEFAULT_TIMEOUT;
            this.readTimeout = AbstractSpiCall.DEFAULT_TIMEOUT;
            this.writeTimeout = AbstractSpiCall.DEFAULT_TIMEOUT;
            this.pingInterval = 0;
        }

        Builder(OkHttpClient okHttpClient) {
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.dispatcher = okHttpClient.dispatcher;
            this.proxy = okHttpClient.proxy;
            this.protocols = okHttpClient.protocols;
            this.connectionSpecs = okHttpClient.connectionSpecs;
            this.interceptors.addAll(okHttpClient.interceptors);
            this.networkInterceptors.addAll(okHttpClient.networkInterceptors);
            this.eventListenerFactory = okHttpClient.eventListenerFactory;
            this.proxySelector = okHttpClient.proxySelector;
            this.cookieJar = okHttpClient.cookieJar;
            this.internalCache$5db781e9 = okHttpClient.internalCache$5db781e9;
            this.cache = okHttpClient.cache;
            this.socketFactory = okHttpClient.socketFactory;
            this.sslSocketFactory = okHttpClient.sslSocketFactory;
            this.certificateChainCleaner = okHttpClient.certificateChainCleaner;
            this.hostnameVerifier = okHttpClient.hostnameVerifier;
            this.certificatePinner = okHttpClient.certificatePinner;
            this.proxyAuthenticator = okHttpClient.proxyAuthenticator;
            this.authenticator = okHttpClient.authenticator;
            this.connectionPool = okHttpClient.connectionPool;
            this.dns = okHttpClient.dns;
            this.followSslRedirects = okHttpClient.followSslRedirects;
            this.followRedirects = okHttpClient.followRedirects;
            this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure;
            this.connectTimeout = okHttpClient.connectTimeout;
            this.readTimeout = okHttpClient.readTimeout;
            this.writeTimeout = okHttpClient.writeTimeout;
            this.pingInterval = okHttpClient.pingInterval;
        }

        public final Builder connectTimeout$7cf445d6(TimeUnit timeUnit) {
            this.connectTimeout = Util.checkDuration("timeout", 50, timeUnit);
            return this;
        }

        public final Builder readTimeout$7cf445d6(TimeUnit timeUnit) {
            this.readTimeout = Util.checkDuration("timeout", 60, timeUnit);
            return this;
        }

        public final Builder writeTimeout$7cf445d6(TimeUnit timeUnit) {
            this.writeTimeout = Util.checkDuration("timeout", 60, timeUnit);
            return this;
        }

        public final Builder sslSocketFactory(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (x509TrustManager == null) {
                throw new NullPointerException("trustManager == null");
            }
            this.sslSocketFactory = sSLSocketFactory;
            this.certificateChainCleaner = Platform.get().buildCertificateChainCleaner(x509TrustManager);
            return this;
        }

        public final Builder connectionSpecs(List<ConnectionSpec> list) {
            this.connectionSpecs = Util.immutableList((List) list);
            return this;
        }

        public final Builder addInterceptor(Interceptor interceptor) {
            if (interceptor == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.interceptors.add(interceptor);
            return this;
        }

        public final List<Interceptor> networkInterceptors() {
            return this.networkInterceptors;
        }

        public final OkHttpClient build() {
            return new OkHttpClient(this);
        }
    }

    /* renamed from: okhttp3.OkHttpClient$1 */
    class C12981 extends Internal {
        C12981() {
        }

        public final boolean connectionBecameIdle(ConnectionPool connectionPool, RealConnection realConnection) {
            return connectionPool.connectionBecameIdle(realConnection);
        }

        public final RealConnection get(ConnectionPool connectionPool, Address address, StreamAllocation streamAllocation, Route route) {
            return connectionPool.get(address, streamAllocation, route);
        }

        public final boolean equalsNonHost(Address address, Address address2) {
            return address.equalsNonHost(address2);
        }

        public final Socket deduplicate(ConnectionPool connectionPool, Address address, StreamAllocation streamAllocation) {
            return connectionPool.deduplicate(address, streamAllocation);
        }

        public final void put(ConnectionPool connectionPool, RealConnection realConnection) {
            connectionPool.put(realConnection);
        }

        public final Streams routeDatabase$12c5b016(ConnectionPool connectionPool) {
            return connectionPool.routeDatabase$7baadc7e;
        }

        public final int code(okhttp3.Response.Builder builder) {
            return builder.code;
        }

        public final void addLenient(okhttp3.Headers.Builder builder, String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                String substring = str.substring(0, indexOf);
                str = str.substring(indexOf + 1);
                builder.namesAndValues.add(substring);
                builder.namesAndValues.add(str.trim());
            } else if (str.startsWith(":")) {
                str = str.substring(1);
                builder.namesAndValues.add("");
                builder.namesAndValues.add(str.trim());
            } else {
                builder.namesAndValues.add("");
                builder.namesAndValues.add(str.trim());
            }
        }

        public final void addLenient(okhttp3.Headers.Builder builder, String str, String str2) {
            builder.namesAndValues.add(str);
            builder.namesAndValues.add(str2.trim());
        }

        public final void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z) {
            String[] intersect;
            String[] intersect2;
            if (connectionSpec.cipherSuites != null) {
                intersect = Util.intersect(CipherSuite.ORDER_BY_NAME, sSLSocket.getEnabledCipherSuites(), connectionSpec.cipherSuites);
            } else {
                intersect = sSLSocket.getEnabledCipherSuites();
            }
            if (connectionSpec.tlsVersions != null) {
                intersect2 = Util.intersect(Util.NATURAL_ORDER, sSLSocket.getEnabledProtocols(), connectionSpec.tlsVersions);
            } else {
                intersect2 = sSLSocket.getEnabledProtocols();
            }
            String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
            boolean indexOf = Util.indexOf(CipherSuite.ORDER_BY_NAME, supportedCipherSuites, "TLS_FALLBACK_SCSV");
            if (z && !indexOf) {
                intersect = Util.concat(intersect, supportedCipherSuites[indexOf]);
            }
            z = new ConnectionSpec(new okhttp3.ConnectionSpec.Builder(connectionSpec).cipherSuites(intersect).tlsVersions(intersect2));
            if (z.tlsVersions != null) {
                sSLSocket.setEnabledProtocols(z.tlsVersions);
            }
            if (z.cipherSuites != null) {
                sSLSocket.setEnabledCipherSuites(z.cipherSuites);
            }
        }
    }

    static {
        Internal.instance = new C12981();
    }

    public OkHttpClient() {
        this(new Builder());
    }

    OkHttpClient(Builder builder) {
        StringBuilder stringBuilder;
        this.dispatcher = builder.dispatcher;
        this.proxy = builder.proxy;
        this.protocols = builder.protocols;
        this.connectionSpecs = builder.connectionSpecs;
        this.interceptors = Util.immutableList(builder.interceptors);
        this.networkInterceptors = Util.immutableList(builder.networkInterceptors);
        this.eventListenerFactory = builder.eventListenerFactory;
        this.proxySelector = builder.proxySelector;
        this.cookieJar = builder.cookieJar;
        this.cache = builder.cache;
        this.internalCache$5db781e9 = builder.internalCache$5db781e9;
        this.socketFactory = builder.socketFactory;
        loop0:
        while (true) {
            Object obj = null;
            for (ConnectionSpec connectionSpec : this.connectionSpecs) {
                if (obj != null || connectionSpec.tls) {
                    obj = 1;
                }
            }
            break loop0;
        }
        if (builder.sslSocketFactory == null) {
            if (obj != null) {
                X509TrustManager systemDefaultTrustManager = systemDefaultTrustManager();
                this.sslSocketFactory = systemDefaultSslSocketFactory(systemDefaultTrustManager);
                this.certificateChainCleaner = Platform.get().buildCertificateChainCleaner(systemDefaultTrustManager);
                this.hostnameVerifier = builder.hostnameVerifier;
                this.certificatePinner = builder.certificatePinner.withCertificateChainCleaner(this.certificateChainCleaner);
                this.proxyAuthenticator = builder.proxyAuthenticator;
                this.authenticator = builder.authenticator;
                this.connectionPool = builder.connectionPool;
                this.dns = builder.dns;
                this.followSslRedirects = builder.followSslRedirects;
                this.followRedirects = builder.followRedirects;
                this.retryOnConnectionFailure = builder.retryOnConnectionFailure;
                this.connectTimeout = builder.connectTimeout;
                this.readTimeout = builder.readTimeout;
                this.writeTimeout = builder.writeTimeout;
                this.pingInterval = builder.pingInterval;
                if (this.interceptors.contains(null) != null) {
                    stringBuilder = new StringBuilder("Null interceptor: ");
                    stringBuilder.append(this.interceptors);
                    throw new IllegalStateException(stringBuilder.toString());
                } else if (this.networkInterceptors.contains(null) != null) {
                    stringBuilder = new StringBuilder("Null network interceptor: ");
                    stringBuilder.append(this.networkInterceptors);
                    throw new IllegalStateException(stringBuilder.toString());
                }
            }
        }
        this.sslSocketFactory = builder.sslSocketFactory;
        this.certificateChainCleaner = builder.certificateChainCleaner;
        this.hostnameVerifier = builder.hostnameVerifier;
        this.certificatePinner = builder.certificatePinner.withCertificateChainCleaner(this.certificateChainCleaner);
        this.proxyAuthenticator = builder.proxyAuthenticator;
        this.authenticator = builder.authenticator;
        this.connectionPool = builder.connectionPool;
        this.dns = builder.dns;
        this.followSslRedirects = builder.followSslRedirects;
        this.followRedirects = builder.followRedirects;
        this.retryOnConnectionFailure = builder.retryOnConnectionFailure;
        this.connectTimeout = builder.connectTimeout;
        this.readTimeout = builder.readTimeout;
        this.writeTimeout = builder.writeTimeout;
        this.pingInterval = builder.pingInterval;
        if (this.interceptors.contains(null) != null) {
            stringBuilder = new StringBuilder("Null interceptor: ");
            stringBuilder.append(this.interceptors);
            throw new IllegalStateException(stringBuilder.toString());
        } else if (this.networkInterceptors.contains(null) != null) {
            stringBuilder = new StringBuilder("Null network interceptor: ");
            stringBuilder.append(this.networkInterceptors);
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    private static X509TrustManager systemDefaultTrustManager() {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init(null);
            TrustManager[] trustManagers = instance.getTrustManagers();
            if (trustManagers.length == 1) {
                if (trustManagers[0] instanceof X509TrustManager) {
                    return (X509TrustManager) trustManagers[0];
                }
            }
            StringBuilder stringBuilder = new StringBuilder("Unexpected default trust managers:");
            stringBuilder.append(Arrays.toString(trustManagers));
            throw new IllegalStateException(stringBuilder.toString());
        } catch (Exception e) {
            throw Util.assertionError("No System TLS", e);
        }
    }

    private static SSLSocketFactory systemDefaultSslSocketFactory(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = Platform.get().getSSLContext();
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (X509TrustManager x509TrustManager2) {
            throw Util.assertionError("No System TLS", x509TrustManager2);
        }
    }

    public final int pingIntervalMillis() {
        return this.pingInterval;
    }

    public final Proxy proxy() {
        return this.proxy;
    }

    public final ProxySelector proxySelector() {
        return this.proxySelector;
    }

    public final CookieJar cookieJar() {
        return this.cookieJar;
    }

    public final Dns dns() {
        return this.dns;
    }

    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    public final SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public final Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    public final ConnectionPool connectionPool() {
        return this.connectionPool;
    }

    public final boolean followSslRedirects() {
        return this.followSslRedirects;
    }

    public final boolean followRedirects() {
        return this.followRedirects;
    }

    public final boolean retryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    public final List<Protocol> protocols() {
        return this.protocols;
    }

    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    public final List<Interceptor> interceptors() {
        return this.interceptors;
    }

    public final List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    public final Call newCall(Request request) {
        return RealCall.newRealCall$1f91d1d2(this, request);
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }
}
