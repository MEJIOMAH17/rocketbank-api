package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class ku {
    /* renamed from: a */
    String f394a;

    /* renamed from: com.flurry.sdk.ku$a */
    public static class C1150a implements kz<ku> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            ku kuVar = (ku) obj;
            if (outputStream != null) {
                if (kuVar != null) {
                    DataOutputStream c05111 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1150a f392a;

                        public final void close() {
                        }
                    };
                    c05111.writeUTF(kuVar.f394a);
                    c05111.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c05122 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1150a f393a;

                public final void close() {
                }
            };
            inputStream = new ku();
            inputStream.f394a = c05122.readUTF();
            return inputStream;
        }
    }

    private ku() {
    }

    public ku(String str) {
        this.f394a = str;
    }
}
