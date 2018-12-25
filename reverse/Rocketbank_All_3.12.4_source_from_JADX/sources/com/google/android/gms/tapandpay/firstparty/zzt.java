package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import java.util.Arrays;

public class zzt extends zza {
    public static final Creator<zzt> CREATOR = new C06311();
    final int zzaHE;
    final int zzaiI;
    final int zzbOC;
    final ValuableInfo[] zzbOD;

    /* renamed from: com.google.android.gms.tapandpay.firstparty.zzt$1 */
    class C06311 implements Creator<zzt> {
        C06311() {
        }

        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzjJ(parcel);
        }

        public final /* synthetic */ Object[] newArray(int i) {
            return zzob(i);
        }

        public final zzt zzjJ(Parcel parcel) {
            int readInt = parcel.readInt();
            switch (readInt) {
                case 2:
                    return zzt.zzTG();
                case 3:
                    return zzt.zza((ValuableInfo[]) parcel.createTypedArray(ValuableInfo.CREATOR));
                case 4:
                    return zzt.zzTH();
                case 5:
                    return zzt.zznZ(parcel.readInt());
                case 6:
                    return zzt.zzTI();
                case 7:
                    return zzt.zzoa(parcel.readInt());
                default:
                    StringBuilder stringBuilder = new StringBuilder(30);
                    stringBuilder.append("Unknown eventType: ");
                    stringBuilder.append(readInt);
                    throw new IllegalStateException(stringBuilder.toString());
            }
        }

        public final zzt[] zzob(int i) {
            return new zzt[i];
        }
    }

    private zzt(int i, int i2) {
        this(i, i2, null);
    }

    zzt(int i, int i2, int i3, ValuableInfo[] valuableInfoArr) {
        this.zzaiI = i;
        this.zzaHE = i2;
        this.zzbOC = i3;
        this.zzbOD = valuableInfoArr;
    }

    private zzt(int i, int i2, ValuableInfo[] valuableInfoArr) {
        this(1, i, i2, valuableInfoArr);
    }

    public static zzt zzTG() {
        return new zzt(2, -1);
    }

    public static zzt zzTH() {
        return new zzt(4, -1);
    }

    public static zzt zzTI() {
        return new zzt(6, -1);
    }

    public static zzt zza(ValuableInfo[] valuableInfoArr) {
        return new zzt(3, -1, valuableInfoArr);
    }

    public static zzt zznZ(int i) {
        zzac.zzax(i != -1);
        return new zzt(5, i);
    }

    public static zzt zzoa(int i) {
        zzac.zzax(i != -1);
        return new zzt(7, i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzt) {
            zzt zzt = (zzt) obj;
            if (zzaa.equal(Integer.valueOf(this.zzaHE), Integer.valueOf(zzt.zzaHE)) && zzaa.equal(Integer.valueOf(this.zzbOC), Integer.valueOf(zzt.zzbOC)) && Arrays.equals(this.zzbOD, zzt.zzbOD)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaHE), Integer.valueOf(this.zzbOC), Integer.valueOf(Arrays.deepHashCode(this.zzbOD)));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("mEventType", Integer.valueOf(this.zzaHE)).zzg("mFailedReason", Integer.valueOf(this.zzbOC)).zzg("mValuableInfos", Arrays.toString(this.zzbOD)).toString();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void writeToParcel(android.os.Parcel r3, int r4) {
        /*
        r2 = this;
        r0 = r2.zzaHE;
        r3.writeInt(r0);
        r0 = r2.zzaHE;
        switch(r0) {
            case 2: goto L_0x0030;
            case 3: goto L_0x002b;
            case 4: goto L_0x002a;
            case 5: goto L_0x0025;
            case 6: goto L_0x002a;
            case 7: goto L_0x0025;
            default: goto L_0x000a;
        };
    L_0x000a:
        r3 = new java.lang.IllegalStateException;
        r4 = r2.zzaHE;
        r0 = 30;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Unknown eventType: ";
        r1.append(r0);
        r1.append(r4);
        r4 = r1.toString();
        r3.<init>(r4);
        throw r3;
    L_0x0025:
        r4 = r2.zzbOC;
        r3.writeInt(r4);
    L_0x002a:
        return;
    L_0x002b:
        r0 = r2.zzbOD;
        r3.writeTypedArray(r0, r4);
    L_0x0030:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tapandpay.firstparty.zzt.writeToParcel(android.os.Parcel, int):void");
    }
}
