package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzc;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.common.util.zzr;
import com.google.android.gms.internal.zzacs.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzacz extends zzact {
    public static final Creator<zzacz> CREATOR = new zzada();
    private final String mClassName;
    private final zzacw zzaHf;
    private final Parcel zzaHm;
    private final int zzaHn = 2;
    private int zzaHo;
    private int zzaHp;
    private final int zzaiI;

    zzacz(int i, Parcel parcel, zzacw zzacw) {
        this.zzaiI = i;
        this.zzaHm = (Parcel) zzac.zzw(parcel);
        this.zzaHf = zzacw;
        this.mClassName = this.zzaHf == null ? null : this.zzaHf.zzyF();
        this.zzaHo = 2;
    }

    private static SparseArray<Entry<String, zza<?, ?>>> zzY(Map<String, zza<?, ?>> map) {
        SparseArray<Entry<String, zza<?, ?>>> sparseArray = new SparseArray();
        for (Entry entry : map.entrySet()) {
            sparseArray.put(((zza) entry.getValue()).zzyx(), entry);
        }
        return sparseArray;
    }

    private void zza(StringBuilder stringBuilder, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                stringBuilder.append(obj);
                return;
            case 7:
                stringBuilder.append("\"");
                stringBuilder.append(zzq.zzdy(obj.toString()));
                stringBuilder.append("\"");
                return;
            case 8:
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzq((byte[]) obj));
                stringBuilder.append("\"");
                return;
            case 9:
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzr((byte[]) obj));
                stringBuilder.append("\"");
                return;
            case 10:
                zzr.zza(stringBuilder, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder stringBuilder2 = new StringBuilder(26);
                stringBuilder2.append("Unknown type = ");
                stringBuilder2.append(i);
                throw new IllegalArgumentException(stringBuilder2.toString());
        }
    }

    private void zza(StringBuilder stringBuilder, zza<?, ?> zza, Parcel parcel, int i) {
        Object valueOf;
        switch (zza.zzyu()) {
            case 0:
                valueOf = Integer.valueOf(zzb.zzg(parcel, i));
                break;
            case 1:
                valueOf = zzb.zzk(parcel, i);
                break;
            case 2:
                valueOf = Long.valueOf(zzb.zzi(parcel, i));
                break;
            case 3:
                valueOf = Float.valueOf(zzb.zzl(parcel, i));
                break;
            case 4:
                valueOf = Double.valueOf(zzb.zzn(parcel, i));
                break;
            case 5:
                valueOf = zzb.zzp(parcel, i);
                break;
            case 6:
                valueOf = Boolean.valueOf(zzb.zzc(parcel, i));
                break;
            case 7:
                valueOf = zzb.zzq(parcel, i);
                break;
            case 8:
            case 9:
                valueOf = zzb.zzt(parcel, i);
                break;
            case 10:
                valueOf = zzr(zzb.zzs(parcel, i));
                break;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                int zzyu = zza.zzyu();
                StringBuilder stringBuilder2 = new StringBuilder(36);
                stringBuilder2.append("Unknown field out type = ");
                stringBuilder2.append(zzyu);
                throw new IllegalArgumentException(stringBuilder2.toString());
        }
        zzb(stringBuilder, (zza) zza, zza(zza, valueOf));
    }

    private void zza(StringBuilder stringBuilder, String str, zza<?, ?> zza, Parcel parcel, int i) {
        stringBuilder.append("\"");
        stringBuilder.append(str);
        stringBuilder.append("\":");
        if (zza.zzyA()) {
            zza(stringBuilder, zza, parcel, i);
        } else {
            zzb(stringBuilder, zza, parcel, i);
        }
    }

    private void zza(StringBuilder stringBuilder, Map<String, zza<?, ?>> map, Parcel parcel) {
        SparseArray zzY = zzY(map);
        stringBuilder.append('{');
        int zzaY = zzb.zzaY(parcel);
        Object obj = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            Entry entry = (Entry) zzY.get(zzb.zzdc(zzaX));
            if (entry != null) {
                if (obj != null) {
                    stringBuilder.append(",");
                }
                zza(stringBuilder, (String) entry.getKey(), (zza) entry.getValue(), parcel, zzaX);
                obj = 1;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            StringBuilder stringBuilder2 = new StringBuilder(37);
            stringBuilder2.append("Overread allowed size end=");
            stringBuilder2.append(zzaY);
            throw new zzb.zza(stringBuilder2.toString(), parcel);
        }
        stringBuilder.append('}');
    }

    private void zzb(StringBuilder stringBuilder, zza<?, ?> zza, Parcel parcel, int i) {
        if (zza.zzyv()) {
            Object[] zzy;
            stringBuilder.append("[");
            switch (zza.zzyu()) {
                case 0:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzw(parcel, i));
                    break;
                case 1:
                    zzy = zzb.zzy(parcel, i);
                    break;
                case 2:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzx(parcel, i));
                    break;
                case 3:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzz(parcel, i));
                    break;
                case 4:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzA(parcel, i));
                    break;
                case 5:
                    zzy = zzb.zzB(parcel, i);
                    break;
                case 6:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzv(parcel, i));
                    break;
                case 7:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzC(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] zzG = zzb.zzG(parcel, i);
                    i = zzG.length;
                    for (int i2 = 0; i2 < i; i2++) {
                        if (i2 > 0) {
                            stringBuilder.append(",");
                        }
                        zzG[i2].setDataPosition(0);
                        zza(stringBuilder, zza.zzyC(), zzG[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            com.google.android.gms.common.util.zzb.zza(stringBuilder, zzy);
            stringBuilder.append("]");
            return;
        }
        byte[] zzt;
        switch (zza.zzyu()) {
            case 0:
                stringBuilder.append(zzb.zzg(parcel, i));
                return;
            case 1:
                stringBuilder.append(zzb.zzk(parcel, i));
                return;
            case 2:
                stringBuilder.append(zzb.zzi(parcel, i));
                return;
            case 3:
                stringBuilder.append(zzb.zzl(parcel, i));
                return;
            case 4:
                stringBuilder.append(zzb.zzn(parcel, i));
                return;
            case 5:
                stringBuilder.append(zzb.zzp(parcel, i));
                return;
            case 6:
                stringBuilder.append(zzb.zzc(parcel, i));
                return;
            case 7:
                String zzq = zzb.zzq(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzq.zzdy(zzq));
                stringBuilder.append("\"");
                return;
            case 8:
                zzt = zzb.zzt(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzq(zzt));
                stringBuilder.append("\"");
                return;
            case 9:
                zzt = zzb.zzt(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzr(zzt));
                stringBuilder.append("\"");
                return;
            case 10:
                Bundle zzs = zzb.zzs(parcel, i);
                Set<String> keySet = zzs.keySet();
                keySet.size();
                stringBuilder.append("{");
                i = 1;
                for (String str : keySet) {
                    if (i == 0) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append("\"");
                    stringBuilder.append(str);
                    stringBuilder.append("\"");
                    stringBuilder.append(":");
                    stringBuilder.append("\"");
                    stringBuilder.append(zzq.zzdy(zzs.getString(str)));
                    stringBuilder.append("\"");
                    i = 0;
                }
                stringBuilder.append("}");
                return;
            case 11:
                parcel = zzb.zzF(parcel, i);
                parcel.setDataPosition(0);
                zza(stringBuilder, zza.zzyC(), parcel);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private void zzb(StringBuilder stringBuilder, zza<?, ?> zza, Object obj) {
        if (zza.zzyt()) {
            zzb(stringBuilder, (zza) zza, (ArrayList) obj);
        } else {
            zza(stringBuilder, zza.zzys(), obj);
        }
    }

    private void zzb(StringBuilder stringBuilder, zza<?, ?> zza, ArrayList<?> arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            zza(stringBuilder, zza.zzys(), arrayList.get(i));
        }
        stringBuilder.append("]");
    }

    public static HashMap<String, String> zzr(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        zzac.zzb(this.zzaHf, (Object) "Cannot convert to JSON on client side.");
        Parcel zzyH = zzyH();
        zzyH.setDataPosition(0);
        StringBuilder stringBuilder = new StringBuilder(100);
        zza(stringBuilder, this.zzaHf.zzdw(this.mClassName), zzyH);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzada.zza(this, parcel, i);
    }

    public Object zzds(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public boolean zzdt(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Parcel zzyH() {
        switch (this.zzaHo) {
            case 0:
                this.zzaHp = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(this.zzaHm);
                break;
            case 1:
                break;
            default:
                break;
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(this.zzaHm, this.zzaHp);
        this.zzaHo = 2;
        return this.zzaHm;
    }

    zzacw zzyI() {
        switch (this.zzaHn) {
            case 0:
                return null;
            case 1:
                return this.zzaHf;
            case 2:
                return this.zzaHf;
            default:
                int i = this.zzaHn;
                StringBuilder stringBuilder = new StringBuilder(34);
                stringBuilder.append("Invalid creation type: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public Map<String, zza<?, ?>> zzyr() {
        return this.zzaHf == null ? null : this.zzaHf.zzdw(this.mClassName);
    }
}
