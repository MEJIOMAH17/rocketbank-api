package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;

class zzatc {
    private final String mAppId;
    private String zzVX;
    private String zzaIU;
    private String zzacM;
    private long zzbqA;
    private long zzbqB;
    private long zzbqC;
    private long zzbqD;
    private long zzbqE;
    private long zzbqF;
    private String zzbqG;
    private boolean zzbqH;
    private long zzbqI;
    private long zzbqJ;
    private final zzaue zzbqb;
    private String zzbqp;
    private String zzbqq;
    private long zzbqr;
    private long zzbqs;
    private long zzbqt;
    private long zzbqu;
    private String zzbqv;
    private long zzbqw;
    private long zzbqx;
    private boolean zzbqy;
    private long zzbqz;

    zzatc(zzaue zzaue, String str) {
        zzac.zzw(zzaue);
        zzac.zzdr(str);
        this.zzbqb = zzaue;
        this.mAppId = str;
        this.zzbqb.zzmR();
    }

    public String getAppInstanceId() {
        this.zzbqb.zzmR();
        return this.zzaIU;
    }

    public String getGmpAppId() {
        this.zzbqb.zzmR();
        return this.zzVX;
    }

    public void setAppVersion(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzacM, str) ^ 1;
        this.zzacM = str;
    }

    public void setMeasurementEnabled(boolean z) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqy != z ? 1 : 0;
        this.zzbqy = z;
    }

    public long zzKA() {
        this.zzbqb.zzmR();
        return this.zzbqJ;
    }

    public void zzKB() {
        this.zzbqb.zzmR();
        long j = this.zzbqr + 1;
        if (j > 2147483647L) {
            this.zzbqb.zzKl().zzMb().zzj("Bundle index overflow. appId", zzatx.zzfE(this.mAppId));
            j = 0;
        }
        this.zzbqH = true;
        this.zzbqr = j;
    }

    public long zzKC() {
        this.zzbqb.zzmR();
        return this.zzbqA;
    }

    public long zzKD() {
        this.zzbqb.zzmR();
        return this.zzbqB;
    }

    public long zzKE() {
        this.zzbqb.zzmR();
        return this.zzbqC;
    }

    public long zzKF() {
        this.zzbqb.zzmR();
        return this.zzbqD;
    }

    public long zzKG() {
        this.zzbqb.zzmR();
        return this.zzbqF;
    }

    public long zzKH() {
        this.zzbqb.zzmR();
        return this.zzbqE;
    }

    public String zzKI() {
        this.zzbqb.zzmR();
        return this.zzbqG;
    }

    public String zzKJ() {
        this.zzbqb.zzmR();
        String str = this.zzbqG;
        zzfi(null);
        return str;
    }

    public void zzKo() {
        this.zzbqb.zzmR();
        this.zzbqH = false;
    }

    public String zzKp() {
        this.zzbqb.zzmR();
        return this.zzbqp;
    }

    public String zzKq() {
        this.zzbqb.zzmR();
        return this.zzbqq;
    }

    public long zzKr() {
        this.zzbqb.zzmR();
        return this.zzbqs;
    }

    public long zzKs() {
        this.zzbqb.zzmR();
        return this.zzbqt;
    }

    public long zzKt() {
        this.zzbqb.zzmR();
        return this.zzbqu;
    }

    public String zzKu() {
        this.zzbqb.zzmR();
        return this.zzbqv;
    }

    public long zzKv() {
        this.zzbqb.zzmR();
        return this.zzbqw;
    }

    public long zzKw() {
        this.zzbqb.zzmR();
        return this.zzbqx;
    }

    public boolean zzKx() {
        this.zzbqb.zzmR();
        return this.zzbqy;
    }

    public long zzKy() {
        this.zzbqb.zzmR();
        return this.zzbqr;
    }

    public long zzKz() {
        this.zzbqb.zzmR();
        return this.zzbqI;
    }

    public void zzY(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqs != j ? 1 : 0;
        this.zzbqs = j;
    }

    public void zzZ(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqt != j ? 1 : 0;
        this.zzbqt = j;
    }

    public void zzaa(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqu != j ? 1 : 0;
        this.zzbqu = j;
    }

    public void zzab(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqw != j ? 1 : 0;
        this.zzbqw = j;
    }

    public void zzac(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqx != j ? 1 : 0;
        this.zzbqx = j;
    }

    public void zzad(long j) {
        int i = 0;
        zzac.zzaw(j >= 0);
        this.zzbqb.zzmR();
        boolean z = this.zzbqH;
        if (this.zzbqr != j) {
            i = 1;
        }
        this.zzbqH = i | z;
        this.zzbqr = j;
    }

    public void zzae(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqI != j ? 1 : 0;
        this.zzbqI = j;
    }

    public void zzaf(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqJ != j ? 1 : 0;
        this.zzbqJ = j;
    }

    public void zzag(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqA != j ? 1 : 0;
        this.zzbqA = j;
    }

    public void zzah(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqB != j ? 1 : 0;
        this.zzbqB = j;
    }

    public void zzai(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqC != j ? 1 : 0;
        this.zzbqC = j;
    }

    public void zzaj(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqD != j ? 1 : 0;
        this.zzbqD = j;
    }

    public void zzak(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqF != j ? 1 : 0;
        this.zzbqF = j;
    }

    public void zzal(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqE != j ? 1 : 0;
        this.zzbqE = j;
    }

    public void zzam(long j) {
        this.zzbqb.zzmR();
        this.zzbqH |= this.zzbqz != j ? 1 : 0;
        this.zzbqz = j;
    }

    public void zzfd(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzaIU, str) ^ 1;
        this.zzaIU = str;
    }

    public void zzfe(String str) {
        this.zzbqb.zzmR();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzbqH |= zzaut.zzae(this.zzVX, str) ^ 1;
        this.zzVX = str;
    }

    public void zzff(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzbqp, str) ^ 1;
        this.zzbqp = str;
    }

    public void zzfg(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzbqq, str) ^ 1;
        this.zzbqq = str;
    }

    public void zzfh(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzbqv, str) ^ 1;
        this.zzbqv = str;
    }

    public void zzfi(String str) {
        this.zzbqb.zzmR();
        this.zzbqH |= zzaut.zzae(this.zzbqG, str) ^ 1;
        this.zzbqG = str;
    }

    public String zzke() {
        this.zzbqb.zzmR();
        return this.mAppId;
    }

    public String zzmZ() {
        this.zzbqb.zzmR();
        return this.zzacM;
    }

    public long zzuW() {
        this.zzbqb.zzmR();
        return this.zzbqz;
    }
}
