package com.google.android.gms.internal;

import com.google.android.gms.internal.zzb.zza;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class zzu implements zzg {
    protected static final boolean DEBUG = zzt.DEBUG;
    private static int zzan = 3000;
    private static int zzao = 4096;
    protected final zzz zzap;
    protected final zzv zzaq;

    public zzu(zzz zzz) {
        this(zzz, new zzv(zzao));
    }

    public zzu(zzz zzz, zzv zzv) {
        this.zzap = zzz;
        this.zzaq = zzv;
    }

    protected static Map<String, String> zza(Header[] headerArr) {
        Map<String, String> treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private void zza(long j, zzl<?> zzl, byte[] bArr, StatusLine statusLine) {
        if (DEBUG || j > ((long) zzan)) {
            String str = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
            Object[] objArr = new Object[5];
            objArr[0] = zzl;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(zzl.zzq().zzd());
            zzt.zzb(str, objArr);
        }
    }

    private static void zza(String str, zzl<?> zzl, zzs zzs) throws zzs {
        zzp zzq = zzl.zzq();
        int zzp = zzl.zzp();
        try {
            zzq.zza(zzs);
            zzl.zzc(String.format("%s-retry [timeout=%s]", new Object[]{str, Integer.valueOf(zzp)}));
        } catch (zzs zzs2) {
            zzl.zzc(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{str, Integer.valueOf(zzp)}));
            throw zzs2;
        }
    }

    private void zza(Map<String, String> map, zza zza) {
        if (zza != null) {
            if (zza.zza != null) {
                map.put("If-None-Match", zza.zza);
            }
            if (zza.zzc > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(zza.zzc)));
            }
        }
    }

    private byte[] zza(org.apache.http.HttpEntity r7) throws java.io.IOException, com.google.android.gms.internal.zzq {
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
        r6 = this;
        r0 = new com.google.android.gms.internal.zzab;
        r1 = r6.zzaq;
        r2 = r7.getContentLength();
        r2 = (int) r2;
        r0.<init>(r1, r2);
        r1 = 0;
        r2 = 0;
        r3 = r7.getContent();	 Catch:{ all -> 0x0048 }
        if (r3 != 0) goto L_0x001a;	 Catch:{ all -> 0x0048 }
    L_0x0014:
        r3 = new com.google.android.gms.internal.zzq;	 Catch:{ all -> 0x0048 }
        r3.<init>();	 Catch:{ all -> 0x0048 }
        throw r3;	 Catch:{ all -> 0x0048 }
    L_0x001a:
        r4 = r6.zzaq;	 Catch:{ all -> 0x0048 }
        r5 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;	 Catch:{ all -> 0x0048 }
        r4 = r4.zzb(r5);	 Catch:{ all -> 0x0048 }
    L_0x0022:
        r2 = r3.read(r4);	 Catch:{ all -> 0x0045 }
        r5 = -1;	 Catch:{ all -> 0x0045 }
        if (r2 == r5) goto L_0x002d;	 Catch:{ all -> 0x0045 }
    L_0x0029:
        r0.write(r4, r1, r2);	 Catch:{ all -> 0x0045 }
        goto L_0x0022;	 Catch:{ all -> 0x0045 }
    L_0x002d:
        r2 = r0.toByteArray();	 Catch:{ all -> 0x0045 }
        r7.consumeContent();	 Catch:{ IOException -> 0x0035 }
        goto L_0x003c;
    L_0x0035:
        r7 = "Error occured when calling consumingContent";
        r1 = new java.lang.Object[r1];
        com.google.android.gms.internal.zzt.zza(r7, r1);
    L_0x003c:
        r7 = r6.zzaq;
        r7.zza(r4);
        r0.close();
        return r2;
    L_0x0045:
        r3 = move-exception;
        r2 = r4;
        goto L_0x0049;
    L_0x0048:
        r3 = move-exception;
    L_0x0049:
        r7.consumeContent();	 Catch:{ IOException -> 0x004d }
        goto L_0x0054;
    L_0x004d:
        r7 = "Error occured when calling consumingContent";
        r1 = new java.lang.Object[r1];
        com.google.android.gms.internal.zzt.zza(r7, r1);
    L_0x0054:
        r7 = r6.zzaq;
        r7.zza(r2);
        r0.close();
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzu.zza(org.apache.http.HttpEntity):byte[]");
    }

    public com.google.android.gms.internal.zzj zza(com.google.android.gms.internal.zzl<?> r23) throws com.google.android.gms.internal.zzs {
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
        r22 = this;
        r7 = r22;
        r8 = r23;
        r9 = android.os.SystemClock.elapsedRealtime();
    L_0x0008:
        r1 = java.util.Collections.emptyMap();
        r11 = 0;
        r2 = 0;
        r3 = new java.util.HashMap;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r3.<init>();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r4 = r23.zzh();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r7.zza(r3, r4);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r4 = r7.zzap;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r12 = r4.zza(r8, r3);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00cf }
        r6 = r12.getStatusLine();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00ca }
        r14 = r6.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00ca }
        r3 = r12.getAllHeaders();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00ca }
        r13 = zza(r3);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00ca }
        r1 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r14 != r1) goto L_0x0074;
    L_0x0034:
        r1 = r23.zzh();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        if (r1 != 0) goto L_0x004f;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
    L_0x003a:
        r1 = new com.google.android.gms.internal.zzj;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r16 = 304; // 0x130 float:4.26E-43 double:1.5E-321;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r17 = 0;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r19 = 1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r3 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r20 = r3 - r9;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r15 = r1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r18 = r13;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r15.<init>(r16, r17, r18, r19, r20);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        return r1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
    L_0x004f:
        r3 = r1.zzf;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r3.putAll(r13);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r3 = new com.google.android.gms.internal.zzj;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r15 = 304; // 0x130 float:4.26E-43 double:1.5E-321;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r4 = r1.data;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r1 = r1.zzf;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r18 = 1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r5 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r19 = r5 - r9;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r14 = r3;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r16 = r4;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r17 = r1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r14.<init>(r15, r16, r17, r18, r19);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        return r3;
    L_0x006d:
        r0 = move-exception;
        r1 = r0;
        r15 = r2;
        r16 = r13;
        goto L_0x00d5;
    L_0x0074:
        r1 = r12.getEntity();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00c3 }
        if (r1 == 0) goto L_0x0083;
    L_0x007a:
        r1 = r12.getEntity();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        r1 = r7.zza(r1);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x006d }
        goto L_0x0085;
    L_0x0083:
        r1 = new byte[r11];	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00c3 }
    L_0x0085:
        r20 = r1;
        r1 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r3 = r1 - r9;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r1 = r7;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r2 = r3;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r4 = r8;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r5 = r20;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r1.zza(r2, r4, r5, r6);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        if (r14 < r1) goto L_0x00b2;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
    L_0x0099:
        r1 = 299; // 0x12b float:4.19E-43 double:1.477E-321;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        if (r14 <= r1) goto L_0x009e;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
    L_0x009d:
        goto L_0x00b2;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
    L_0x009e:
        r1 = new com.google.android.gms.internal.zzj;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r17 = 0;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00bb }
        r18 = r2 - r9;
        r3 = r13;
        r13 = r1;
        r15 = r20;
        r16 = r3;
        r13.<init>(r14, r15, r16, r17, r18);	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
        return r1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
    L_0x00b2:
        r3 = r13;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
        r1 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
        r1.<init>();	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
        throw r1;	 Catch:{ SocketTimeoutException -> 0x016c, ConnectTimeoutException -> 0x0164, MalformedURLException -> 0x014a, IOException -> 0x00b9 }
    L_0x00b9:
        r0 = move-exception;
        goto L_0x00bd;
    L_0x00bb:
        r0 = move-exception;
        r3 = r13;
    L_0x00bd:
        r1 = r0;
        r16 = r3;
        r15 = r20;
        goto L_0x00d5;
    L_0x00c3:
        r0 = move-exception;
        r3 = r13;
        r1 = r0;
        r15 = r2;
        r16 = r3;
        goto L_0x00d5;
    L_0x00ca:
        r0 = move-exception;
        r16 = r1;
        r15 = r2;
        goto L_0x00d4;
    L_0x00cf:
        r0 = move-exception;
        r16 = r1;
        r12 = r2;
        r15 = r12;
    L_0x00d4:
        r1 = r0;
    L_0x00d5:
        if (r12 == 0) goto L_0x0144;
    L_0x00d7:
        r1 = r12.getStatusLine();
        r1 = r1.getStatusCode();
        r2 = "Unexpected response code %d for %s";
        r3 = 2;
        r3 = new java.lang.Object[r3];
        r4 = java.lang.Integer.valueOf(r1);
        r3[r11] = r4;
        r4 = 1;
        r5 = r23.getUrl();
        r3[r4] = r5;
        com.google.android.gms.internal.zzt.zzc(r2, r3);
        if (r15 == 0) goto L_0x013c;
    L_0x00f6:
        r2 = new com.google.android.gms.internal.zzj;
        r17 = 0;
        r3 = android.os.SystemClock.elapsedRealtime();
        r18 = r3 - r9;
        r13 = r2;
        r14 = r1;
        r13.<init>(r14, r15, r16, r17, r18);
        r3 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r1 == r3) goto L_0x0130;
    L_0x0109:
        r3 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r1 != r3) goto L_0x010e;
    L_0x010d:
        goto L_0x0130;
    L_0x010e:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r1 < r3) goto L_0x011c;
    L_0x0112:
        r3 = 499; // 0x1f3 float:6.99E-43 double:2.465E-321;
        if (r1 > r3) goto L_0x011c;
    L_0x0116:
        r1 = new com.google.android.gms.internal.zzd;
        r1.<init>(r2);
        throw r1;
    L_0x011c:
        r3 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        if (r1 < r3) goto L_0x012a;
    L_0x0120:
        r3 = 599; // 0x257 float:8.4E-43 double:2.96E-321;
        if (r1 > r3) goto L_0x012a;
    L_0x0124:
        r1 = new com.google.android.gms.internal.zzq;
        r1.<init>(r2);
        throw r1;
    L_0x012a:
        r1 = new com.google.android.gms.internal.zzq;
        r1.<init>(r2);
        throw r1;
    L_0x0130:
        r1 = "auth";
        r3 = new com.google.android.gms.internal.zza;
        r3.<init>(r2);
        zza(r1, r8, r3);
        goto L_0x0008;
    L_0x013c:
        r1 = "network";
        r2 = new com.google.android.gms.internal.zzi;
        r2.<init>();
        goto L_0x0173;
    L_0x0144:
        r2 = new com.google.android.gms.internal.zzk;
        r2.<init>(r1);
        throw r2;
    L_0x014a:
        r0 = move-exception;
        r1 = r0;
        r2 = new java.lang.RuntimeException;
        r3 = new java.lang.StringBuilder;
        r4 = "Bad URL ";
        r3.<init>(r4);
        r4 = r23.getUrl();
        r3.append(r4);
        r3 = r3.toString();
        r2.<init>(r3, r1);
        throw r2;
    L_0x0164:
        r1 = "connection";
        r2 = new com.google.android.gms.internal.zzr;
        r2.<init>();
        goto L_0x0173;
    L_0x016c:
        r1 = "socket";
        r2 = new com.google.android.gms.internal.zzr;
        r2.<init>();
    L_0x0173:
        zza(r1, r8, r2);
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzu.zza(com.google.android.gms.internal.zzl):com.google.android.gms.internal.zzj");
    }
}
