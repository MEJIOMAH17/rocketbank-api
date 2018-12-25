package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zza implements Creator<GoogleSignInAccount> {
    static void zza(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, googleSignInAccount.versionCode);
        zzc.zza(parcel, 2, googleSignInAccount.getId(), false);
        zzc.zza(parcel, 3, googleSignInAccount.getIdToken(), false);
        zzc.zza(parcel, 4, googleSignInAccount.getEmail(), false);
        zzc.zza(parcel, 5, googleSignInAccount.getDisplayName(), false);
        zzc.zza(parcel, 6, googleSignInAccount.getPhotoUrl(), i, false);
        zzc.zza(parcel, 7, googleSignInAccount.getServerAuthCode(), false);
        zzc.zza(parcel, 8, googleSignInAccount.zzre());
        zzc.zza(parcel, 9, googleSignInAccount.zzrf(), false);
        zzc.zzc(parcel, 10, googleSignInAccount.zzaiN, false);
        zzc.zza(parcel, 11, googleSignInAccount.getGivenName(), false);
        zzc.zza(parcel, 12, googleSignInAccount.getFamilyName(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzW(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbl(i);
    }

    public GoogleSignInAccount zzW(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        Uri uri = str4;
        String str5 = uri;
        String str6 = str5;
        List list = str6;
        String str7 = list;
        String str8 = str7;
        int i = 0;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    uri = (Uri) zzb.zza(parcel2, zzaX, Uri.CREATOR);
                    break;
                case 7:
                    str5 = zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 9:
                    str6 = zzb.zzq(parcel2, zzaX);
                    break;
                case 10:
                    list = zzb.zzc(parcel2, zzaX, Scope.CREATOR);
                    break;
                case 11:
                    str7 = zzb.zzq(parcel2, zzaX);
                    break;
                case 12:
                    str8 = zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, list, str7, str8);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel2);
    }

    public GoogleSignInAccount[] zzbl(int i) {
        return new GoogleSignInAccount[i];
    }
}
