package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;

public final class iv {
    /* renamed from: a */
    public String f193a;
    /* renamed from: b */
    public boolean f194b;
    /* renamed from: c */
    public boolean f195c;
    /* renamed from: d */
    public long f196d;
    /* renamed from: e */
    private final Map<String, String> f197e = new HashMap();
    /* renamed from: f */
    private int f198f;
    /* renamed from: g */
    private long f199g;

    public iv(int i, String str, Map<String, String> map, long j, boolean z) {
        this.f198f = i;
        this.f193a = str;
        if (map != null) {
            this.f197e.putAll(map);
        }
        this.f199g = j;
        this.f194b = z;
        if (this.f194b != 0) {
            this.f195c = false;
        } else {
            this.f195c = true;
        }
    }

    /* renamed from: a */
    public final void m70a(long j) {
        this.f195c = true;
        this.f196d = j - this.f199g;
        StringBuilder stringBuilder = new StringBuilder("Ended event '");
        stringBuilder.append(this.f193a);
        stringBuilder.append("' (");
        stringBuilder.append(this.f199g);
        stringBuilder.append(") after ");
        stringBuilder.append(this.f196d);
        stringBuilder.append("ms");
        kf.m176a(3, "FlurryAgent", stringBuilder.toString());
    }

    /* renamed from: a */
    public final synchronized void m71a(Map<String, String> map) {
        if (map != null) {
            this.f197e.putAll(map);
        }
    }

    /* renamed from: a */
    public final synchronized Map<String, String> m69a() {
        return new HashMap(this.f197e);
    }

    /* renamed from: b */
    public final synchronized void m72b(Map<String, String> map) {
        this.f197e.clear();
        this.f197e.putAll(map);
    }

    /* renamed from: b */
    public final synchronized byte[] m73b() {
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
        r5 = this;
        monitor-enter(r5);
        r0 = 0;
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x006d }
        r1.<init>();	 Catch:{ IOException -> 0x006d }
        r2 = new java.io.DataOutputStream;	 Catch:{ IOException -> 0x006d }
        r2.<init>(r1);	 Catch:{ IOException -> 0x006d }
        r0 = r5.f198f;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeShort(r0);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r5.f193a;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeUTF(r0);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r5.f197e;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r0.size();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeShort(r0);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r5.f197e;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r0.entrySet();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r0.iterator();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
    L_0x0029:
        r3 = r0.hasNext();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        if (r3 == 0) goto L_0x0050;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
    L_0x002f:
        r3 = r0.next();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r3 = (java.util.Map.Entry) r3;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r4 = r3.getKey();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r4 = (java.lang.String) r4;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r4 = com.flurry.sdk.lr.m310b(r4);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeUTF(r4);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r3 = r3.getValue();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r3 = (java.lang.String) r3;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r3 = com.flurry.sdk.lr.m310b(r3);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeUTF(r3);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        goto L_0x0029;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
    L_0x0050:
        r3 = r5.f199g;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeLong(r3);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r3 = r5.f196d;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.writeLong(r3);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.flush();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r1.toByteArray();	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        com.flurry.sdk.lr.m305a(r2);	 Catch:{ all -> 0x007a }
        goto L_0x0074;
    L_0x0065:
        r0 = move-exception;
        goto L_0x0076;
    L_0x0067:
        r0 = r2;
        goto L_0x006d;
    L_0x0069:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x0076;
    L_0x006d:
        r1 = 0;
        r1 = new byte[r1];	 Catch:{ all -> 0x0069 }
        com.flurry.sdk.lr.m305a(r0);	 Catch:{ all -> 0x007a }
        r0 = r1;
    L_0x0074:
        monitor-exit(r5);
        return r0;
    L_0x0076:
        com.flurry.sdk.lr.m305a(r2);	 Catch:{ all -> 0x007a }
        throw r0;	 Catch:{ all -> 0x007a }
    L_0x007a:
        r0 = move-exception;
        monitor-exit(r5);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.iv.b():byte[]");
    }
}
