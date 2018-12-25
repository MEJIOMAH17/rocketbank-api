package com.google.android.gms.tapandpay.firstparty;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzb implements Creator<CardInfo> {
    static void zza(CardInfo cardInfo, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, cardInfo.zzaiI);
        zzc.zza(parcel, 2, cardInfo.zzbNy, false);
        zzc.zza(parcel, 3, cardInfo.zzbNz, false);
        zzc.zza(parcel, 4, cardInfo.zzbNA, false);
        zzc.zza(parcel, 5, cardInfo.zzbNB, false);
        zzc.zzc(parcel, 6, cardInfo.zzbNC);
        zzc.zza(parcel, 7, cardInfo.zzbND, i, false);
        zzc.zza(parcel, 8, cardInfo.zzbNE, false);
        zzc.zza(parcel, 9, cardInfo.zzbNF, i, false);
        zzc.zzc(parcel, 10, cardInfo.zzbNG);
        zzc.zzc(parcel, 11, cardInfo.zzbNH);
        zzc.zza(parcel, 12, cardInfo.zzbNI, i, false);
        zzc.zza(parcel, 13, cardInfo.zzbNJ, false);
        zzc.zza(parcel, 14, cardInfo.zzbNK);
        zzc.zza(parcel, 15, cardInfo.zzbNL, i, false);
        zzc.zza(parcel, 16, cardInfo.zzbNM, false);
        zzc.zza(parcel, 17, cardInfo.zzbNN, false);
        zzc.zzc(parcel, 18, cardInfo.zzbNO);
        zzc.zza(parcel, 19, cardInfo.zzbNP, false);
        zzc.zzc(parcel, 20, cardInfo.zzbNQ);
        zzc.zzc(parcel, 21, cardInfo.zzbNR);
        zzc.zza(parcel, 22, cardInfo.zzbNS, i, false);
        zzc.zza(parcel, 23, cardInfo.zzbNT, i, false);
        zzc.zza(parcel, 24, cardInfo.zzbNU, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjA(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznQ(i);
    }

    public CardInfo zzjA(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        int i3 = i2;
        int i4 = i3;
        int i5 = i4;
        int i6 = i5;
        int i7 = i6;
        String str = null;
        byte[] bArr = str;
        String str2 = bArr;
        String str3 = str2;
        TokenStatus tokenStatus = str3;
        String str4 = tokenStatus;
        Uri uri = str4;
        zzp zzp = uri;
        String str5 = zzp;
        zzz zzz = str5;
        String str6 = zzz;
        byte[] bArr2 = str6;
        String str7 = bArr2;
        zzn zzn = str7;
        zzl zzl = zzn;
        String str8 = zzl;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 3:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel2, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 7:
                    tokenStatus = (TokenStatus) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, TokenStatus.CREATOR);
                    break;
                case 8:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 9:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, Uri.CREATOR);
                    break;
                case 10:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 11:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 12:
                    zzp = (zzp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, zzp.CREATOR);
                    break;
                case 13:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 14:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel2, zzaX);
                    break;
                case 15:
                    zzz = (zzz) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, zzz.CREATOR);
                    break;
                case 16:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 17:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel2, zzaX);
                    break;
                case 18:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 19:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 20:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 21:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, zzaX);
                    break;
                case 22:
                    zzn = (zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, zzn.CREATOR);
                    break;
                case 23:
                    zzl = (zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, zzl.CREATOR);
                    break;
                case 24:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new CardInfo(i, str, bArr, str2, str3, i2, tokenStatus, str4, uri, i3, i4, zzp, str5, j, zzz, str6, bArr2, i5, str7, i6, i7, zzn, zzl, str8);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public CardInfo[] zznQ(int i) {
        return new CardInfo[i];
    }
}
