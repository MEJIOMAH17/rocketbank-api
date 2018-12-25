package com.crashlytics.android.core;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

final class ByteString {
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private final byte[] bytes;
    private volatile int hash = 0;

    private ByteString(byte[] bArr) {
        this.bytes = bArr;
    }

    public final int size() {
        return this.bytes.length;
    }

    public static ByteString copyFrom$3d5b0678(byte[] bArr, int i) {
        Object obj = new byte[i];
        System.arraycopy(bArr, 0, obj, 0, i);
        return new ByteString(obj);
    }

    public static ByteString copyFromUtf8(String str) {
        try {
            return new ByteString(str.getBytes("UTF-8"));
        } catch (String str2) {
            throw new RuntimeException("UTF-8 not supported.", str2);
        }
    }

    public final void copyTo(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.bytes, i, bArr, i2, i3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        int length = this.bytes.length;
        if (length != byteString.bytes.length) {
            return false;
        }
        byte[] bArr = this.bytes;
        obj = byteString.bytes;
        for (int i = 0; i < length; i++) {
            if (bArr[i] != obj[i]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.hash;
        if (i == 0) {
            byte[] bArr = this.bytes;
            int length = this.bytes.length;
            int i2 = length;
            for (int i3 = 0; i3 < length; i3++) {
                i2 = (i2 * 31) + bArr[i3];
            }
            i = i2 == 0 ? 1 : i2;
            this.hash = i;
        }
        return i;
    }

    public final InputStream newInput() {
        return new ByteArrayInputStream(this.bytes);
    }
}
