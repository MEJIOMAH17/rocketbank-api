package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class kw<ObjectType> implements kz<ObjectType> {
    /* renamed from: a */
    protected final kz<ObjectType> f673a;

    public kw(kz<ObjectType> kzVar) {
        this.f673a = kzVar;
    }

    /* renamed from: a */
    public void mo1369a(OutputStream outputStream, ObjectType objectType) throws IOException {
        if (this.f673a != null && outputStream != null && objectType != null) {
            this.f673a.mo1369a(outputStream, objectType);
        }
    }

    /* renamed from: a */
    public ObjectType mo1368a(InputStream inputStream) throws IOException {
        return (this.f673a == null || inputStream == null) ? null : this.f673a.mo1368a(inputStream);
    }
}
