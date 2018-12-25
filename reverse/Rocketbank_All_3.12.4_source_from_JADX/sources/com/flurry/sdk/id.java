package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class id {
    /* renamed from: a */
    long f100a;
    /* renamed from: b */
    boolean f101b;
    /* renamed from: c */
    byte[] f102c;

    /* renamed from: com.flurry.sdk.id$a */
    public static class C1078a implements kz<id> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            id idVar = (id) obj;
            if (outputStream != null) {
                if (idVar != null) {
                    DataOutputStream c04691 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1078a f98a;

                        public final void close() {
                        }
                    };
                    c04691.writeLong(idVar.f100a);
                    c04691.writeBoolean(idVar.f101b);
                    c04691.writeInt(idVar.f102c.length);
                    c04691.write(idVar.f102c);
                    c04691.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c04702 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1078a f99a;

                public final void close() {
                }
            };
            inputStream = new id();
            inputStream.f100a = c04702.readLong();
            inputStream.f101b = c04702.readBoolean();
            inputStream.f102c = new byte[c04702.readInt()];
            c04702.readFully(inputStream.f102c);
            return inputStream;
        }
    }
}
