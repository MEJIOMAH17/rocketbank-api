package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class zzbye<M extends zzbyd<M>, T> {
    public final int tag;
    protected final int type;
    protected final Class<T> zzckL;
    protected final boolean zzcwD;

    private zzbye(int i, Class<T> cls, int i2, boolean z) {
        this.type = i;
        this.zzckL = cls;
        this.tag = i2;
        this.zzcwD = z;
    }

    public static <M extends zzbyd<M>, T extends zzbyj> zzbye<M, T> zza(int i, Class<T> cls, long j) {
        return new zzbye(i, cls, (int) j, false);
    }

    private T zzae(List<zzbyl> list) {
        List arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzbyl zzbyl = (zzbyl) list.get(i2);
            if (zzbyl.zzbyc.length != 0) {
                zza(zzbyl, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        T cast = this.zzckL.cast(Array.newInstance(this.zzckL.getComponentType(), size));
        while (i < size) {
            Array.set(cast, i, arrayList.get(i));
            i++;
        }
        return cast;
    }

    private T zzaf(List<zzbyl> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.zzckL.cast(zzaU(zzbyb.zzag(((zzbyl) list.get(list.size() - 1)).zzbyc)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbye)) {
            return false;
        }
        zzbye zzbye = (zzbye) obj;
        return this.type == zzbye.type && this.zzckL == zzbye.zzckL && this.tag == zzbye.tag && this.zzcwD == zzbye.zzcwD;
    }

    public int hashCode() {
        return ((((((1147 + this.type) * 31) + this.zzckL.hashCode()) * 31) + this.tag) * 31) + this.zzcwD;
    }

    protected void zza(zzbyl zzbyl, List<Object> list) {
        list.add(zzaU(zzbyb.zzag(zzbyl.zzbyc)));
    }

    void zza(Object obj, zzbyc zzbyc) throws IOException {
        if (this.zzcwD) {
            zzc(obj, zzbyc);
        } else {
            zzb(obj, zzbyc);
        }
    }

    protected Object zzaU(zzbyb zzbyb) {
        String valueOf;
        StringBuilder stringBuilder;
        Class componentType = this.zzcwD ? this.zzckL.getComponentType() : this.zzckL;
        try {
            zzbyj zzbyj;
            switch (this.type) {
                case 10:
                    zzbyj = (zzbyj) componentType.newInstance();
                    zzbyb.zza(zzbyj, zzbym.zzrx(this.tag));
                    return zzbyj;
                case 11:
                    zzbyj = (zzbyj) componentType.newInstance();
                    zzbyb.zza(zzbyj);
                    return zzbyj;
                default:
                    int i = this.type;
                    StringBuilder stringBuilder2 = new StringBuilder(24);
                    stringBuilder2.append("Unknown type ");
                    stringBuilder2.append(i);
                    throw new IllegalArgumentException(stringBuilder2.toString());
            }
        } catch (Throwable e) {
            valueOf = String.valueOf(componentType);
            stringBuilder = new StringBuilder(33 + String.valueOf(valueOf).length());
            stringBuilder.append("Error creating instance of class ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString(), e);
        } catch (Throwable e2) {
            valueOf = String.valueOf(componentType);
            stringBuilder = new StringBuilder(33 + String.valueOf(valueOf).length());
            stringBuilder.append("Error creating instance of class ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString(), e2);
        } catch (Throwable e22) {
            throw new IllegalArgumentException("Error reading extension field", e22);
        }
    }

    int zzaV(Object obj) {
        return this.zzcwD ? zzaW(obj) : zzaX(obj);
    }

    protected int zzaW(Object obj) {
        int length = Array.getLength(obj);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (Array.get(obj, i) != null) {
                i2 += zzaX(Array.get(obj, i));
            }
            i++;
        }
        return i2;
    }

    protected int zzaX(Object obj) {
        int zzrx = zzbym.zzrx(this.tag);
        switch (this.type) {
            case 10:
                return zzbyc.zzb(zzrx, (zzbyj) obj);
            case 11:
                return zzbyc.zzc(zzrx, (zzbyj) obj);
            default:
                zzrx = this.type;
                StringBuilder stringBuilder = new StringBuilder(24);
                stringBuilder.append("Unknown type ");
                stringBuilder.append(zzrx);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    final T zzad(List<zzbyl> list) {
        return list == null ? null : this.zzcwD ? zzae(list) : zzaf(list);
    }

    protected void zzb(Object obj, zzbyc zzbyc) {
        try {
            zzbyc.zzrp(this.tag);
            switch (this.type) {
                case 10:
                    zzbyj zzbyj = (zzbyj) obj;
                    int zzrx = zzbym.zzrx(this.tag);
                    zzbyc.zzb(zzbyj);
                    zzbyc.zzN(zzrx, 4);
                    return;
                case 11:
                    zzbyc.zzc((zzbyj) obj);
                    return;
                default:
                    int i = this.type;
                    StringBuilder stringBuilder = new StringBuilder(24);
                    stringBuilder.append("Unknown type ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    protected void zzc(Object obj, zzbyc zzbyc) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, zzbyc);
            }
        }
    }
}
