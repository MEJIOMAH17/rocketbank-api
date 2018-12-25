package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzp extends zza {
    public static final Creator<zzp> CREATOR = new zzq();
    String zzacL;
    final int zzaiI;
    String zzbOf;
    String zzbOg;
    String zzbOh;
    String zzbOi;
    String zzbOj;
    String zzbOk;
    String zzbOl;
    String zzbOm;
    String zzbOn;
    String zzbOo;
    String zzbOp;
    String zzbOq;
    long zzbOr;
    String zzbOs;
    String zzbOt;
    String zzbOu;
    String zzbOv;

    zzp(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, long j, String str14, String str15, String str16, String str17) {
        this.zzaiI = i;
        this.zzbOf = str;
        this.zzbOg = str2;
        this.zzbOh = str3;
        this.zzacL = str4;
        this.zzbOi = str5;
        this.zzbOj = str6;
        this.zzbOk = str7;
        this.zzbOl = str8;
        this.zzbOm = str9;
        this.zzbOn = str10;
        this.zzbOo = str11;
        this.zzbOp = str12;
        this.zzbOq = str13;
        this.zzbOr = j;
        this.zzbOs = str14;
        this.zzbOt = str15;
        this.zzbOu = str16;
        this.zzbOv = str17;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzp) {
            zzp zzp = (zzp) obj;
            if (zzaa.equal(this.zzbOf, zzp.zzbOf) && zzaa.equal(this.zzbOg, zzp.zzbOg) && zzaa.equal(this.zzbOh, zzp.zzbOh) && zzaa.equal(this.zzacL, zzp.zzacL) && zzaa.equal(this.zzbOi, zzp.zzbOi) && zzaa.equal(this.zzbOj, zzp.zzbOj) && zzaa.equal(this.zzbOk, zzp.zzbOk) && zzaa.equal(this.zzbOl, zzp.zzbOl) && zzaa.equal(this.zzbOm, zzp.zzbOm) && zzaa.equal(this.zzbOn, zzp.zzbOn) && zzaa.equal(this.zzbOo, zzp.zzbOo) && zzaa.equal(this.zzbOp, zzp.zzbOp) && zzaa.equal(this.zzbOq, zzp.zzbOq) && this.zzbOr == zzp.zzbOr && zzaa.equal(this.zzbOs, zzp.zzbOs) && zzaa.equal(this.zzbOt, zzp.zzbOt) && zzaa.equal(this.zzbOu, zzp.zzbOu) && zzaa.equal(this.zzbOv, zzp.zzTF())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbOf, this.zzbOg, this.zzbOh, this.zzacL, this.zzbOi, this.zzbOj, this.zzbOk, this.zzbOl, this.zzbOm, this.zzbOn, this.zzbOo, this.zzbOp, this.zzbOq, Long.valueOf(this.zzbOr), this.zzbOs, this.zzbOt, this.zzbOu, this.zzbOv);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("issuerName", this.zzbOf).zzg("issuerPhoneNumber", this.zzbOg).zzg("appLogoUrl", this.zzbOh).zzg("appName", this.zzacL).zzg("appDeveloperName", this.zzbOi).zzg("appPackageName", this.zzbOj).zzg("privacyNoticeUrl", this.zzbOk).zzg("termsAndConditionsUrl", this.zzbOl).zzg("productShortName", this.zzbOm).zzg("appAction", this.zzbOn).zzg("appIntentExtraMessage", this.zzbOo).zzg("issuerMessageHeadline", this.zzbOp).zzg("issuerMessageBody", this.zzbOq).zzg("issuerMessageExpiryTimestampMillis", Long.valueOf(this.zzbOr)).zzg("issuerMessageLinkPackageName", this.zzbOs).zzg("issuerMessageLinkAction", this.zzbOt).zzg("issuerMessageLinkExtraText", this.zzbOu).zzg("issuerMessageLogoUrl", this.zzbOv).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    public String zzTF() {
        return this.zzbOv;
    }
}
