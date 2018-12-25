package com.pusher.client;

import java.net.Proxy;

public class PusherOptions {
    private static final long DEFAULT_ACTIVITY_TIMEOUT = 120000;
    private static final long DEFAULT_PONG_TIMEOUT = 30000;
    private static final String LIB_DEV_VERSION = "0.0.0-dev";
    public static final String LIB_VERSION = readVersionFromProperties();
    private static final String PUSHER_DOMAIN = "pusher.com";
    private static final String SRC_LIB_DEV_VERSION = "@version@";
    private static final String URI_SUFFIX;
    private static final int WSS_PORT = 443;
    private static final String WSS_SCHEME = "wss";
    private static final int WS_PORT = 80;
    private static final String WS_SCHEME = "ws";
    private long activityTimeout = DEFAULT_ACTIVITY_TIMEOUT;
    private Authorizer authorizer;
    private boolean encrypted = true;
    private String host = "ws.pusherapp.com";
    private long pongTimeout = DEFAULT_PONG_TIMEOUT;
    private Proxy proxy = Proxy.NO_PROXY;
    private int wsPort = 80;
    private int wssPort = WSS_PORT;

    static {
        StringBuilder stringBuilder = new StringBuilder("?client=java-client&protocol=5&version=");
        stringBuilder.append(LIB_VERSION);
        URI_SUFFIX = stringBuilder.toString();
    }

    public boolean isEncrypted() {
        return this.encrypted;
    }

    public PusherOptions setEncrypted(boolean z) {
        this.encrypted = z;
        return this;
    }

    public Authorizer getAuthorizer() {
        return this.authorizer;
    }

    public PusherOptions setAuthorizer(Authorizer authorizer) {
        this.authorizer = authorizer;
        return this;
    }

    public PusherOptions setHost(String str) {
        this.host = str;
        return this;
    }

    public PusherOptions setWsPort(int i) {
        this.wsPort = i;
        return this;
    }

    public PusherOptions setWssPort(int i) {
        this.wssPort = i;
        return this;
    }

    public PusherOptions setCluster(String str) {
        StringBuilder stringBuilder = new StringBuilder("ws-");
        stringBuilder.append(str);
        stringBuilder.append(".pusher.com");
        this.host = stringBuilder.toString();
        this.wsPort = 80;
        this.wssPort = WSS_PORT;
        return this;
    }

    public PusherOptions setActivityTimeout(long j) {
        if (j < 1000) {
            throw new IllegalArgumentException("Activity timeout must be at least 1,000ms (and is recommended to be much higher)");
        }
        this.activityTimeout = j;
        return this;
    }

    public long getActivityTimeout() {
        return this.activityTimeout;
    }

    public PusherOptions setPongTimeout(long j) {
        if (j < 1000) {
            throw new IllegalArgumentException("Pong timeout must be at least 1,000ms (and is recommended to be much higher)");
        }
        this.pongTimeout = j;
        return this;
    }

    public long getPongTimeout() {
        return this.pongTimeout;
    }

    public String buildUrl(String str) {
        String str2 = "%s://%s:%s/app/%s%s";
        Object[] objArr = new Object[5];
        objArr[0] = this.encrypted ? WSS_SCHEME : WS_SCHEME;
        objArr[1] = this.host;
        objArr[2] = Integer.valueOf(this.encrypted ? this.wssPort : this.wsPort);
        objArr[3] = str;
        objArr[4] = URI_SUFFIX;
        return String.format(str2, objArr);
    }

    public PusherOptions setProxy(Proxy proxy) {
        if (proxy == null) {
            throw new IllegalArgumentException("proxy must not be null (instead use Proxy.NO_PROXY)");
        }
        this.proxy = proxy;
        return this;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    private static java.lang.String readVersionFromProperties() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 0;
        r1 = new java.util.Properties;	 Catch:{ Exception -> 0x0044, all -> 0x003b }
        r1.<init>();	 Catch:{ Exception -> 0x0044, all -> 0x003b }
        r2 = com.pusher.client.PusherOptions.class;	 Catch:{ Exception -> 0x0044, all -> 0x003b }
        r3 = "/pusher.properties";	 Catch:{ Exception -> 0x0044, all -> 0x003b }
        r2 = r2.getResourceAsStream(r3);	 Catch:{ Exception -> 0x0044, all -> 0x003b }
        r1.load(r2);	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        r0 = "version";	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        r0 = r1.get(r0);	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        r1 = "@version@";	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        r1 = r0.equals(r1);	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        if (r1 == 0) goto L_0x0023;	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
    L_0x0021:
        r0 = "0.0.0-dev";	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
    L_0x0023:
        if (r0 == 0) goto L_0x0031;	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
    L_0x0025:
        r1 = r0.length();	 Catch:{ Exception -> 0x0039, all -> 0x0037 }
        if (r1 <= 0) goto L_0x0031;
    L_0x002b:
        if (r2 == 0) goto L_0x0030;
    L_0x002d:
        r2.close();	 Catch:{ IOException -> 0x0030 }
    L_0x0030:
        return r0;
    L_0x0031:
        if (r2 == 0) goto L_0x0049;
    L_0x0033:
        r2.close();	 Catch:{ IOException -> 0x0049 }
        goto L_0x0049;
    L_0x0037:
        r0 = move-exception;
        goto L_0x003e;
    L_0x0039:
        r0 = r2;
        goto L_0x0044;
    L_0x003b:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x003e:
        if (r2 == 0) goto L_0x0043;
    L_0x0040:
        r2.close();	 Catch:{ IOException -> 0x0043 }
    L_0x0043:
        throw r0;
    L_0x0044:
        if (r0 == 0) goto L_0x0049;
    L_0x0046:
        r0.close();	 Catch:{ IOException -> 0x0049 }
    L_0x0049:
        r0 = "0.0.0";
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.client.PusherOptions.readVersionFromProperties():java.lang.String");
    }
}
