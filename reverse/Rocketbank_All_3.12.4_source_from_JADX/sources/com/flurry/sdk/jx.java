package com.flurry.sdk;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.zip.CRC32;

public final class jx extends MessageDigest {
    /* renamed from: a */
    private CRC32 f317a = new CRC32();

    public jx() {
        super("CRC");
    }

    protected final void engineReset() {
        this.f317a.reset();
    }

    protected final void engineUpdate(byte b) {
        this.f317a.update(b);
    }

    protected final void engineUpdate(byte[] bArr, int i, int i2) {
        this.f317a.update(bArr, i, i2);
    }

    protected final byte[] engineDigest() {
        long value = this.f317a.getValue();
        return new byte[]{(byte) ((int) ((value & -16777216) >> 24)), (byte) ((int) ((value & 16711680) >> 16)), (byte) ((int) ((value & 65280) >> 8)), (byte) ((int) (value & 255))};
    }

    /* renamed from: a */
    public final byte[] m143a() {
        return engineDigest();
    }

    /* renamed from: b */
    public final int m144b() {
        return ByteBuffer.wrap(engineDigest()).getInt();
    }
}
