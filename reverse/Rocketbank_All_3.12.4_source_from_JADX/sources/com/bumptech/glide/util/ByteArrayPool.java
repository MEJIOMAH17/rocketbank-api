package com.bumptech.glide.util;

import android.util.Log;
import java.util.Queue;

public final class ByteArrayPool {
    private static final ByteArrayPool BYTE_ARRAY_POOL = new ByteArrayPool();
    private final Queue<byte[]> tempQueue = Util.createQueue(0);

    public static ByteArrayPool get() {
        return BYTE_ARRAY_POOL;
    }

    private ByteArrayPool() {
    }

    public final byte[] getBytes() {
        byte[] bArr;
        synchronized (this.tempQueue) {
            bArr = (byte[]) this.tempQueue.poll();
        }
        if (bArr == null) {
            bArr = new byte[65536];
            if (Log.isLoggable("ByteArrayPool", 3)) {
                Log.d("ByteArrayPool", "Created temp bytes");
            }
        }
        return bArr;
    }

    public final boolean releaseBytes(byte[] bArr) {
        boolean z = false;
        if (bArr.length != 65536) {
            return false;
        }
        synchronized (this.tempQueue) {
            if (this.tempQueue.size() < 32) {
                z = true;
                this.tempQueue.offer(bArr);
            }
        }
        return z;
    }
}
