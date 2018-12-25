package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class io {
    /* renamed from: a */
    byte[] f172a;

    /* renamed from: com.flurry.sdk.io$a */
    public static class C1099a implements kz<io> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            io ioVar = (io) obj;
            if (outputStream != null) {
                if (ioVar != null) {
                    DataOutputStream c04821 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1099a f170a;

                        public final void close() {
                        }
                    };
                    c04821.writeShort(ioVar.f172a.length);
                    c04821.write(ioVar.f172a);
                    c04821.writeShort(null);
                    c04821.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c04832 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1099a f171a;

                public final void close() {
                }
            };
            inputStream = c04832.readShort();
            if (inputStream == null) {
                return null;
            }
            io ioVar = new io();
            ioVar.f172a = new byte[inputStream];
            c04832.readFully(ioVar.f172a);
            c04832.readUnsignedShort();
            return ioVar;
        }
    }

    public io(byte[] bArr) {
        this.f172a = bArr;
    }
}
