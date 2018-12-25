package com.google.android.gms.internal;

import java.io.Serializable;
import java.util.Arrays;

public class zzbyu implements Serializable, Comparable<zzbyu> {
    static final char[] zzcxV = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final zzbyu zzcxW = zzam(new byte[0]);
    final byte[] data;
    transient int zzcug;
    transient String zzcxX;

    zzbyu(byte[] bArr) {
        this.data = bArr;
    }

    static int zzH(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    public static zzbyu zzam(byte... bArr) {
        if (bArr != null) {
            return new zzbyu((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public /* synthetic */ int compareTo(Object obj) {
        return zza((zzbyu) obj);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbyu) {
            zzbyu zzbyu = (zzbyu) obj;
            return zzbyu.size() == this.data.length && zzbyu.zza(0, this.data, 0, this.data.length);
        }
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.zzcug;
        if (i != 0) {
            return i;
        }
        i = Arrays.hashCode(this.data);
        this.zzcug = i;
        return i;
    }

    public int size() {
        return this.data.length;
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public String toString() {
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String replace;
        StringBuilder stringBuilder;
        String zzafV = zzafV();
        int zzH = zzH(zzafV, 64);
        if (zzH != -1) {
            replace = zzafV.substring(0, zzH).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (zzH < zzafV.length()) {
                stringBuilder = new StringBuilder("[size=");
                stringBuilder.append(this.data.length);
                stringBuilder.append(" text=");
                stringBuilder.append(replace);
                replace = "…]";
                stringBuilder.append(replace);
                return stringBuilder.toString();
            }
            stringBuilder = new StringBuilder("[text=");
        } else if (this.data.length <= 64) {
            stringBuilder = new StringBuilder("[hex=");
            replace = zzafW();
        } else {
            stringBuilder = new StringBuilder("[size=");
            stringBuilder.append(this.data.length);
            stringBuilder.append(" hex=");
            replace = zzP(0, 64).zzafW();
            stringBuilder.append(replace);
            replace = "…]";
            stringBuilder.append(replace);
            return stringBuilder.toString();
        }
        stringBuilder.append(replace);
        replace = "]";
        stringBuilder.append(replace);
        return stringBuilder.toString();
    }

    public zzbyu zzP(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        } else if (i2 > this.data.length) {
            StringBuilder stringBuilder = new StringBuilder("endIndex > length(");
            stringBuilder.append(this.data.length);
            stringBuilder.append(")");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else {
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            } else if (i == 0 && i2 == this.data.length) {
                return this;
            } else {
                Object obj = new byte[i3];
                System.arraycopy(this.data, i, obj, 0, i3);
                return new zzbyu(obj);
            }
        }
    }

    public int zza(zzbyu zzbyu) {
        int size = size();
        int size2 = zzbyu.size();
        int min = Math.min(size, size2);
        int i = 0;
        while (i < min) {
            int i2 = getByte(i) & 255;
            int i3 = zzbyu.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            } else {
                i++;
            }
        }
        return size == size2 ? 0 : size < size2 ? -1 : 1;
    }

    public boolean zza(int i, zzbyu zzbyu, int i2, int i3) {
        return zzbyu.zza(i2, this.data, i, i3);
    }

    public boolean zza(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.data.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && zzbzd.zza(this.data, i, bArr, i2, i3);
    }

    public String zzafV() {
        String str = this.zzcxX;
        if (str != null) {
            return str;
        }
        str = new String(this.data, zzbzd.UTF_8);
        this.zzcxX = str;
        return str;
    }

    public String zzafW() {
        int i = 0;
        char[] cArr = new char[(this.data.length << 1)];
        byte[] bArr = this.data;
        int length = bArr.length;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i2 + 1;
            cArr[i2] = zzcxV[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = zzcxV[b & 15];
            i++;
        }
        return new String(cArr);
    }
}
