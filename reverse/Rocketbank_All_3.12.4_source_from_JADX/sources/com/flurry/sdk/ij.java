package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ij {
    /* renamed from: m */
    private static final String f116m = "com.flurry.sdk.ij";
    /* renamed from: a */
    public int f117a;
    /* renamed from: b */
    public long f118b;
    /* renamed from: c */
    public long f119c;
    /* renamed from: d */
    public boolean f120d;
    /* renamed from: e */
    public int f121e;
    /* renamed from: f */
    public ik f122f;
    /* renamed from: g */
    public String f123g;
    /* renamed from: h */
    public int f124h;
    /* renamed from: i */
    public long f125i;
    /* renamed from: j */
    public boolean f126j;
    /* renamed from: k */
    public long f127k = 0;
    /* renamed from: l */
    public ii f128l;

    /* renamed from: com.flurry.sdk.ij$a */
    public static class C1093a implements kz<ij> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            ij ijVar = (ij) obj;
            if (outputStream != null) {
                if (ijVar != null) {
                    DataOutputStream c04731 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1093a f114a;

                        public final void close() {
                        }
                    };
                    c04731.writeInt(ijVar.f117a);
                    c04731.writeLong(ijVar.f118b);
                    c04731.writeLong(ijVar.f119c);
                    c04731.writeBoolean(ijVar.f120d);
                    c04731.writeInt(ijVar.f121e);
                    c04731.writeInt(ijVar.f122f.f134e);
                    if (ijVar.f123g != null) {
                        c04731.writeUTF(ijVar.f123g);
                    } else {
                        c04731.writeUTF("");
                    }
                    c04731.writeInt(ijVar.f124h);
                    c04731.writeLong(ijVar.f125i);
                    c04731.writeBoolean(ijVar.f126j);
                    c04731.writeLong(ijVar.f127k);
                    c04731.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            InputStream inputStream2 = inputStream;
            if (inputStream2 == null) {
                return null;
            }
            DataInputStream c04742 = new DataInputStream(this, inputStream2) {
                /* renamed from: a */
                final /* synthetic */ C1093a f115a;

                public final void close() {
                }
            };
            int readInt = c04742.readInt();
            long readLong = c04742.readLong();
            long readLong2 = c04742.readLong();
            boolean readBoolean = c04742.readBoolean();
            int readInt2 = c04742.readInt();
            ik a = ik.m13a(c04742.readInt());
            String readUTF = c04742.readUTF();
            int readInt3 = c04742.readInt();
            long readLong3 = c04742.readLong();
            boolean readBoolean2 = c04742.readBoolean();
            long j = readLong;
            long readLong4 = c04742.readLong();
            boolean z = readBoolean2;
            ij ijVar = new ij(null, j, readLong2, readInt);
            ijVar.f120d = readBoolean;
            ijVar.f121e = readInt2;
            ijVar.f122f = a;
            ijVar.f123g = readUTF;
            ijVar.f124h = readInt3;
            ijVar.f125i = readLong3;
            ijVar.f126j = z;
            ijVar.f127k = readLong4;
            return ijVar;
        }
    }

    public ij(ii iiVar, long j, long j2, int i) {
        this.f128l = iiVar;
        this.f118b = j;
        this.f119c = j2;
        this.f117a = i;
        this.f121e = null;
        this.f122f = ik.PENDING_COMPLETION;
    }

    /* renamed from: a */
    public final void m12a() {
        this.f128l.f513a.add(this);
        if (this.f120d) {
            this.f128l.f524l = true;
        }
    }
}
