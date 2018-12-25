package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class zzbyg implements Cloneable {
    private Object value;
    private zzbye<?, ?> zzcwI;
    private List<zzbyl> zzcwJ = new ArrayList();

    zzbyg() {
    }

    private byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzu()];
        zza(zzbyc.zzah(bArr));
        return bArr;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzafs();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbyg)) {
            return false;
        }
        zzbyg zzbyg = (zzbyg) obj;
        if (this.value != null && zzbyg.value != null) {
            return this.zzcwI != zzbyg.zzcwI ? false : !this.zzcwI.zzckL.isArray() ? this.value.equals(zzbyg.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) zzbyg.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) zzbyg.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) zzbyg.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) zzbyg.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) zzbyg.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) zzbyg.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) zzbyg.value);
        } else {
            if (this.zzcwJ != null && zzbyg.zzcwJ != null) {
                return this.zzcwJ.equals(zzbyg.zzcwJ);
            }
            try {
                return Arrays.equals(toByteArray(), zzbyg.toByteArray());
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public int hashCode() {
        try {
            return 527 + Arrays.hashCode(toByteArray());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    void zza(zzbyc zzbyc) throws IOException {
        if (this.value != null) {
            this.zzcwI.zza(this.value, zzbyc);
            return;
        }
        for (zzbyl zza : this.zzcwJ) {
            zza.zza(zzbyc);
        }
    }

    void zza(zzbyl zzbyl) {
        this.zzcwJ.add(zzbyl);
    }

    public final zzbyg zzafs() {
        zzbyg zzbyg = new zzbyg();
        try {
            zzbyg.zzcwI = this.zzcwI;
            if (this.zzcwJ == null) {
                zzbyg.zzcwJ = null;
            } else {
                zzbyg.zzcwJ.addAll(this.zzcwJ);
            }
            if (this.value != null) {
                Object obj;
                if (this.value instanceof zzbyj) {
                    obj = (zzbyj) ((zzbyj) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    obj = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    Object obj2;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        obj2 = new byte[bArr.length][];
                        zzbyg.value = obj2;
                        while (i < bArr.length) {
                            obj2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        obj = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        obj = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        obj = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        obj = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        obj = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzbyj[]) {
                        zzbyj[] zzbyjArr = (zzbyj[]) this.value;
                        obj2 = new zzbyj[zzbyjArr.length];
                        zzbyg.value = obj2;
                        while (i < zzbyjArr.length) {
                            obj2[i] = (zzbyj) zzbyjArr[i].clone();
                            i++;
                        }
                    }
                }
                zzbyg.value = obj;
                return zzbyg;
            }
            return zzbyg;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    <T> T zzb(zzbye<?, T> zzbye) {
        if (this.value == null) {
            this.zzcwI = zzbye;
            this.value = zzbye.zzad(this.zzcwJ);
            this.zzcwJ = null;
        } else if (!this.zzcwI.equals(zzbye)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return this.value;
    }

    int zzu() {
        if (this.value != null) {
            return this.zzcwI.zzaV(this.value);
        }
        int i = 0;
        for (zzbyl zzu : this.zzcwJ) {
            i += zzu.zzu();
        }
        return i;
    }
}
