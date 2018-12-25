package com.flurry.sdk;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class kx<ObjectType> extends kw<ObjectType> {
    public kx(kz<ObjectType> kzVar) {
        super(kzVar);
    }

    /* renamed from: a */
    public final void mo1369a(OutputStream outputStream, ObjectType objectType) throws IOException {
        if (outputStream != null) {
            Closeable closeable = null;
            try {
                Closeable gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    super.mo1369a(gZIPOutputStream, objectType);
                    lr.m305a(gZIPOutputStream);
                } catch (Throwable th) {
                    outputStream = th;
                    closeable = gZIPOutputStream;
                    lr.m305a(closeable);
                    throw outputStream;
                }
            } catch (Throwable th2) {
                outputStream = th2;
                lr.m305a(closeable);
                throw outputStream;
            }
        }
    }

    /* renamed from: a */
    public final ObjectType mo1368a(InputStream inputStream) throws IOException {
        Closeable closeable = null;
        if (inputStream == null) {
            return null;
        }
        try {
            Closeable gZIPInputStream = new GZIPInputStream(inputStream);
            try {
                inputStream = super.mo1368a(gZIPInputStream);
                lr.m305a(gZIPInputStream);
                return inputStream;
            } catch (Throwable th) {
                inputStream = th;
                closeable = gZIPInputStream;
                lr.m305a(closeable);
                throw inputStream;
            }
        } catch (Throwable th2) {
            inputStream = th2;
            lr.m305a(closeable);
            throw inputStream;
        }
    }
}
