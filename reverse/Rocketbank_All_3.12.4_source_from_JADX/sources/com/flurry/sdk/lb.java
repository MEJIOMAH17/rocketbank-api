package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class lb<T> implements kz<T> {
    /* renamed from: a */
    private final String f675a;
    /* renamed from: b */
    private final int f676b;
    /* renamed from: c */
    private final lc<T> f677c;

    public lb(String str, int i, lc<T> lcVar) {
        this.f675a = str;
        this.f676b = i;
        this.f677c = lcVar;
    }

    /* renamed from: a */
    public final void mo1369a(OutputStream outputStream, T t) throws IOException {
        if (outputStream != null) {
            if (this.f677c != null) {
                OutputStream c05151 = new DataOutputStream(this, outputStream) {
                    /* renamed from: a */
                    final /* synthetic */ lb f397a;

                    public final void close() {
                    }
                };
                c05151.writeUTF(this.f675a);
                c05151.writeInt(this.f676b);
                this.f677c.mo1372a(this.f676b).mo1369a(c05151, t);
                c05151.flush();
            }
        }
    }

    /* renamed from: a */
    public final T mo1368a(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            if (this.f677c != null) {
                InputStream c05162 = new DataInputStream(this, inputStream) {
                    /* renamed from: a */
                    final /* synthetic */ lb f398a;

                    public final void close() {
                    }
                };
                inputStream = c05162.readUTF();
                if (this.f675a.equals(inputStream)) {
                    return this.f677c.mo1372a(c05162.readInt()).mo1368a(c05162);
                }
                StringBuilder stringBuilder = new StringBuilder("Signature: ");
                stringBuilder.append(inputStream);
                stringBuilder.append(" is invalid");
                throw new IOException(stringBuilder.toString());
            }
        }
        return null;
    }
}
