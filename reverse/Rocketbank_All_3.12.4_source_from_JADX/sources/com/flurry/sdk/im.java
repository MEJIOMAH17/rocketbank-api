package com.flurry.sdk;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.flurry.sdk.ii.C1092a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicInteger;

public final class im {
    /* renamed from: e */
    private static final String f153e = in.class.getName();
    /* renamed from: a */
    public long f154a;
    /* renamed from: b */
    int f155b;
    /* renamed from: c */
    public String f156c;
    /* renamed from: d */
    Map<Long, ii> f157d;
    /* renamed from: f */
    private long f158f = System.currentTimeMillis();
    /* renamed from: g */
    private long f159g;
    /* renamed from: h */
    private iq f160h;
    /* renamed from: i */
    private boolean f161i;
    /* renamed from: j */
    private int f162j;
    /* renamed from: k */
    private AtomicInteger f163k;

    /* renamed from: com.flurry.sdk.im$a */
    public static class C1096a implements kz<im> {
        /* renamed from: a */
        ky<ii> f529a = new ky(new C1092a());

        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            im imVar = (im) obj;
            if (outputStream != null) {
                if (imVar != null) {
                    DataOutputStream c04801 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1096a f151a;

                        public final void close() {
                        }
                    };
                    c04801.writeLong(imVar.f154a);
                    c04801.writeLong(imVar.f158f);
                    c04801.writeLong(imVar.f159g);
                    c04801.writeInt(imVar.f160h.f184e);
                    c04801.writeBoolean(imVar.f161i);
                    c04801.writeInt(imVar.f155b);
                    if (imVar.f156c != null) {
                        c04801.writeUTF(imVar.f156c);
                    } else {
                        c04801.writeUTF("");
                    }
                    c04801.writeInt(imVar.f162j);
                    c04801.writeInt(imVar.f163k.intValue());
                    c04801.flush();
                    this.f529a.m624a(outputStream, imVar.m54a());
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            C1096a c1096a = this;
            InputStream inputStream2 = inputStream;
            if (inputStream2 == null) {
                return null;
            }
            DataInputStream c04812 = new DataInputStream(c1096a, inputStream2) {
                /* renamed from: a */
                final /* synthetic */ C1096a f152a;

                public final void close() {
                }
            };
            long readLong = c04812.readLong();
            long readLong2 = c04812.readLong();
            long readLong3 = c04812.readLong();
            iq a = iq.m67a(c04812.readInt());
            boolean readBoolean = c04812.readBoolean();
            int readInt = c04812.readInt();
            String readUTF = c04812.readUTF();
            int readInt2 = c04812.readInt();
            int readInt3 = c04812.readInt();
            im imVar = r3;
            im imVar2 = new im(readUTF, readBoolean, readLong, readLong3, a, null);
            imVar.f158f = readLong2;
            imVar.f155b = readInt;
            imVar.f162j = readInt2;
            imVar.f163k = new AtomicInteger(readInt3);
            imVar2 = imVar;
            List<ii> b = c1096a.f529a.m625b(inputStream);
            if (b != null) {
                imVar2.f157d = new HashMap();
                for (ii iiVar : b) {
                    iiVar.f525m = imVar2;
                    imVar2.f157d.put(Long.valueOf(iiVar.f514b), iiVar);
                }
            }
            return imVar2;
        }
    }

    public im(String str, boolean z, long j, long j2, iq iqVar, Map<Long, ii> map) {
        this.f156c = str;
        this.f161i = z;
        this.f154a = j;
        this.f159g = j2;
        this.f160h = iqVar;
        this.f157d = map;
        if (map != null) {
            for (long j3 : map.keySet()) {
                ((ii) map.get(j3)).f525m = this;
            }
            this.f162j = map.size();
        } else {
            this.f162j = 0;
        }
        this.f163k = new AtomicInteger(0);
    }

    /* renamed from: a */
    public final List<ii> m54a() {
        if (this.f157d != null) {
            return new ArrayList(this.f157d.values());
        }
        return Collections.emptyList();
    }

    /* renamed from: b */
    public final synchronized boolean m55b() {
        return this.f163k.intValue() >= this.f162j;
    }

    /* renamed from: c */
    public final synchronized void m56c() {
        this.f163k.incrementAndGet();
    }

    /* renamed from: d */
    public final byte[] m57d() throws IOException {
        Throwable e;
        Closeable dataOutputStream;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(this.f160h.f184e);
                dataOutputStream.writeLong(this.f154a);
                dataOutputStream.writeLong(this.f159g);
                dataOutputStream.writeBoolean(this.f161i);
                if (this.f161i) {
                    dataOutputStream.writeShort(this.f155b);
                    dataOutputStream.writeUTF(this.f156c);
                }
                dataOutputStream.writeShort(this.f157d.size());
                if (this.f157d != null) {
                    for (Entry entry : this.f157d.entrySet()) {
                        ii iiVar = (ii) entry.getValue();
                        dataOutputStream.writeLong(((Long) entry.getKey()).longValue());
                        dataOutputStream.writeUTF(iiVar.f366r);
                        dataOutputStream.writeShort(iiVar.f513a.size());
                        Iterator it = iiVar.f513a.iterator();
                        while (it.hasNext()) {
                            ij ijVar = (ij) it.next();
                            dataOutputStream.writeShort(ijVar.f117a);
                            dataOutputStream.writeLong(ijVar.f118b);
                            dataOutputStream.writeLong(ijVar.f119c);
                            dataOutputStream.writeBoolean(ijVar.f120d);
                            dataOutputStream.writeShort(ijVar.f121e);
                            dataOutputStream.writeShort(ijVar.f122f.f134e);
                            if ((ijVar.f121e < Callback.DEFAULT_DRAG_ANIMATION_DURATION || ijVar.f121e >= 400) && ijVar.f123g != null) {
                                byte[] bytes = ijVar.f123g.getBytes();
                                dataOutputStream.writeShort(bytes.length);
                                dataOutputStream.write(bytes);
                            }
                            dataOutputStream.writeShort(ijVar.f124h);
                            dataOutputStream.writeInt((int) ijVar.f127k);
                        }
                    }
                }
                byte[] toByteArray = byteArrayOutputStream.toByteArray();
                lr.m305a(dataOutputStream);
                return toByteArray;
            } catch (IOException e2) {
                e = e2;
                try {
                    kf.m177a(6, f153e, "Error when generating report", e);
                    throw e;
                } catch (Throwable th) {
                    e = th;
                    lr.m305a(dataOutputStream);
                    throw e;
                }
            }
        } catch (Throwable e3) {
            dataOutputStream = null;
            e = e3;
            kf.m177a(6, f153e, "Error when generating report", e);
            throw e;
        } catch (Throwable e32) {
            dataOutputStream = null;
            e = e32;
            lr.m305a(dataOutputStream);
            throw e;
        }
    }
}
