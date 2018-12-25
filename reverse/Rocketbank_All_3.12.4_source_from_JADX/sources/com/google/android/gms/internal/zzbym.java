package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbym {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    static final int zzcwM = zzO(1, 3);
    static final int zzcwN = zzO(1, 4);
    static final int zzcwO = zzO(2, 0);
    static final int zzcwP = zzO(3, 2);
    public static final int[] zzcwQ = new int[0];
    public static final long[] zzcwR = new long[0];
    public static final float[] zzcwS = new float[0];
    public static final double[] zzcwT = new double[0];
    public static final boolean[] zzcwU = new boolean[0];
    public static final byte[][] zzcwV = new byte[0][];
    public static final byte[] zzcwW = new byte[0];

    public static int zzO(int i, int i2) {
        return (i << 3) | i2;
    }

    public static final int zzb(zzbyb zzbyb, int i) throws IOException {
        int position = zzbyb.getPosition();
        zzbyb.zzrd(i);
        int i2 = 1;
        while (zzbyb.zzaeW() == i) {
            zzbyb.zzrd(i);
            i2++;
        }
        zzbyb.zzrh(position);
        return i2;
    }

    static int zzrw(int i) {
        return i & 7;
    }

    public static int zzrx(int i) {
        return i >>> 3;
    }
}
