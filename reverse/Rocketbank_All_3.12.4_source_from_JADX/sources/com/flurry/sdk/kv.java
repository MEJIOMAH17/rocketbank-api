package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class kv implements kz<byte[]> {
    /* renamed from: a */
    public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
        byte[] bArr = (byte[]) obj;
        if (outputStream != null) {
            if (bArr != null) {
                outputStream.write(bArr, 0, bArr.length);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        lr.m301a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
