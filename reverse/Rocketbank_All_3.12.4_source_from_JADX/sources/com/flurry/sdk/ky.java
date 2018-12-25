package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public final class ky<T> implements kz<List<T>> {
    /* renamed from: a */
    kz<T> f674a;

    /* renamed from: a */
    public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
        return m625b(inputStream);
    }

    public ky(kz<T> kzVar) {
        this.f674a = kzVar;
    }

    /* renamed from: a */
    public final void m624a(OutputStream outputStream, List<T> list) throws IOException {
        if (outputStream != null) {
            DataOutputStream c05131 = new DataOutputStream(this, outputStream) {
                /* renamed from: a */
                final /* synthetic */ ky f395a;

                public final void close() {
                }
            };
            int i = 0;
            int size = list != null ? list.size() : 0;
            c05131.writeInt(size);
            while (i < size) {
                this.f674a.mo1369a(outputStream, list.get(i));
                i++;
            }
            c05131.flush();
        }
    }

    /* renamed from: b */
    public final List<T> m625b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        int readInt = new DataInputStream(this, inputStream) {
            /* renamed from: a */
            final /* synthetic */ ky f396a;

            public final void close() {
            }
        }.readInt();
        List<T> arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            Object a = this.f674a.mo1368a(inputStream);
            if (a == null) {
                throw new IOException("Missing record.");
            }
            arrayList.add(a);
        }
        return arrayList;
    }
}
