package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

public class ks {
    /* renamed from: c */
    private static final String f385c = "ks";
    /* renamed from: a */
    String f386a;
    /* renamed from: b */
    byte[] f387b;

    /* renamed from: com.flurry.sdk.ks$a */
    public static class C1142a implements kz<ks> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            ks ksVar = (ks) obj;
            if (outputStream != null) {
                if (ksVar != null) {
                    DataOutputStream c05091 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1142a f383a;

                        public final void close() {
                        }
                    };
                    c05091.writeShort(ksVar.f387b.length);
                    c05091.write(ksVar.f387b);
                    c05091.writeShort(null);
                    c05091.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c05102 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1142a f384a;

                public final void close() {
                }
            };
            ks ksVar = new ks();
            short readShort = c05102.readShort();
            if (readShort == (short) 0) {
                return null;
            }
            ksVar.f387b = new byte[readShort];
            c05102.readFully(ksVar.f387b);
            c05102.readUnsignedShort();
            return ksVar;
        }
    }

    private ks() {
        this.f386a = null;
        this.f387b = null;
    }

    public ks(byte[] bArr) {
        this.f386a = null;
        this.f387b = null;
        this.f386a = UUID.randomUUID().toString();
        this.f387b = bArr;
    }

    /* renamed from: a */
    public static String m237a(String str) {
        return ".yflurrydatasenderblock.".concat(String.valueOf(str));
    }
}
