package com.google.maps.android;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import javax.inject.Provider;
import okhttp3.Protocol;
import org.java_websocket.handshake.HandshakeBuilder;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.slf4j.helpers.NOPLogger;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.pay.google.UiTapAndPay;

/* renamed from: com.google.maps.android.R */
public final class C0651R {
    public final int code;
    public final String message;
    public final Protocol protocol;

    /* renamed from: com.google.maps.android.R$id */
    public static final class id implements ILoggerFactory {
        public final Logger getLogger(String str) {
            return NOPLogger.NOP_LOGGER;
        }
    }

    /* renamed from: com.google.maps.android.R$layout */
    public static final class layout implements Provider<UiTapAndPay> {
        private final Provider<GoogleApiClient> clientProvider;
        private final AndroidModule module;

        public layout(AndroidModule androidModule, Provider<GoogleApiClient> provider) {
            this.module = androidModule;
            this.clientProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return this.module.provideAndroidTapAndPay((GoogleApiClient) this.clientProvider.get());
        }
    }

    /* renamed from: com.google.maps.android.R$style */
    public static final class style implements Provider<Context> {
        private final AndroidModule module;

        public style(AndroidModule androidModule) {
            this.module = androidModule;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context provideAppContext = this.module.provideAppContext();
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (provideAppContext != null) {
                return provideAppContext;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: com.google.maps.android.R$drawable */
    public static final class drawable implements HandshakeBuilder {
        private byte[] content;
        private TreeMap<String, String> map = new TreeMap(String.CASE_INSENSITIVE_ORDER);

        public final Iterator<String> iterateHttpFields() {
            return Collections.unmodifiableSet(this.map.keySet()).iterator();
        }

        public final String getFieldValue(String str) {
            str = (String) this.map.get(str);
            return str == null ? "" : str;
        }

        public final byte[] getContent() {
            return this.content;
        }

        public final void setContent(byte[] bArr) {
            this.content = bArr;
        }

        public final void put(String str, String str2) {
            this.map.put(str, str2);
        }

        public final boolean hasFieldValue(String str) {
            return this.map.containsKey(str);
        }
    }

    private C0651R(Protocol protocol, int i, String str) {
        this.protocol = protocol;
        this.code = i;
        this.message = str;
    }

    public static com.google.maps.android.C0651R parse$73c5b6cb(java.lang.String r8) throws java.io.IOException {
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
        r0 = "HTTP/1.";
        r0 = r8.startsWith(r0);
        r1 = 4;
        r2 = 32;
        r3 = 9;
        if (r0 == 0) goto L_0x004e;
    L_0x000d:
        r0 = r8.length();
        if (r0 < r3) goto L_0x003e;
    L_0x0013:
        r0 = 8;
        r0 = r8.charAt(r0);
        if (r0 == r2) goto L_0x001c;
    L_0x001b:
        goto L_0x003e;
    L_0x001c:
        r0 = 7;
        r0 = r8.charAt(r0);
        r0 = r0 + -48;
        if (r0 != 0) goto L_0x0028;
    L_0x0025:
        r0 = okhttp3.Protocol.HTTP_1_0;
        goto L_0x0059;
    L_0x0028:
        r4 = 1;
        if (r0 != r4) goto L_0x002e;
    L_0x002b:
        r0 = okhttp3.Protocol.HTTP_1_1;
        goto L_0x0059;
    L_0x002e:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
    L_0x003e:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
    L_0x004e:
        r0 = "ICY ";
        r0 = r8.startsWith(r0);
        if (r0 == 0) goto L_0x00b2;
    L_0x0056:
        r0 = okhttp3.Protocol.HTTP_1_0;
        r3 = r1;
    L_0x0059:
        r4 = r8.length();
        r5 = r3 + 3;
        if (r4 >= r5) goto L_0x0071;
    L_0x0061:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
    L_0x0071:
        r4 = r8.substring(r3, r5);	 Catch:{ NumberFormatException -> 0x00a2 }
        r4 = java.lang.Integer.parseInt(r4);	 Catch:{ NumberFormatException -> 0x00a2 }
        r6 = "";
        r7 = r8.length();
        if (r7 <= r5) goto L_0x009c;
    L_0x0081:
        r5 = r8.charAt(r5);
        if (r5 == r2) goto L_0x0097;
    L_0x0087:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
    L_0x0097:
        r3 = r3 + r1;
        r6 = r8.substring(r3);
    L_0x009c:
        r8 = new com.google.maps.android.R;
        r8.<init>(r0, r4, r6);
        return r8;
    L_0x00a2:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
    L_0x00b2:
        r0 = new java.net.ProtocolException;
        r1 = "Unexpected status line: ";
        r8 = java.lang.String.valueOf(r8);
        r8 = r1.concat(r8);
        r0.<init>(r8);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.maps.android.R.parse$73c5b6cb(java.lang.String):com.google.maps.android.R");
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.protocol == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        stringBuilder.append(' ');
        stringBuilder.append(this.code);
        if (this.message != null) {
            stringBuilder.append(' ');
            stringBuilder.append(this.message);
        }
        return stringBuilder.toString();
    }
}
