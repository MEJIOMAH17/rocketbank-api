package com.google.android.gms.tapandpay.issuer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.identity.intents.model.UserAddress;

public class PushTokenizeRequest extends zza {
    public static final Creator<PushTokenizeRequest> CREATOR = new zza();
    final int versionCode;
    final String zzbNB;
    final int zzbPr;
    final int zzbPs;
    final byte[] zzbPt;
    final String zzbPu;
    final UserAddress zzbPv;

    public static class Builder {
        private String zzbNB;
        private int zzbPr;
        private int zzbPs;
        private byte[] zzbPt;
        private String zzbPu;
        private UserAddress zzbPv;

        public PushTokenizeRequest build() {
            return new PushTokenizeRequest(this.zzbPr, this.zzbPs, this.zzbPt, this.zzbPu, this.zzbNB, this.zzbPv);
        }

        public Builder setDisplayName(String str) {
            this.zzbNB = str;
            return this;
        }

        public Builder setLastDigits(String str) {
            this.zzbPu = str;
            return this;
        }

        public Builder setNetwork(int i) {
            this.zzbPr = i;
            return this;
        }

        public Builder setOpaquePaymentCard(byte[] bArr) {
            this.zzbPt = bArr;
            return this;
        }

        public Builder setTokenServiceProvider(int i) {
            this.zzbPs = i;
            return this;
        }

        public Builder setUserAddress(UserAddress userAddress) {
            this.zzbPv = userAddress;
            return this;
        }
    }

    PushTokenizeRequest(int i, int i2, int i3, byte[] bArr, String str, String str2, UserAddress userAddress) {
        this.versionCode = i;
        this.zzbPr = i2;
        this.zzbPs = i3;
        this.zzbPt = bArr;
        this.zzbPu = str;
        this.zzbNB = str2;
        this.zzbPv = userAddress;
    }

    private PushTokenizeRequest(int i, int i2, byte[] bArr, String str, String str2, UserAddress userAddress) {
        this(1, i, i2, bArr, str, str2, userAddress);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
