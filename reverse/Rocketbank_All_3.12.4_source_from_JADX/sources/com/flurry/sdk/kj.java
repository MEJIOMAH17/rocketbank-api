package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class kj<ObjectType> {
    /* renamed from: a */
    private static final String f343a = "kj";
    /* renamed from: b */
    private static final byte[] f344b = new byte[]{(byte) 113, (byte) -92, (byte) -8, (byte) 125, (byte) 121, (byte) 107, (byte) -65, (byte) -61, (byte) -74, (byte) -114, (byte) -32, (byte) 0, (byte) -57, (byte) -87, (byte) -35, (byte) -56, (byte) -6, (byte) -52, (byte) 51, (byte) 126, (byte) -104, (byte) 49, (byte) 79, (byte) -52, (byte) 118, (byte) -84, (byte) 99, (byte) -52, (byte) -14, (byte) -126, (byte) -27, (byte) -64};
    /* renamed from: c */
    private String f345c;
    /* renamed from: d */
    private kz<ObjectType> f346d;

    /* renamed from: c */
    private static void m199c(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int length2 = f344b.length;
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) ((bArr[i] ^ f344b[i % length2]) ^ ((i * 31) % 251));
            }
        }
    }

    /* renamed from: d */
    private static void m200d(byte[] bArr) {
        m199c(bArr);
    }

    /* renamed from: a */
    public static int m198a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        jx jxVar = new jx();
        jxVar.update(bArr);
        return jxVar.m144b();
    }

    public kj(String str, kz<ObjectType> kzVar) {
        this.f345c = str;
        this.f346d = kzVar;
    }

    /* renamed from: a */
    public final byte[] m201a(ObjectType objectType) throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f346d.mo1369a(byteArrayOutputStream, objectType);
        objectType = byteArrayOutputStream.toByteArray();
        String str = f343a;
        StringBuilder stringBuilder = new StringBuilder("Encoding ");
        stringBuilder.append(this.f345c);
        stringBuilder.append(": ");
        stringBuilder.append(new String(objectType));
        kf.m176a(3, str, stringBuilder.toString());
        kz kxVar = new kx(new kv());
        OutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        kxVar.mo1369a(byteArrayOutputStream2, objectType);
        objectType = byteArrayOutputStream2.toByteArray();
        m199c(objectType);
        return objectType;
    }

    /* renamed from: b */
    public final ObjectType m202b(byte[] bArr) throws IOException {
        if (bArr == null) {
            StringBuilder stringBuilder = new StringBuilder("Decoding: ");
            stringBuilder.append(this.f345c);
            stringBuilder.append(": Nothing to decode");
            throw new IOException(stringBuilder.toString());
        }
        m200d(bArr);
        bArr = (byte[]) new kx(new kv()).mo1368a(new ByteArrayInputStream(bArr));
        String str = f343a;
        StringBuilder stringBuilder2 = new StringBuilder("Decoding: ");
        stringBuilder2.append(this.f345c);
        stringBuilder2.append(": ");
        stringBuilder2.append(new String(bArr));
        kf.m176a(3, str, stringBuilder2.toString());
        return this.f346d.mo1368a(new ByteArrayInputStream(bArr));
    }
}
