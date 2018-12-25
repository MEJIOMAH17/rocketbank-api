package ru.rocketbank.core.tls;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.ConnectionSpec;
import okhttp3.OkHttpClient.Builder;
import okhttp3.TlsVersion;
import ru.rocketbank.core.manager.AnalyticsManager;

public final class Tls12SocketFactory extends SSLSocketFactory {
    private static final String[] TLS_V12_ONLY = new String[]{"TLSv1.2"};
    private final SSLSocketFactory delegate;

    private Tls12SocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
    }

    public final String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    public final String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        socket = this.delegate.createSocket(socket, str, i, z);
        if ((socket instanceof SSLSocket) != null) {
            ((SSLSocket) socket).setEnabledProtocols(TLS_V12_ONLY);
        }
        return socket;
    }

    public final Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        str = this.delegate.createSocket(str, i);
        if ((str instanceof SSLSocket) != 0) {
            ((SSLSocket) str).setEnabledProtocols(TLS_V12_ONLY);
        }
        return str;
    }

    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        str = this.delegate.createSocket(str, i, inetAddress, i2);
        if ((str instanceof SSLSocket) != 0) {
            ((SSLSocket) str).setEnabledProtocols(TLS_V12_ONLY);
        }
        return str;
    }

    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        inetAddress = this.delegate.createSocket(inetAddress, i);
        if ((inetAddress instanceof SSLSocket) != 0) {
            ((SSLSocket) inetAddress).setEnabledProtocols(TLS_V12_ONLY);
        }
        return inetAddress;
    }

    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        inetAddress = this.delegate.createSocket(inetAddress, i, inetAddress2, i2);
        if ((inetAddress instanceof SSLSocket) != 0) {
            ((SSLSocket) inetAddress).setEnabledProtocols(TLS_V12_ONLY);
        }
        return inetAddress;
    }

    public static Builder enableTls12OnPreLollipop(Builder builder) {
        if (VERSION.SDK_INT >= 16 && VERSION.SDK_INT < 21) {
            try {
                X509TrustManager systemDefaultTrustManager = systemDefaultTrustManager();
                SSLContext instance = SSLContext.getInstance("TLSv1.2");
                instance.init(null, new TrustManager[]{systemDefaultTrustManager}, null);
                builder.sslSocketFactory(new Tls12SocketFactory(instance.getSocketFactory()), systemDefaultTrustManager);
                ConnectionSpec build = new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS).tlsVersions(TlsVersion.TLS_1_2).build();
                List arrayList = new ArrayList();
                arrayList.add(build);
                arrayList.add(ConnectionSpec.COMPATIBLE_TLS);
                arrayList.add(ConnectionSpec.CLEARTEXT);
                builder.connectionSpecs(arrayList);
            } catch (Throwable e) {
                AnalyticsManager.logException(e);
                Log.e("OkHttpTLSCompat", "Error while setting TLS 1.2", e);
            }
        }
        return builder;
    }

    private static javax.net.ssl.X509TrustManager systemDefaultTrustManager() {
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
        r0 = javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm();	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0 = javax.net.ssl.TrustManagerFactory.getInstance(r0);	 Catch:{ GeneralSecurityException -> 0x0039 }
        r1 = 0;	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0.init(r1);	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0 = r0.getTrustManagers();	 Catch:{ GeneralSecurityException -> 0x0039 }
        r1 = r0.length;	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2 = 1;	 Catch:{ GeneralSecurityException -> 0x0039 }
        if (r1 != r2) goto L_0x0021;	 Catch:{ GeneralSecurityException -> 0x0039 }
    L_0x0014:
        r1 = 0;	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2 = r0[r1];	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2 = r2 instanceof javax.net.ssl.X509TrustManager;	 Catch:{ GeneralSecurityException -> 0x0039 }
        if (r2 != 0) goto L_0x001c;	 Catch:{ GeneralSecurityException -> 0x0039 }
    L_0x001b:
        goto L_0x0021;	 Catch:{ GeneralSecurityException -> 0x0039 }
    L_0x001c:
        r0 = r0[r1];	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0 = (javax.net.ssl.X509TrustManager) r0;	 Catch:{ GeneralSecurityException -> 0x0039 }
        return r0;	 Catch:{ GeneralSecurityException -> 0x0039 }
    L_0x0021:
        r1 = new java.lang.IllegalStateException;	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2 = new java.lang.StringBuilder;	 Catch:{ GeneralSecurityException -> 0x0039 }
        r3 = "Unexpected default trust managers:";	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2.<init>(r3);	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0 = java.util.Arrays.toString(r0);	 Catch:{ GeneralSecurityException -> 0x0039 }
        r2.append(r0);	 Catch:{ GeneralSecurityException -> 0x0039 }
        r0 = r2.toString();	 Catch:{ GeneralSecurityException -> 0x0039 }
        r1.<init>(r0);	 Catch:{ GeneralSecurityException -> 0x0039 }
        throw r1;	 Catch:{ GeneralSecurityException -> 0x0039 }
    L_0x0039:
        r0 = new java.lang.AssertionError;
        r0.<init>();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.tls.Tls12SocketFactory.systemDefaultTrustManager():javax.net.ssl.X509TrustManager");
    }
}
