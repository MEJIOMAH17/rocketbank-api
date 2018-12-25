package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.identity.intents.AddressConstants.Extras;

public final class UserAddress extends zza implements ReflectedParcelable {
    public static final Creator<UserAddress> CREATOR = new zzb();
    String name;
    String phoneNumber;
    String zzUI;
    String zzbhA;
    String zzbhB;
    String zzbhC;
    boolean zzbhD;
    String zzbhE;
    String zzbhF;
    String zzbhu;
    String zzbhv;
    String zzbhw;
    String zzbhx;
    String zzbhy;
    String zzbhz;

    public final class Builder {
        final /* synthetic */ UserAddress zzbhG;

        public Builder(UserAddress userAddress) {
            this.zzbhG = userAddress;
        }

        public final UserAddress build() {
            return this.zzbhG;
        }

        public final Builder setAddress1(String str) {
            this.zzbhG.zzbhu = str;
            return this;
        }

        public final Builder setAddress2(String str) {
            this.zzbhG.zzbhv = str;
            return this;
        }

        public final Builder setAdministrativeArea(String str) {
            this.zzbhG.zzbhz = str;
            return this;
        }

        public final Builder setCountryCode(String str) {
            this.zzbhG.zzUI = str;
            return this;
        }

        public final Builder setLocality(String str) {
            this.zzbhG.zzbhA = str;
            return this;
        }

        public final Builder setName(String str) {
            this.zzbhG.name = str;
            return this;
        }

        public final Builder setPhoneNumber(String str) {
            this.zzbhG.phoneNumber = str;
            return this;
        }

        public final Builder setPostalCode(String str) {
            this.zzbhG.zzbhB = str;
            return this;
        }
    }

    UserAddress() {
    }

    UserAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.name = str;
        this.zzbhu = str2;
        this.zzbhv = str3;
        this.zzbhw = str4;
        this.zzbhx = str5;
        this.zzbhy = str6;
        this.zzbhz = str7;
        this.zzbhA = str8;
        this.zzUI = str9;
        this.zzbhB = str10;
        this.zzbhC = str11;
        this.phoneNumber = str12;
        this.zzbhD = z;
        this.zzbhE = str13;
        this.zzbhF = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        if (intent != null) {
            if (intent.hasExtra(Extras.EXTRA_ADDRESS)) {
                return (UserAddress) intent.getParcelableExtra(Extras.EXTRA_ADDRESS);
            }
        }
        return null;
    }

    public static Builder newBuilder() {
        UserAddress userAddress = new UserAddress();
        userAddress.getClass();
        return new Builder(userAddress);
    }

    public final String getAddress1() {
        return this.zzbhu;
    }

    public final String getAddress2() {
        return this.zzbhv;
    }

    public final String getAddress3() {
        return this.zzbhw;
    }

    public final String getAddress4() {
        return this.zzbhx;
    }

    public final String getAddress5() {
        return this.zzbhy;
    }

    public final String getAdministrativeArea() {
        return this.zzbhz;
    }

    public final String getCompanyName() {
        return this.zzbhE;
    }

    public final String getCountryCode() {
        return this.zzUI;
    }

    public final String getEmailAddress() {
        return this.zzbhF;
    }

    public final String getLocality() {
        return this.zzbhA;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getPostalCode() {
        return this.zzbhB;
    }

    public final String getSortingCode() {
        return this.zzbhC;
    }

    public final boolean isPostBox() {
        return this.zzbhD;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
