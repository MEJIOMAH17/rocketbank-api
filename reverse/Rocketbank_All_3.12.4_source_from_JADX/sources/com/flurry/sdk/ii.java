package com.flurry.sdk;

import com.flurry.sdk.ij.C1093a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ii extends kp {
    /* renamed from: t */
    private static final String f512t = "com.flurry.sdk.ii";
    /* renamed from: a */
    public ArrayList<ij> f513a;
    /* renamed from: b */
    final long f514b;
    /* renamed from: c */
    final int f515c;
    /* renamed from: d */
    final int f516d;
    /* renamed from: e */
    final ip f517e;
    /* renamed from: f */
    final Map<String, String> f518f;
    /* renamed from: g */
    long f519g;
    /* renamed from: h */
    int f520h;
    /* renamed from: i */
    int f521i;
    /* renamed from: j */
    String f522j;
    /* renamed from: k */
    String f523k;
    /* renamed from: l */
    boolean f524l;
    /* renamed from: m */
    public im f525m;
    /* renamed from: u */
    private final int f526u = 1000;
    /* renamed from: v */
    private final int f527v = 30000;

    /* renamed from: com.flurry.sdk.ii$a */
    public static class C1092a implements kz<ii> {
        /* renamed from: a */
        ky<ij> f511a = new ky(new C1093a());

        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            ii iiVar = (ii) obj;
            if (outputStream != null) {
                if (iiVar != null) {
                    DataOutputStream c04711 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1092a f112a;

                        public final void close() {
                        }
                    };
                    if (iiVar.f523k != null) {
                        c04711.writeUTF(iiVar.f523k);
                    } else {
                        c04711.writeUTF("");
                    }
                    if (iiVar.f366r != null) {
                        c04711.writeUTF(iiVar.f366r);
                    } else {
                        c04711.writeUTF("");
                    }
                    c04711.writeLong(iiVar.f362n);
                    c04711.writeInt(iiVar.f364p);
                    c04711.writeLong(iiVar.f514b);
                    c04711.writeInt(iiVar.f515c);
                    c04711.writeInt(iiVar.f516d);
                    c04711.writeInt(iiVar.f517e.f178e);
                    Map f = iiVar.f518f;
                    if (f != null) {
                        c04711.writeInt(iiVar.f518f.size());
                        for (String str : iiVar.f518f.keySet()) {
                            c04711.writeUTF(str);
                            c04711.writeUTF((String) f.get(str));
                        }
                    } else {
                        c04711.writeInt(0);
                    }
                    c04711.writeLong(iiVar.f519g);
                    c04711.writeInt(iiVar.f520h);
                    c04711.writeInt(iiVar.f521i);
                    if (iiVar.f522j != null) {
                        c04711.writeUTF(iiVar.f522j);
                    } else {
                        c04711.writeUTF("");
                    }
                    c04711.writeBoolean(iiVar.f524l);
                    c04711.flush();
                    this.f511a.m624a(outputStream, iiVar.f513a);
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            C1092a c1092a = this;
            InputStream inputStream2 = inputStream;
            if (inputStream2 == null) {
                return null;
            }
            Map map;
            DataInputStream c04722 = new DataInputStream(c1092a, inputStream2) {
                /* renamed from: a */
                final /* synthetic */ C1092a f113a;

                public final void close() {
                }
            };
            String readUTF = c04722.readUTF();
            String str = readUTF.equals("") ? null : readUTF;
            String readUTF2 = c04722.readUTF();
            long readLong = c04722.readLong();
            int readInt = c04722.readInt();
            long readLong2 = c04722.readLong();
            int readInt2 = c04722.readInt();
            int readInt3 = c04722.readInt();
            ip a = ip.m66a(c04722.readInt());
            int readInt4 = c04722.readInt();
            if (readInt4 != 0) {
                Map hashMap = new HashMap();
                int i = 0;
                while (i < readInt4) {
                    int i2 = readInt4;
                    hashMap.put(c04722.readUTF(), c04722.readUTF());
                    i++;
                    readInt4 = i2;
                    inputStream2 = inputStream;
                }
                map = hashMap;
            } else {
                map = null;
            }
            long readLong3 = c04722.readLong();
            int readInt5 = c04722.readInt();
            int readInt6 = c04722.readInt();
            String readUTF3 = c04722.readUTF();
            String str2 = readUTF3.equals("") ? null : readUTF3;
            boolean readBoolean = c04722.readBoolean();
            kp iiVar = new ii(str, readLong2, readUTF2, readLong, readInt2, readInt3, a, map, readInt5, readInt6, str2);
            iiVar.f519g = readLong3;
            iiVar.f524l = readBoolean;
            iiVar.f364p = readInt;
            iiVar.f513a = (ArrayList) c1092a.f511a.m625b(inputStream);
            iiVar.m460d();
            return iiVar;
        }
    }

    public ii(String str, long j, String str2, long j2, int i, int i2, ip ipVar, Map<String, String> map, int i3, int i4, String str3) {
        m214a(str2);
        this.f362n = j2;
        a_();
        this.f523k = str;
        this.f514b = j;
        this.f367s = i;
        this.f515c = i;
        this.f516d = i2;
        this.f517e = ipVar;
        this.f518f = map;
        this.f520h = i3;
        this.f521i = i4;
        this.f522j = str3;
        this.f519g = 30000;
        this.f513a = new ArrayList();
    }

    public final void a_() {
        super.a_();
        if (this.f364p != 1) {
            this.f519g *= 3;
        }
    }

    /* renamed from: c */
    public final synchronized void m459c() {
        this.f525m.m56c();
    }

    /* renamed from: d */
    public final void m460d() {
        Iterator it = this.f513a.iterator();
        while (it.hasNext()) {
            ((ij) it.next()).f128l = this;
        }
    }
}
