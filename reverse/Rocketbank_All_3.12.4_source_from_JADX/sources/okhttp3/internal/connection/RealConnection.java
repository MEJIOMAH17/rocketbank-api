package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Address;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http1.Http1Codec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Codec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Connection.Listener;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

public final class RealConnection extends Listener implements Connection {
    public int allocationLimit = 1;
    public final List<Reference<StreamAllocation>> allocations = new ArrayList();
    private final ConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    public long idleAtNanos = Long.MAX_VALUE;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private BufferedSink sink;
    private Socket socket;
    private BufferedSource source;
    public int successCount;

    public RealConnection(ConnectionPool connectionPool, Route route) {
        this.connectionPool = connectionPool;
        this.route = route;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect$68d0d7c3(int r18, int r19, int r20, int r21, boolean r22) {
        /*
        r17 = this;
        r1 = r17;
        r2 = r1.protocol;
        if (r2 == 0) goto L_0x000e;
    L_0x0006:
        r2 = new java.lang.IllegalStateException;
        r3 = "already connected";
        r2.<init>(r3);
        throw r2;
    L_0x000e:
        r2 = r1.route;
        r2 = r2.address();
        r2 = r2.connectionSpecs();
        r3 = new com.google.firebase.messaging.zzc;
        r3.<init>(r2);
        r4 = r1.route;
        r4 = r4.address();
        r4 = r4.sslSocketFactory();
        if (r4 != 0) goto L_0x0074;
    L_0x0029:
        r4 = okhttp3.ConnectionSpec.CLEARTEXT;
        r2 = r2.contains(r4);
        if (r2 != 0) goto L_0x003e;
    L_0x0031:
        r2 = new okhttp3.internal.connection.RouteException;
        r3 = new java.net.UnknownServiceException;
        r4 = "CLEARTEXT communication not enabled for client";
        r3.<init>(r4);
        r2.<init>(r3);
        throw r2;
    L_0x003e:
        r2 = r1.route;
        r2 = r2.address();
        r2 = r2.url();
        r2 = r2.host();
        r4 = okhttp3.internal.platform.Platform.get();
        r4 = r4.isCleartextTrafficPermitted(r2);
        if (r4 != 0) goto L_0x0074;
    L_0x0056:
        r3 = new okhttp3.internal.connection.RouteException;
        r4 = new java.net.UnknownServiceException;
        r5 = new java.lang.StringBuilder;
        r6 = "CLEARTEXT communication to ";
        r5.<init>(r6);
        r5.append(r2);
        r2 = " not permitted by network security policy";
        r5.append(r2);
        r2 = r5.toString();
        r4.<init>(r2);
        r3.<init>(r4);
        throw r3;
    L_0x0074:
        r2 = 0;
        r4 = r2;
    L_0x0076:
        r5 = r1.route;	 Catch:{ IOException -> 0x0364 }
        r5 = r5.requiresTunnel();	 Catch:{ IOException -> 0x0364 }
        r6 = 0;
        r7 = 1;
        if (r5 == 0) goto L_0x0185;
    L_0x0080:
        r5 = new okhttp3.Request$Builder;	 Catch:{ IOException -> 0x0364 }
        r5.<init>();	 Catch:{ IOException -> 0x0364 }
        r8 = r1.route;	 Catch:{ IOException -> 0x0364 }
        r8 = r8.address();	 Catch:{ IOException -> 0x0364 }
        r8 = r8.url();	 Catch:{ IOException -> 0x0364 }
        r5 = r5.url(r8);	 Catch:{ IOException -> 0x0364 }
        r8 = "Host";
        r9 = r1.route;	 Catch:{ IOException -> 0x0364 }
        r9 = r9.address();	 Catch:{ IOException -> 0x0364 }
        r9 = r9.url();	 Catch:{ IOException -> 0x0364 }
        r9 = okhttp3.internal.Util.hostHeader(r9, r7);	 Catch:{ IOException -> 0x0364 }
        r5 = r5.header(r8, r9);	 Catch:{ IOException -> 0x0364 }
        r8 = "Proxy-Connection";
        r9 = "Keep-Alive";
        r5 = r5.header(r8, r9);	 Catch:{ IOException -> 0x0364 }
        r8 = "User-Agent";
        r9 = "okhttp/3.10.0";
        r5 = r5.header(r8, r9);	 Catch:{ IOException -> 0x0364 }
        r5 = r5.build();	 Catch:{ IOException -> 0x0364 }
        r8 = r5.url();	 Catch:{ IOException -> 0x0364 }
        r17.connectSocket$72690553(r18, r19);	 Catch:{ IOException -> 0x0364 }
        r9 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0364 }
        r10 = "CONNECT ";
        r9.<init>(r10);	 Catch:{ IOException -> 0x0364 }
        r8 = okhttp3.internal.Util.hostHeader(r8, r7);	 Catch:{ IOException -> 0x0364 }
        r9.append(r8);	 Catch:{ IOException -> 0x0364 }
        r8 = " HTTP/1.1";
        r9.append(r8);	 Catch:{ IOException -> 0x0364 }
        r8 = r9.toString();	 Catch:{ IOException -> 0x0364 }
        r9 = new okhttp3.internal.http1.Http1Codec;	 Catch:{ IOException -> 0x0364 }
        r10 = r1.source;	 Catch:{ IOException -> 0x0364 }
        r11 = r1.sink;	 Catch:{ IOException -> 0x0364 }
        r9.<init>(r2, r2, r10, r11);	 Catch:{ IOException -> 0x0364 }
        r10 = r1.source;	 Catch:{ IOException -> 0x0364 }
        r10 = r10.timeout();	 Catch:{ IOException -> 0x0364 }
        r11 = r19;
        r12 = (long) r11;
        r14 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ IOException -> 0x0182 }
        r10.timeout(r12, r14);	 Catch:{ IOException -> 0x0182 }
        r10 = r1.sink;	 Catch:{ IOException -> 0x0182 }
        r10 = r10.timeout();	 Catch:{ IOException -> 0x0182 }
        r12 = r20;
        r13 = (long) r12;
        r15 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ IOException -> 0x0362 }
        r10.timeout(r13, r15);	 Catch:{ IOException -> 0x0362 }
        r10 = r5.headers();	 Catch:{ IOException -> 0x0362 }
        r9.writeRequest(r10, r8);	 Catch:{ IOException -> 0x0362 }
        r9.finishRequest();	 Catch:{ IOException -> 0x0362 }
        r8 = r9.readResponseHeaders(r6);	 Catch:{ IOException -> 0x0362 }
        r5 = r8.request(r5);	 Catch:{ IOException -> 0x0362 }
        r5 = r5.build();	 Catch:{ IOException -> 0x0362 }
        r13 = okhttp3.internal.http.HttpHeaders.contentLength(r5);	 Catch:{ IOException -> 0x0362 }
        r15 = -1;
        r8 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1));
        if (r8 != 0) goto L_0x0120;
    L_0x011e:
        r13 = 0;
    L_0x0120:
        r8 = r9.newFixedLengthSource(r13);	 Catch:{ IOException -> 0x0362 }
        r9 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r10 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ IOException -> 0x0362 }
        okhttp3.internal.Util.skipAll(r8, r9, r10);	 Catch:{ IOException -> 0x0362 }
        r8.close();	 Catch:{ IOException -> 0x0362 }
        r8 = r5.code();	 Catch:{ IOException -> 0x0362 }
        r9 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r8 == r9) goto L_0x015b;
    L_0x0137:
        r6 = 407; // 0x197 float:5.7E-43 double:2.01E-321;
        if (r8 == r6) goto L_0x0153;
    L_0x013b:
        r6 = new java.io.IOException;	 Catch:{ IOException -> 0x0362 }
        r7 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0362 }
        r8 = "Unexpected response code for CONNECT: ";
        r7.<init>(r8);	 Catch:{ IOException -> 0x0362 }
        r5 = r5.code();	 Catch:{ IOException -> 0x0362 }
        r7.append(r5);	 Catch:{ IOException -> 0x0362 }
        r5 = r7.toString();	 Catch:{ IOException -> 0x0362 }
        r6.<init>(r5);	 Catch:{ IOException -> 0x0362 }
        throw r6;	 Catch:{ IOException -> 0x0362 }
    L_0x0153:
        r5 = new java.io.IOException;	 Catch:{ IOException -> 0x0362 }
        r6 = "Failed to authenticate with proxy";
        r5.<init>(r6);	 Catch:{ IOException -> 0x0362 }
        throw r5;	 Catch:{ IOException -> 0x0362 }
    L_0x015b:
        r5 = r1.source;	 Catch:{ IOException -> 0x0362 }
        r5 = r5.buffer();	 Catch:{ IOException -> 0x0362 }
        r5 = r5.exhausted();	 Catch:{ IOException -> 0x0362 }
        if (r5 == 0) goto L_0x017a;
    L_0x0167:
        r5 = r1.sink;	 Catch:{ IOException -> 0x0362 }
        r5 = r5.buffer();	 Catch:{ IOException -> 0x0362 }
        r5 = r5.exhausted();	 Catch:{ IOException -> 0x0362 }
        if (r5 != 0) goto L_0x0174;
    L_0x0173:
        goto L_0x017a;
    L_0x0174:
        r5 = r1.rawSocket;	 Catch:{ IOException -> 0x0362 }
        if (r5 != 0) goto L_0x018c;
    L_0x0178:
        goto L_0x0300;
    L_0x017a:
        r5 = new java.io.IOException;	 Catch:{ IOException -> 0x0362 }
        r6 = "TLS tunnel buffered too many bytes!";
        r5.<init>(r6);	 Catch:{ IOException -> 0x0362 }
        throw r5;	 Catch:{ IOException -> 0x0362 }
    L_0x0182:
        r0 = move-exception;
        goto L_0x0367;
    L_0x0185:
        r11 = r19;
        r12 = r20;
        r17.connectSocket$72690553(r18, r19);	 Catch:{ IOException -> 0x0362 }
    L_0x018c:
        r5 = r1.route;	 Catch:{ IOException -> 0x0362 }
        r5 = r5.address();	 Catch:{ IOException -> 0x0362 }
        r5 = r5.sslSocketFactory();	 Catch:{ IOException -> 0x0362 }
        if (r5 != 0) goto L_0x01a2;
    L_0x0198:
        r5 = okhttp3.Protocol.HTTP_1_1;	 Catch:{ IOException -> 0x0362 }
        r1.protocol = r5;	 Catch:{ IOException -> 0x0362 }
        r5 = r1.rawSocket;	 Catch:{ IOException -> 0x0362 }
        r1.socket = r5;	 Catch:{ IOException -> 0x0362 }
        goto L_0x0300;
    L_0x01a2:
        r5 = r1.route;	 Catch:{ IOException -> 0x0362 }
        r5 = r5.address();	 Catch:{ IOException -> 0x0362 }
        r8 = r5.sslSocketFactory();	 Catch:{ IOException -> 0x0362 }
        r9 = r1.rawSocket;	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r10 = r5.url();	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r10 = r10.host();	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r13 = r5.url();	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r13 = r13.port();	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r8 = r8.createSocket(r9, r10, r13, r7);	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r8 = (javax.net.ssl.SSLSocket) r8;	 Catch:{ AssertionError -> 0x033e, all -> 0x0338 }
        r9 = r3.configureSecureSocket(r8);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10 = r9.supportsTlsExtensions();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r10 == 0) goto L_0x01e1;
    L_0x01ce:
        r10 = okhttp3.internal.platform.Platform.get();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r5.url();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r13.host();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r14 = r5.protocols();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10.configureTlsExtensions(r8, r13, r14);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
    L_0x01e1:
        r8.startHandshake();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10 = r8.getSession();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = "NONE";
        r14 = r10.getProtocol();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r13.equals(r14);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r13 != 0) goto L_0x0201;
    L_0x01f4:
        r13 = "SSL_NULL_WITH_NULL_NULL";
        r14 = r10.getCipherSuite();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r13.equals(r14);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r13 != 0) goto L_0x0201;
    L_0x0200:
        goto L_0x0202;
    L_0x0201:
        r7 = r6;
    L_0x0202:
        if (r7 != 0) goto L_0x020c;
    L_0x0204:
        r5 = new java.io.IOException;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r6 = "a valid ssl session was not established";
        r5.<init>(r6);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        throw r5;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
    L_0x020c:
        r7 = okhttp3.Handshake.get(r10);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r5.hostnameVerifier();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r14 = r5.url();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r14 = r14.host();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10 = r13.verify(r14, r10);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r10 != 0) goto L_0x0270;
    L_0x0222:
        r7 = r7.peerCertificates();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r6 = r7.get(r6);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r6 = (java.security.cert.X509Certificate) r6;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r7 = new javax.net.ssl.SSLPeerUnverifiedException;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = new java.lang.StringBuilder;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10 = "Hostname ";
        r9.<init>(r10);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.url();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.host();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = " not verified:\n    certificate: ";
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = okhttp3.CertificatePinner.pin(r6);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = "\n    DN: ";
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r6.getSubjectDN();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.getName();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = "\n    subjectAltNames: ";
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = okhttp3.internal.tls.OkHostnameVerifier.allSubjectAltNames(r6);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9.append(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r9.toString();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r7.<init>(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        throw r7;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
    L_0x0270:
        r10 = r5.certificatePinner();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.url();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.host();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r13 = r7.peerCertificates();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r10.check(r5, r13);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r9.supportsTlsExtensions();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r5 == 0) goto L_0x0292;
    L_0x0289:
        r5 = okhttp3.internal.platform.Platform.get();	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r5 = r5.getSelectedProtocol(r8);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        goto L_0x0293;
    L_0x0292:
        r5 = r2;
    L_0x0293:
        r1.socket = r8;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = r1.socket;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = okio.Okio.source(r9);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = okio.Okio.buffer(r9);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r1.source = r9;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = r1.socket;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = okio.Okio.sink(r9);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r9 = okio.Okio.buffer(r9);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r1.sink = r9;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        r1.handshake = r7;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r5 == 0) goto L_0x02b6;
    L_0x02b1:
        r5 = okhttp3.Protocol.get(r5);	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        goto L_0x02b8;
    L_0x02b6:
        r5 = okhttp3.Protocol.HTTP_1_1;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
    L_0x02b8:
        r1.protocol = r5;	 Catch:{ AssertionError -> 0x0333, all -> 0x032f }
        if (r8 == 0) goto L_0x02c3;
    L_0x02bc:
        r5 = okhttp3.internal.platform.Platform.get();	 Catch:{ IOException -> 0x0362 }
        r5.afterHandshake(r8);	 Catch:{ IOException -> 0x0362 }
    L_0x02c3:
        r5 = r1.protocol;	 Catch:{ IOException -> 0x0362 }
        r7 = okhttp3.Protocol.HTTP_2;	 Catch:{ IOException -> 0x0362 }
        if (r5 != r7) goto L_0x0300;
    L_0x02c9:
        r5 = r1.socket;	 Catch:{ IOException -> 0x0362 }
        r5.setSoTimeout(r6);	 Catch:{ IOException -> 0x0362 }
        r5 = new okhttp3.internal.http2.Http2Connection$Builder;	 Catch:{ IOException -> 0x0362 }
        r5.<init>();	 Catch:{ IOException -> 0x0362 }
        r6 = r1.socket;	 Catch:{ IOException -> 0x0362 }
        r7 = r1.route;	 Catch:{ IOException -> 0x0362 }
        r7 = r7.address();	 Catch:{ IOException -> 0x0362 }
        r7 = r7.url();	 Catch:{ IOException -> 0x0362 }
        r7 = r7.host();	 Catch:{ IOException -> 0x0362 }
        r8 = r1.source;	 Catch:{ IOException -> 0x0362 }
        r9 = r1.sink;	 Catch:{ IOException -> 0x0362 }
        r5 = r5.socket(r6, r7, r8, r9);	 Catch:{ IOException -> 0x0362 }
        r5 = r5.listener(r1);	 Catch:{ IOException -> 0x0362 }
        r6 = r21;
        r5 = r5.pingIntervalMillis(r6);	 Catch:{ IOException -> 0x035c }
        r5 = r5.build();	 Catch:{ IOException -> 0x035c }
        r1.http2Connection = r5;	 Catch:{ IOException -> 0x035c }
        r5 = r1.http2Connection;	 Catch:{ IOException -> 0x035c }
        r5.start();	 Catch:{ IOException -> 0x035c }
    L_0x0300:
        r2 = r1.route;
        r2 = r2.requiresTunnel();
        if (r2 == 0) goto L_0x0319;
    L_0x0308:
        r2 = r1.rawSocket;
        if (r2 != 0) goto L_0x0319;
    L_0x030c:
        r2 = new java.net.ProtocolException;
        r3 = "Too many tunnel connections attempted: 21";
        r2.<init>(r3);
        r3 = new okhttp3.internal.connection.RouteException;
        r3.<init>(r2);
        throw r3;
    L_0x0319:
        r2 = r1.http2Connection;
        if (r2 == 0) goto L_0x032e;
    L_0x031d:
        r2 = r1.connectionPool;
        monitor-enter(r2);
        r3 = r1.http2Connection;	 Catch:{ all -> 0x032a }
        r3 = r3.maxConcurrentStreams();	 Catch:{ all -> 0x032a }
        r1.allocationLimit = r3;	 Catch:{ all -> 0x032a }
        monitor-exit(r2);	 Catch:{ all -> 0x032a }
        return;
    L_0x032a:
        r0 = move-exception;
        r3 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x032a }
        throw r3;
    L_0x032e:
        return;
    L_0x032f:
        r0 = move-exception;
        r6 = r21;
        goto L_0x0351;
    L_0x0333:
        r0 = move-exception;
        r6 = r21;
        r5 = r0;
        goto L_0x0343;
    L_0x0338:
        r0 = move-exception;
        r6 = r21;
        r5 = r0;
        r8 = r2;
        goto L_0x0352;
    L_0x033e:
        r0 = move-exception;
        r6 = r21;
        r5 = r0;
        r8 = r2;
    L_0x0343:
        r7 = okhttp3.internal.Util.isAndroidGetsocknameError(r5);	 Catch:{ all -> 0x0350 }
        if (r7 == 0) goto L_0x034f;
    L_0x0349:
        r7 = new java.io.IOException;	 Catch:{ all -> 0x0350 }
        r7.<init>(r5);	 Catch:{ all -> 0x0350 }
        throw r7;	 Catch:{ all -> 0x0350 }
    L_0x034f:
        throw r5;	 Catch:{ all -> 0x0350 }
    L_0x0350:
        r0 = move-exception;
    L_0x0351:
        r5 = r0;
    L_0x0352:
        if (r8 == 0) goto L_0x035e;
    L_0x0354:
        r7 = okhttp3.internal.platform.Platform.get();	 Catch:{ IOException -> 0x035c }
        r7.afterHandshake(r8);	 Catch:{ IOException -> 0x035c }
        goto L_0x035e;
    L_0x035c:
        r0 = move-exception;
        goto L_0x036b;
    L_0x035e:
        okhttp3.internal.Util.closeQuietly(r8);	 Catch:{ IOException -> 0x035c }
        throw r5;	 Catch:{ IOException -> 0x035c }
    L_0x0362:
        r0 = move-exception;
        goto L_0x0369;
    L_0x0364:
        r0 = move-exception;
        r11 = r19;
    L_0x0367:
        r12 = r20;
    L_0x0369:
        r6 = r21;
    L_0x036b:
        r5 = r0;
        r7 = r1.socket;
        okhttp3.internal.Util.closeQuietly(r7);
        r7 = r1.rawSocket;
        okhttp3.internal.Util.closeQuietly(r7);
        r1.socket = r2;
        r1.rawSocket = r2;
        r1.source = r2;
        r1.sink = r2;
        r1.handshake = r2;
        r1.protocol = r2;
        r1.http2Connection = r2;
        if (r4 != 0) goto L_0x038d;
    L_0x0386:
        r4 = new okhttp3.internal.connection.RouteException;
        r4.<init>(r5);
    L_0x038b:
        r7 = r4;
        goto L_0x0391;
    L_0x038d:
        r4.addConnectException(r5);
        goto L_0x038b;
    L_0x0391:
        if (r22 == 0) goto L_0x039d;
    L_0x0393:
        r5 = r3.connectionFailed(r5);
        if (r5 != 0) goto L_0x039a;
    L_0x0399:
        goto L_0x039d;
    L_0x039a:
        r4 = r7;
        goto L_0x0076;
    L_0x039d:
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.connect$68d0d7c3(int, int, int, int, boolean):void");
    }

    private void connectSocket$72690553(int i, int i2) throws IOException {
        Socket socket;
        Proxy proxy = this.route.proxy();
        Address address = this.route.address();
        if (proxy.type() != Type.DIRECT) {
            if (proxy.type() != Type.HTTP) {
                socket = new Socket(proxy);
                this.rawSocket = socket;
                this.rawSocket.setSoTimeout(i2);
                Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
                this.source = Okio.buffer(Okio.source(this.rawSocket));
                this.sink = Okio.buffer(Okio.sink(this.rawSocket));
            }
        }
        socket = address.socketFactory().createSocket();
        this.rawSocket = socket;
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
            try {
                this.source = Okio.buffer(Okio.source(this.rawSocket));
                this.sink = Okio.buffer(Okio.sink(this.rawSocket));
            } catch (int i3) {
                if ("throw with null exception".equals(i3.getMessage()) != 0) {
                    throw new IOException(i3);
                }
            }
        } catch (int i32) {
            StringBuilder stringBuilder = new StringBuilder("Failed to connect to ");
            stringBuilder.append(this.route.socketAddress());
            i2 = new ConnectException(stringBuilder.toString());
            i2.initCause(i32);
            throw i2;
        }
    }

    public final boolean isEligible(okhttp3.Address r5, @javax.annotation.Nullable okhttp3.Route r6) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = r4.allocations;
        r0 = r0.size();
        r1 = r4.allocationLimit;
        r2 = 0;
        if (r0 >= r1) goto L_0x00a2;
    L_0x000b:
        r0 = r4.noNewStreams;
        if (r0 == 0) goto L_0x0011;
    L_0x000f:
        goto L_0x00a2;
    L_0x0011:
        r0 = okhttp3.internal.Internal.instance;
        r1 = r4.route;
        r1 = r1.address();
        r0 = r0.equalsNonHost(r1, r5);
        if (r0 != 0) goto L_0x0020;
    L_0x001f:
        return r2;
    L_0x0020:
        r0 = r5.url();
        r0 = r0.host();
        r1 = r4.route;
        r1 = r1.address();
        r1 = r1.url();
        r1 = r1.host();
        r0 = r0.equals(r1);
        r1 = 1;
        if (r0 == 0) goto L_0x003e;
    L_0x003d:
        return r1;
    L_0x003e:
        r0 = r4.http2Connection;
        if (r0 != 0) goto L_0x0043;
    L_0x0042:
        return r2;
    L_0x0043:
        if (r6 != 0) goto L_0x0046;
    L_0x0045:
        return r2;
    L_0x0046:
        r0 = r6.proxy();
        r0 = r0.type();
        r3 = java.net.Proxy.Type.DIRECT;
        if (r0 == r3) goto L_0x0053;
    L_0x0052:
        return r2;
    L_0x0053:
        r0 = r4.route;
        r0 = r0.proxy();
        r0 = r0.type();
        r3 = java.net.Proxy.Type.DIRECT;
        if (r0 == r3) goto L_0x0062;
    L_0x0061:
        return r2;
    L_0x0062:
        r0 = r4.route;
        r0 = r0.socketAddress();
        r3 = r6.socketAddress();
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x0073;
    L_0x0072:
        return r2;
    L_0x0073:
        r6 = r6.address();
        r6 = r6.hostnameVerifier();
        r0 = okhttp3.internal.tls.OkHostnameVerifier.INSTANCE;
        if (r6 == r0) goto L_0x0080;
    L_0x007f:
        return r2;
    L_0x0080:
        r6 = r5.url();
        r6 = r4.supportsUrl(r6);
        if (r6 != 0) goto L_0x008b;
    L_0x008a:
        return r2;
    L_0x008b:
        r6 = r5.certificatePinner();	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        r5 = r5.url();	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        r5 = r5.host();	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        r0 = r4.handshake;	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        r0 = r0.peerCertificates();	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        r6.check(r5, r0);	 Catch:{ SSLPeerUnverifiedException -> 0x00a1 }
        return r1;
    L_0x00a1:
        return r2;
    L_0x00a2:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.isEligible(okhttp3.Address, okhttp3.Route):boolean");
    }

    public final boolean supportsUrl(HttpUrl httpUrl) {
        if (httpUrl.port() != this.route.address().url().port()) {
            return false;
        }
        if (httpUrl.host().equals(this.route.address().url().host())) {
            return true;
        }
        if (this.handshake != null) {
            OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
            if (OkHostnameVerifier.verify(httpUrl.host(), (X509Certificate) this.handshake.peerCertificates().get(0)) != null) {
                return true;
            }
        }
        return false;
    }

    public final HttpCodec newCodec(OkHttpClient okHttpClient, Chain chain, StreamAllocation streamAllocation) throws SocketException {
        if (this.http2Connection != null) {
            return new Http2Codec(okHttpClient, chain, streamAllocation, this.http2Connection);
        }
        this.socket.setSoTimeout(chain.readTimeoutMillis());
        this.source.timeout().timeout((long) chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.sink.timeout().timeout((long) chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1Codec(okHttpClient, streamAllocation, this.source, this.sink);
    }

    public final Route route() {
        return this.route;
    }

    public final void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    public final Socket socket() {
        return this.socket;
    }

    public final boolean isHealthy(boolean r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = r4.socket;
        r0 = r0.isClosed();
        r1 = 0;
        if (r0 != 0) goto L_0x0053;
    L_0x0009:
        r0 = r4.socket;
        r0 = r0.isInputShutdown();
        if (r0 != 0) goto L_0x0053;
    L_0x0011:
        r0 = r4.socket;
        r0 = r0.isOutputShutdown();
        if (r0 == 0) goto L_0x001a;
    L_0x0019:
        goto L_0x0053;
    L_0x001a:
        r0 = r4.http2Connection;
        r2 = 1;
        if (r0 == 0) goto L_0x0029;
    L_0x001f:
        r5 = r4.http2Connection;
        r5 = r5.isShutdown();
        if (r5 != 0) goto L_0x0028;
    L_0x0027:
        return r2;
    L_0x0028:
        return r1;
    L_0x0029:
        if (r5 == 0) goto L_0x0052;
    L_0x002b:
        r5 = r4.socket;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r5 = r5.getSoTimeout();	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r0 = r4.socket;	 Catch:{ all -> 0x004a }
        r0.setSoTimeout(r2);	 Catch:{ all -> 0x004a }
        r0 = r4.source;	 Catch:{ all -> 0x004a }
        r0 = r0.exhausted();	 Catch:{ all -> 0x004a }
        if (r0 == 0) goto L_0x0044;
    L_0x003e:
        r0 = r4.socket;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r0.setSoTimeout(r5);	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        return r1;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
    L_0x0044:
        r0 = r4.socket;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r0.setSoTimeout(r5);	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        return r2;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
    L_0x004a:
        r0 = move-exception;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r3 = r4.socket;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        r3.setSoTimeout(r5);	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
        throw r0;	 Catch:{ SocketTimeoutException -> 0x0052, IOException -> 0x0051 }
    L_0x0051:
        return r1;
    L_0x0052:
        return r2;
    L_0x0053:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.isHealthy(boolean):boolean");
    }

    public final void onStream(Http2Stream http2Stream) throws IOException {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }

    public final void onSettings(Http2Connection http2Connection) {
        synchronized (this.connectionPool) {
            this.allocationLimit = http2Connection.maxConcurrentStreams();
        }
    }

    public final Handshake handshake() {
        return this.handshake;
    }

    public final boolean isMultiplexed() {
        return this.http2Connection != null;
    }

    public final Protocol protocol() {
        return this.protocol;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Connection{");
        stringBuilder.append(this.route.address().url().host());
        stringBuilder.append(":");
        stringBuilder.append(this.route.address().url().port());
        stringBuilder.append(", proxy=");
        stringBuilder.append(this.route.proxy());
        stringBuilder.append(" hostAddress=");
        stringBuilder.append(this.route.socketAddress());
        stringBuilder.append(" cipherSuite=");
        stringBuilder.append(this.handshake != null ? this.handshake.cipherSuite() : "none");
        stringBuilder.append(" protocol=");
        stringBuilder.append(this.protocol);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
