package com.google.android.gms.tapandpay.firstparty;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;

public final class CardInfo extends zza implements ReflectedParcelable {
    public static final Creator<CardInfo> CREATOR = new zzb();
    final int zzaiI;
    String zzbNA;
    String zzbNB;
    int zzbNC;
    TokenStatus zzbND;
    String zzbNE;
    Uri zzbNF;
    int zzbNG;
    int zzbNH;
    zzp zzbNI;
    String zzbNJ;
    long zzbNK;
    zzz zzbNL;
    String zzbNM;
    byte[] zzbNN;
    int zzbNO;
    String zzbNP;
    int zzbNQ;
    int zzbNR;
    zzn zzbNS;
    zzl zzbNT;
    String zzbNU;
    String zzbNy;
    byte[] zzbNz;

    CardInfo(int i, String str, byte[] bArr, String str2, String str3, int i2, TokenStatus tokenStatus, String str4, Uri uri, int i3, int i4, zzp zzp, String str5, long j, zzz zzz, String str6, byte[] bArr2, int i5, String str7, int i6, int i7, zzn zzn, zzl zzl, String str8) {
        this.zzaiI = i;
        this.zzbNy = str;
        this.zzbNz = bArr;
        this.zzbNA = str2;
        this.zzbNB = str3;
        this.zzbNC = i2;
        this.zzbND = tokenStatus;
        this.zzbNE = str4;
        this.zzbNF = uri;
        this.zzbNG = i3;
        this.zzbNH = i4;
        this.zzbNI = zzp;
        this.zzbNJ = str5;
        this.zzbNK = j;
        this.zzbNL = zzz;
        this.zzbNM = str6;
        this.zzbNN = bArr2;
        this.zzbNO = i5;
        this.zzbNP = str7;
        this.zzbNQ = i6;
        this.zzbNR = i7;
        this.zzbNS = zzn;
        this.zzbNT = zzl;
        this.zzbNU = str8;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CardInfo) {
            CardInfo cardInfo = (CardInfo) obj;
            if (zzaa.equal(this.zzbNy, cardInfo.zzbNy) && Arrays.equals(this.zzbNz, cardInfo.zzbNz) && zzaa.equal(this.zzbNA, cardInfo.zzbNA) && zzaa.equal(this.zzbNB, cardInfo.zzbNB) && this.zzbNC == cardInfo.zzbNC && zzaa.equal(this.zzbND, cardInfo.zzbND) && zzaa.equal(this.zzbNE, cardInfo.zzbNE) && zzaa.equal(this.zzbNF, cardInfo.zzbNF) && this.zzbNG == cardInfo.zzbNG && this.zzbNH == cardInfo.zzbNH && zzaa.equal(this.zzbNI, cardInfo.zzbNI) && zzaa.equal(this.zzbNJ, cardInfo.zzbNJ) && this.zzbNK == cardInfo.zzbNK && zzaa.equal(this.zzbNL, cardInfo.zzbNL) && Arrays.equals(this.zzbNN, cardInfo.zzbNN) && this.zzbNO == cardInfo.zzbNO && zzaa.equal(this.zzbNP, cardInfo.zzbNP) && this.zzbNQ == cardInfo.zzbNQ && this.zzbNR == cardInfo.zzbNR && zzaa.equal(this.zzbNS, cardInfo.zzbNS) && zzaa.equal(this.zzbNT, cardInfo.zzbNT) && zzaa.equal(this.zzbNU, cardInfo.zzbNU)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return zzaa.hashCode(this.zzbNy, this.zzbNz, this.zzbNA, this.zzbNB, Integer.valueOf(this.zzbNC), this.zzbND, this.zzbNE, this.zzbNF, Integer.valueOf(this.zzbNG), Integer.valueOf(this.zzbNH), this.zzbNJ, Long.valueOf(this.zzbNK), this.zzbNL, this.zzbNN, Integer.valueOf(this.zzbNO), this.zzbNP, Integer.valueOf(this.zzbNQ), Integer.valueOf(this.zzbNR), this.zzbNS, this.zzbNT, this.zzbNU);
    }

    public final String toString() {
        Object obj = null;
        zzaa.zza zzg = zzaa.zzv(this).zzg("billingCardId", this.zzbNy).zzg("serverToken", this.zzbNz == null ? null : Arrays.toString(this.zzbNz)).zzg("cardholderName", this.zzbNA).zzg("displayName", this.zzbNB).zzg("cardNetwork", Integer.valueOf(this.zzbNC)).zzg("tokenStatus", this.zzbND).zzg("panLastDigits", this.zzbNE).zzg("cardImageUrl", this.zzbNF).zzg("cardColor", Integer.valueOf(this.zzbNG)).zzg("overlayTextColor", Integer.valueOf(this.zzbNH)).zzg("issuerInfo", this.zzbNI == null ? null : this.zzbNI.toString()).zzg("tokenLastDigits", this.zzbNJ).zzg("tokenUpgradeDeadline", Long.valueOf(this.zzbNK)).zzg("transactionInfo", this.zzbNL);
        String str = "inAppCardToken";
        if (this.zzbNN != null) {
            obj = Arrays.toString(this.zzbNN);
        }
        return zzg.zzg(str, obj).zzg("cachedEligibility", Integer.valueOf(this.zzbNO)).zzg("cardTypeName", this.zzbNP).zzg("paymentProtocol", Integer.valueOf(this.zzbNQ)).zzg("tokenType", Integer.valueOf(this.zzbNR)).zzg("inStoreCvmConfig", this.zzbNS).zzg("inAppCvmConfig", this.zzbNT).zzg("tokenDisplayName", this.zzbNU).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
