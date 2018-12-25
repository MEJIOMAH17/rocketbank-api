package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class jb {
    /* renamed from: d */
    private static final String f235d = "jb";
    /* renamed from: a */
    boolean f236a;
    /* renamed from: b */
    long f237b;
    /* renamed from: c */
    final List<iy> f238c = new ArrayList();

    /* renamed from: com.flurry.sdk.jb$a */
    public static class C1112a implements kz<jb> {
        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c04901 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1112a f234a;

                public final void close() {
                }
            };
            jb jbVar = new jb();
            c04901.readUTF();
            c04901.readUTF();
            jbVar.f236a = c04901.readBoolean();
            jbVar.f237b = c04901.readLong();
            while (true) {
                int readUnsignedShort = c04901.readUnsignedShort();
                if (readUnsignedShort == 0) {
                    return jbVar;
                }
                byte[] bArr = new byte[readUnsignedShort];
                c04901.readFully(bArr);
                jbVar.f238c.add(0, new iy(bArr));
            }
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }
}
