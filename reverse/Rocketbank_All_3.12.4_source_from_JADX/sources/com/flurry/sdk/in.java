package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.flurry.sdk.io.C1099a;
import com.flurry.sdk.kl.C0502a;
import com.flurry.sdk.kn.C0506a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map.Entry;
import java.util.zip.CRC32;

public class in {
    /* renamed from: b */
    public static final String f164b = "com.flurry.sdk.in";
    /* renamed from: c */
    private static in f165c;
    /* renamed from: a */
    public String f166a;
    /* renamed from: d */
    private jy<List<io>> f167d;
    /* renamed from: e */
    private List<io> f168e;
    /* renamed from: f */
    private boolean f169f;

    /* renamed from: com.flurry.sdk.in$1 */
    class C10971 implements lc<List<io>> {
        /* renamed from: a */
        final /* synthetic */ in f530a;

        C10971(in inVar) {
            this.f530a = inVar;
        }

        /* renamed from: a */
        public final kz<List<io>> mo1372a(int i) {
            return new ky(new C1099a());
        }
    }

    /* renamed from: com.flurry.sdk.in$2 */
    class C10982 implements C0502a<byte[], Void> {
        /* renamed from: a */
        final /* synthetic */ in f531a;

        C10982(in inVar) {
            this.f531a = inVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1371a(kl klVar, Object obj) {
            klVar = klVar.f737p;
            if (klVar <= null) {
                kf.m190e(in.f164b, "Server Error: ".concat(String.valueOf(klVar)));
            } else if (klVar < 200 || klVar >= 300) {
                kf.m176a(3, in.f164b, "Pulse logging report sent unsuccessfully, HTTP response:".concat(String.valueOf(klVar)));
            } else {
                kf.m176a(3, in.f164b, "Pulse logging report sent successfully HTTP response:".concat(String.valueOf(klVar)));
                this.f531a.f168e.clear();
                this.f531a.f167d.m146a(this.f531a.f168e);
            }
        }
    }

    private in() {
    }

    /* renamed from: a */
    public static synchronized in m58a() {
        in inVar;
        synchronized (in.class) {
            if (f165c == null) {
                inVar = new in();
                f165c = inVar;
                Context context = jr.m114a().f293a;
                StringBuilder stringBuilder = new StringBuilder(".yflurrypulselogging.");
                stringBuilder.append(Long.toString(lr.m319i(jr.m114a().f296d), 16));
                inVar.f167d = new jy(context.getFileStreamPath(stringBuilder.toString()), ".yflurrypulselogging.", 1, new C10971(inVar));
                inVar.f169f = ((Boolean) li.m651a().m266a("UseHttps")).booleanValue();
                String str = f164b;
                stringBuilder = new StringBuilder("initSettings, UseHttps = ");
                stringBuilder.append(inVar.f169f);
                kf.m176a(4, str, stringBuilder.toString());
                inVar.f168e = (List) inVar.f167d.m145a();
                if (inVar.f168e == null) {
                    inVar.f168e = new ArrayList();
                }
            }
            inVar = f165c;
        }
        return inVar;
    }

    /* renamed from: a */
    public final synchronized void m64a(com.flurry.sdk.im r3) {
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
        r2 = this;
        monitor-enter(r2);
        r0 = new com.flurry.sdk.io;	 Catch:{ IOException -> 0x0022 }
        r3 = r3.m57d();	 Catch:{ IOException -> 0x0022 }
        r0.<init>(r3);	 Catch:{ IOException -> 0x0022 }
        r3 = r2.f168e;	 Catch:{ IOException -> 0x0022 }
        r3.add(r0);	 Catch:{ IOException -> 0x0022 }
        r3 = 4;	 Catch:{ IOException -> 0x0022 }
        r0 = f164b;	 Catch:{ IOException -> 0x0022 }
        r1 = "Saving persistent Pulse logging data.";	 Catch:{ IOException -> 0x0022 }
        com.flurry.sdk.kf.m176a(r3, r0, r1);	 Catch:{ IOException -> 0x0022 }
        r3 = r2.f167d;	 Catch:{ IOException -> 0x0022 }
        r0 = r2.f168e;	 Catch:{ IOException -> 0x0022 }
        r3.m146a(r0);	 Catch:{ IOException -> 0x0022 }
        monitor-exit(r2);
        return;
    L_0x0020:
        r3 = move-exception;
        goto L_0x002c;
    L_0x0022:
        r3 = 6;
        r0 = f164b;	 Catch:{ all -> 0x0020 }
        r1 = "Error when generating pulse log report in addReport part";	 Catch:{ all -> 0x0020 }
        com.flurry.sdk.kf.m176a(r3, r0, r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r2);
        return;
    L_0x002c:
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.in.a(com.flurry.sdk.im):void");
    }

    /* renamed from: d */
    private byte[] m63d() throws IOException {
        Throwable e;
        Throwable th;
        Closeable dataOutputStream;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                byte[] toByteArray;
                if (this.f168e != null) {
                    if (!this.f168e.isEmpty()) {
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeLong(System.currentTimeMillis());
                        dataOutputStream.writeUTF(jr.m114a().f296d);
                        dataOutputStream.writeUTF(jn.m564a().m575i());
                        dataOutputStream.writeShort(js.m122a());
                        dataOutputStream.writeShort(3);
                        jn.m564a();
                        dataOutputStream.writeUTF(jn.m568d());
                        dataOutputStream.writeBoolean(je.m79a().m89d());
                        List<ht> arrayList = new ArrayList();
                        for (Entry entry : Collections.unmodifiableMap(je.m79a().f251a).entrySet()) {
                            ht htVar = new ht();
                            htVar.f76a = ((jm) entry.getKey()).f274c;
                            if (((jm) entry.getKey()).f275d) {
                                htVar.f77b = new String((byte[]) entry.getValue());
                            } else {
                                htVar.f77b = lr.m311b((byte[]) entry.getValue());
                            }
                            arrayList.add(htVar);
                        }
                        dataOutputStream.writeShort(arrayList.size());
                        for (ht htVar2 : arrayList) {
                            dataOutputStream.writeShort(htVar2.f76a);
                            byte[] bytes = htVar2.f77b.getBytes();
                            dataOutputStream.writeShort(bytes.length);
                            dataOutputStream.write(bytes);
                        }
                        dataOutputStream.writeShort(6);
                        dataOutputStream.writeShort(ig.MODEL.f111h);
                        dataOutputStream.writeUTF(Build.MODEL);
                        dataOutputStream.writeShort(ig.BRAND.f111h);
                        dataOutputStream.writeUTF(Build.BOARD);
                        dataOutputStream.writeShort(ig.ID.f111h);
                        dataOutputStream.writeUTF(Build.ID);
                        dataOutputStream.writeShort(ig.DEVICE.f111h);
                        dataOutputStream.writeUTF(Build.DEVICE);
                        dataOutputStream.writeShort(ig.PRODUCT.f111h);
                        dataOutputStream.writeUTF(Build.PRODUCT);
                        dataOutputStream.writeShort(ig.VERSION_RELEASE.f111h);
                        dataOutputStream.writeUTF(VERSION.RELEASE);
                        dataOutputStream.writeShort(this.f168e.size());
                        for (io ioVar : this.f168e) {
                            dataOutputStream.write(ioVar.f172a);
                        }
                        toByteArray = byteArrayOutputStream.toByteArray();
                        CRC32 crc32 = new CRC32();
                        crc32.update(toByteArray);
                        dataOutputStream.writeInt((int) crc32.getValue());
                        toByteArray = byteArrayOutputStream.toByteArray();
                        lr.m305a(dataOutputStream);
                        return toByteArray;
                    }
                }
                toByteArray = byteArrayOutputStream.toByteArray();
                lr.m305a(dataOutputStream);
                return toByteArray;
            } catch (IOException e2) {
                e = e2;
                try {
                    kf.m177a(6, f164b, "Error when generating report", e);
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    lr.m305a(dataOutputStream);
                    throw th;
                }
            }
        } catch (Throwable e3) {
            dataOutputStream = null;
            e = e3;
            kf.m177a(6, f164b, "Error when generating report", e);
            throw e;
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
            lr.m305a(dataOutputStream);
            throw th;
        }
    }

    /* renamed from: a */
    private synchronized void m60a(byte[] bArr) {
        if (jk.m92a().f267b) {
            if (bArr != null) {
                if (bArr.length != 0) {
                    String str;
                    if (this.f166a != null) {
                        str = this.f166a;
                    } else {
                        str = "https://data.flurry.com/pcr.do";
                    }
                    String str2 = f164b;
                    StringBuilder stringBuilder = new StringBuilder("PulseLoggingManager: start upload data ");
                    stringBuilder.append(Arrays.toString(bArr));
                    stringBuilder.append(" to ");
                    stringBuilder.append(str);
                    kf.m176a(4, str2, stringBuilder.toString());
                    lx klVar = new kl();
                    klVar.f727f = str;
                    klVar.f717w = 100000;
                    klVar.f728g = C0506a.kPost;
                    klVar.f731j = true;
                    klVar.m663a("Content-Type", "application/octet-stream");
                    klVar.f747c = new kv();
                    klVar.f746b = bArr;
                    klVar.f745a = new C10982(this);
                    jp.m576a().m171a((Object) this, klVar);
                    return;
                }
            }
            kf.m176a((int) 3, f164b, "No report need be sent");
            return;
        }
        kf.m176a((int) 5, f164b, "Reports were not sent! No Internet connection!");
    }

    /* renamed from: b */
    public final synchronized void m65b() {
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
        r3 = this;
        monitor-enter(r3);
        r0 = r3.m63d();	 Catch:{ IOException -> 0x000c }
        r3.m60a(r0);	 Catch:{ IOException -> 0x000c }
        monitor-exit(r3);
        return;
    L_0x000a:
        r0 = move-exception;
        goto L_0x0016;
    L_0x000c:
        r0 = 6;
        r1 = f164b;	 Catch:{ all -> 0x000a }
        r2 = "Report not send due to exception in generate data";	 Catch:{ all -> 0x000a }
        com.flurry.sdk.kf.m176a(r0, r1, r2);	 Catch:{ all -> 0x000a }
        monitor-exit(r3);
        return;
    L_0x0016:
        monitor-exit(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.in.b():void");
    }
}
