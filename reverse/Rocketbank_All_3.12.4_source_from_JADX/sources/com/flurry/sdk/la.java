package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class la implements kz<String> {
    /* renamed from: a */
    public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
        String str = (String) obj;
        if (outputStream != null) {
            if (str != null) {
                obj = str.getBytes("utf-8");
                outputStream.write(obj, 0, obj.length);
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
        return byteArrayOutputStream.toString();
    }
}
