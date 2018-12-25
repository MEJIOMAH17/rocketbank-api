package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbas implements Creator<zzbar> {
    static void zza(zzbar zzbar, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbar.zzaiI);
        zzc.zza(parcel, 2, zzbar.getAccount(), i, false);
        zzc.zza(parcel, 3, zzbar.zzPT(), i, false);
        zzc.zza(parcel, 4, zzbar.getServerClientId(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjw(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznw(i);
    }

    public zzbar zzjw(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Account account = null;
        int i = 0;
        Scope[] scopeArr = null;
        String str = scopeArr;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    account = (Account) zzb.zza(parcel, zzaX, Account.CREATOR);
                    break;
                case 3:
                    scopeArr = (Scope[]) zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzbar(i, account, scopeArr, str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbar[] zznw(int i) {
        return new zzbar[i];
    }
}
