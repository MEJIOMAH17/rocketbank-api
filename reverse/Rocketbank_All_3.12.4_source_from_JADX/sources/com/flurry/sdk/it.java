package com.flurry.sdk;

public final class it {
    /* renamed from: a */
    public String f186a;
    /* renamed from: b */
    private int f187b;
    /* renamed from: c */
    private long f188c;
    /* renamed from: d */
    private String f189d;
    /* renamed from: e */
    private String f190e;
    /* renamed from: f */
    private Throwable f191f;

    public it(int i, long j, String str, String str2, String str3, Throwable th) {
        this.f187b = i;
        this.f188c = j;
        this.f186a = str;
        this.f189d = str2;
        this.f190e = str3;
        this.f191f = th;
    }

    /* renamed from: a */
    public final byte[] m68a() {
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
        r9 = this;
        r0 = 0;
        r1 = 0;
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x00b4 }
        r2.<init>();	 Catch:{ IOException -> 0x00b4 }
        r3 = new java.io.DataOutputStream;	 Catch:{ IOException -> 0x00b4 }
        r3.<init>(r2);	 Catch:{ IOException -> 0x00b4 }
        r1 = r9.f187b;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeShort(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = r9.f188c;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeLong(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r9.f186a;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeUTF(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r9.f189d;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeUTF(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r9.f190e;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeUTF(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r9.f191f;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        if (r1 == 0) goto L_0x009a;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0029:
        r1 = "uncaught";	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = r9.f186a;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r1.equals(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = 2;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        if (r1 == 0) goto L_0x0039;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0034:
        r1 = 3;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeByte(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        goto L_0x003c;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0039:
        r3.writeByte(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x003c:
        r3.writeByte(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = "";	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.<init>(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = "line.separator";	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = java.lang.System.getProperty(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r9.f191f;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r5.getStackTrace();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r6 = r5.length;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r7 = r0;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0054:
        if (r7 >= r6) goto L_0x0061;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0056:
        r8 = r5[r7];	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.append(r8);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.append(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r7 = r7 + 1;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        goto L_0x0054;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0061:
        r5 = r9.f191f;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r5.getCause();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        if (r5 == 0) goto L_0x008a;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x0069:
        r1.append(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = "Caused by: ";	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.append(r5);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r9.f191f;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r5.getCause();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r5 = r5.getStackTrace();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r6 = r5.length;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r7 = r0;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x007d:
        if (r7 >= r6) goto L_0x008a;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x007f:
        r8 = r5[r7];	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.append(r8);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1.append(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r7 = r7 + 1;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        goto L_0x007d;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x008a:
        r1 = r1.toString();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r1.getBytes();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r4 = r1.length;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeInt(r4);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.write(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        goto L_0x00a1;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x009a:
        r1 = 1;	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeByte(r1);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r3.writeByte(r0);	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
    L_0x00a1:
        r3.flush();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        r1 = r2.toByteArray();	 Catch:{ IOException -> 0x00af, all -> 0x00ad }
        com.flurry.sdk.lr.m305a(r3);
        r0 = r1;
        goto L_0x00b9;
    L_0x00ad:
        r0 = move-exception;
        goto L_0x00ba;
    L_0x00af:
        r1 = r3;
        goto L_0x00b4;
    L_0x00b1:
        r0 = move-exception;
        r3 = r1;
        goto L_0x00ba;
    L_0x00b4:
        r0 = new byte[r0];	 Catch:{ all -> 0x00b1 }
        com.flurry.sdk.lr.m305a(r1);
    L_0x00b9:
        return r0;
    L_0x00ba:
        com.flurry.sdk.lr.m305a(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.it.a():byte[]");
    }
}
