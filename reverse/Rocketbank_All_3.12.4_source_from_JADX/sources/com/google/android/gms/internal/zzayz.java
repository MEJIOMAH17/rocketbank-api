package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzaa;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;

public class zzayz extends com.google.android.gms.common.internal.safeparcel.zza implements Comparable<zzayz> {
    public static final Creator<zzayz> CREATOR = new zzaza();
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final zza zzbBJ = new zza();
    public final String name;
    final String zzaGV;
    final long zzbBF;
    final byte[] zzbBG;
    public final int zzbBH;
    public final int zzbBI;
    final boolean zzbhn;
    final double zzbhp;

    public static class zza implements Comparator<zzayz> {
        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((zzayz) obj, (zzayz) obj2);
        }

        public int zza(zzayz zzayz, zzayz zzayz2) {
            return zzayz.zzbBI == zzayz2.zzbBI ? zzayz.name.compareTo(zzayz2.name) : zzayz.zzbBI - zzayz2.zzbBI;
        }
    }

    public zzayz(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.name = str;
        this.zzbBF = j;
        this.zzbhn = z;
        this.zzbhp = d;
        this.zzaGV = str2;
        this.zzbBG = bArr;
        this.zzbBH = i;
        this.zzbBI = i2;
    }

    private static int compare(byte b, byte b2) {
        return b - b2;
    }

    private static int compare(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    private static int compare(long j, long j2) {
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }

    private static int compare(String str, String str2) {
        return str == str2 ? 0 : str == null ? -1 : str2 == null ? 1 : str.compareTo(str2);
    }

    private static int compare(boolean z, boolean z2) {
        return z == z2 ? 0 : z ? 1 : -1;
    }

    public /* synthetic */ int compareTo(Object obj) {
        return zza((zzayz) obj);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzayz)) {
            zzayz zzayz = (zzayz) obj;
            if (!zzaa.equal(this.name, zzayz.name) || this.zzbBH != zzayz.zzbBH || this.zzbBI != zzayz.zzbBI) {
                return false;
            }
            switch (this.zzbBH) {
                case 1:
                    if (this.zzbBF == zzayz.zzbBF) {
                        return true;
                    }
                    break;
                case 2:
                    return this.zzbhn == zzayz.zzbhn;
                case 3:
                    return this.zzbhp == zzayz.zzbhp;
                case 4:
                    return zzaa.equal(this.zzaGV, zzayz.zzaGV);
                case 5:
                    return Arrays.equals(this.zzbBG, zzayz.zzbBG);
                default:
                    int i = this.zzbBH;
                    StringBuilder stringBuilder = new StringBuilder(31);
                    stringBuilder.append("Invalid enum value: ");
                    stringBuilder.append(i);
                    throw new AssertionError(stringBuilder.toString());
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        zza(stringBuilder);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzaza.zza(this, parcel, i);
    }

    public int zza(zzayz zzayz) {
        int compareTo = this.name.compareTo(zzayz.name);
        if (compareTo != 0) {
            return compareTo;
        }
        compareTo = compare(this.zzbBH, zzayz.zzbBH);
        if (compareTo != 0) {
            return compareTo;
        }
        switch (this.zzbBH) {
            case 1:
                return compare(this.zzbBF, zzayz.zzbBF);
            case 2:
                return compare(this.zzbhn, zzayz.zzbhn);
            case 3:
                return Double.compare(this.zzbhp, zzayz.zzbhp);
            case 4:
                return compare(this.zzaGV, zzayz.zzaGV);
            case 5:
                int i = 0;
                if (this.zzbBG == zzayz.zzbBG) {
                    return 0;
                }
                if (this.zzbBG == null) {
                    return -1;
                }
                if (zzayz.zzbBG == null) {
                    return 1;
                }
                while (i < Math.min(this.zzbBG.length, zzayz.zzbBG.length)) {
                    compareTo = compare(this.zzbBG[i], zzayz.zzbBG[i]);
                    if (compareTo != 0) {
                        return compareTo;
                    }
                    i++;
                }
                return compare(this.zzbBG.length, zzayz.zzbBG.length);
            default:
                compareTo = this.zzbBH;
                StringBuilder stringBuilder = new StringBuilder(31);
                stringBuilder.append("Invalid enum value: ");
                stringBuilder.append(compareTo);
                throw new AssertionError(stringBuilder.toString());
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String zza(java.lang.StringBuilder r5) {
        /*
        r4 = this;
        r0 = "Flag(";
        r5.append(r0);
        r0 = r4.name;
        r5.append(r0);
        r0 = ", ";
        r5.append(r0);
        r0 = r4.zzbBH;
        switch(r0) {
            case 1: goto L_0x0074;
            case 2: goto L_0x006e;
            case 3: goto L_0x0068;
            case 4: goto L_0x0058;
            case 5: goto L_0x0042;
            default: goto L_0x0014;
        };
    L_0x0014:
        r5 = new java.lang.AssertionError;
        r0 = r4.name;
        r1 = r4.zzbBH;
        r2 = 27;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Invalid type: ";
        r3.append(r2);
        r3.append(r0);
        r0 = ", ";
        r3.append(r0);
        r3.append(r1);
        r0 = r3.toString();
        r5.<init>(r0);
        throw r5;
    L_0x0042:
        r0 = r4.zzbBG;
        if (r0 != 0) goto L_0x0049;
    L_0x0046:
        r0 = "null";
        goto L_0x0064;
    L_0x0049:
        r0 = "'";
        r5.append(r0);
        r0 = new java.lang.String;
        r1 = r4.zzbBG;
        r2 = UTF_8;
        r0.<init>(r1, r2);
        goto L_0x005f;
    L_0x0058:
        r0 = "'";
        r5.append(r0);
        r0 = r4.zzaGV;
    L_0x005f:
        r5.append(r0);
        r0 = "'";
    L_0x0064:
        r5.append(r0);
        goto L_0x0079;
    L_0x0068:
        r0 = r4.zzbhp;
        r5.append(r0);
        goto L_0x0079;
    L_0x006e:
        r0 = r4.zzbhn;
        r5.append(r0);
        goto L_0x0079;
    L_0x0074:
        r0 = r4.zzbBF;
        r5.append(r0);
    L_0x0079:
        r0 = ", ";
        r5.append(r0);
        r0 = r4.zzbBH;
        r5.append(r0);
        r0 = ", ";
        r5.append(r0);
        r0 = r4.zzbBI;
        r5.append(r0);
        r0 = ")";
        r5.append(r0);
        r5 = r5.toString();
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzayz.zza(java.lang.StringBuilder):java.lang.String");
    }
}
