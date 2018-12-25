package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzk implements Creator<zzj> {
    static void zza(zzj zzj, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzj.version);
        zzc.zzc(parcel, 2, zzj.zzaFK);
        zzc.zzc(parcel, 3, zzj.zzaFL);
        zzc.zza(parcel, 4, zzj.zzaFM, false);
        zzc.zza(parcel, 5, zzj.zzaFN, false);
        zzc.zza(parcel, 6, zzj.zzaFO, i, false);
        zzc.zza(parcel, 7, zzj.zzaFP, false);
        zzc.zza(parcel, 8, zzj.zzaFQ, i, false);
        zzc.zza(parcel, 10, zzj.zzaFR, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaS(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcU(i);
    }

    public zzj zzaS(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        int i3 = i2;
        String str = null;
        IBinder iBinder = str;
        Scope[] scopeArr = iBinder;
        Bundle bundle = scopeArr;
        Account account = bundle;
        com.google.android.gms.common.zzc[] zzcArr = account;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    iBinder = zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    scopeArr = (Scope[]) zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 8:
                    account = (Account) zzb.zza(parcel, zzaX, Account.CREATOR);
                    break;
                case 10:
                    zzcArr = (com.google.android.gms.common.zzc[]) zzb.zzb(parcel, zzaX, com.google.android.gms.common.zzc.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzj(i, i2, i3, str, iBinder, scopeArr, bundle, account, zzcArr);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzj[] zzcU(int i) {
        return new zzj[i];
    }
}
