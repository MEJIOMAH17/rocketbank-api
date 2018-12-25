package com.google.android.gms.tapandpay.firstparty;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class ValuableInfo extends zza implements ReflectedParcelable {
    public static final Creator<ValuableInfo> CREATOR = new zzab();
    int backgroundColor;
    int textColor;
    String title;
    final int zzaiI;
    String zzbOS;
    String zzbOT;
    Uri zzbOU;
    int zzbOV;
    Uri zzbOW;
    Uri zzbOX;
    String zzbOY;
    String zzbOZ;

    ValuableInfo(int i, String str, String str2, String str3, Uri uri, int i2, int i3, int i4, Uri uri2, Uri uri3, String str4, String str5) {
        this.zzaiI = i;
        this.title = str;
        this.zzbOS = str2;
        this.zzbOT = str3;
        this.zzbOU = uri;
        this.backgroundColor = i2;
        this.textColor = i3;
        this.zzbOV = i4;
        this.zzbOW = uri2;
        this.zzbOX = uri3;
        this.zzbOY = str4;
        this.zzbOZ = str5;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ValuableInfo) {
            ValuableInfo valuableInfo = (ValuableInfo) obj;
            if (zzaa.equal(this.title, valuableInfo.title) && zzaa.equal(this.zzbOS, valuableInfo.zzbOS) && zzaa.equal(this.zzbOT, valuableInfo.zzbOT) && zzaa.equal(this.zzbOU, valuableInfo.zzbOU) && this.backgroundColor == valuableInfo.backgroundColor && this.textColor == valuableInfo.textColor && this.zzbOV == valuableInfo.zzbOV && zzaa.equal(this.zzbOW, valuableInfo.zzbOW) && zzaa.equal(this.zzbOX, valuableInfo.zzbOX) && zzaa.equal(this.zzbOY, valuableInfo.zzbOY) && zzaa.equal(this.zzbOZ, valuableInfo.zzbOZ)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(this.title, this.zzbOS, this.zzbOT, this.zzbOU, Integer.valueOf(this.backgroundColor), Integer.valueOf(this.textColor), Integer.valueOf(this.zzbOV), this.zzbOW, this.zzbOX, this.zzbOY, this.zzbOZ);
    }

    public String toString() {
        return zzaa.zzv(this).zzg(ShareConstants.WEB_DIALOG_PARAM_TITLE, this.title).zzg("merchant", this.zzbOS).zzg("sideNote", this.zzbOT).zzg("logo", this.zzbOU).zzg("backgroundColor", Integer.valueOf(this.backgroundColor)).zzg("textColor", Integer.valueOf(this.textColor)).zzg("valuableType", Integer.valueOf(this.zzbOV)).zzg("heroImage", this.zzbOW).zzg("wordmark", this.zzbOX).zzg("detailSubtitle", this.zzbOY).zzg("footer", this.zzbOZ).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }
}
