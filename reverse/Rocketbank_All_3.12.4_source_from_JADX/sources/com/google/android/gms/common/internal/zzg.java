package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbaj;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzg {
    private final Set<Scope> zzaFA;
    private final Map<Api<?>, zza> zzaFB;
    private final zzbaj zzaFC;
    private Integer zzaFD;
    private final Account zzahh;
    private final String zzaiq;
    private final Set<Scope> zzazd;
    private final int zzazf;
    private final View zzazg;
    private final String zzazh;

    public static final class zza {
        public final Set<Scope> zzakq;

        public zza(Set<Scope> set) {
            zzac.zzw(set);
            this.zzakq = Collections.unmodifiableSet(set);
        }
    }

    public zzg(Account account, Set<Scope> set, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzbaj zzbaj) {
        Map map2;
        this.zzahh = account;
        this.zzazd = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        if (map == null) {
            map2 = Collections.EMPTY_MAP;
        }
        this.zzaFB = map2;
        this.zzazg = view;
        this.zzazf = i;
        this.zzaiq = str;
        this.zzazh = str2;
        this.zzaFC = zzbaj;
        Set hashSet = new HashSet(this.zzazd);
        for (zza zza : this.zzaFB.values()) {
            hashSet.addAll(zza.zzakq);
        }
        this.zzaFA = Collections.unmodifiableSet(hashSet);
    }

    public static zzg zzaS(Context context) {
        return new Builder(context).zzvp();
    }

    public final Account getAccount() {
        return this.zzahh;
    }

    @Deprecated
    public final String getAccountName() {
        return this.zzahh != null ? this.zzahh.name : null;
    }

    public final Set<Scope> zzc(Api<?> api) {
        zza zza = (zza) this.zzaFB.get(api);
        if (zza != null) {
            if (!zza.zzakq.isEmpty()) {
                Set<Scope> hashSet = new HashSet(this.zzazd);
                hashSet.addAll(zza.zzakq);
                return hashSet;
            }
        }
        return this.zzazd;
    }

    public final void zzc(Integer num) {
        this.zzaFD = num;
    }

    public final Account zzxB() {
        return this.zzahh != null ? this.zzahh : new Account("<<default account>>", "com.google");
    }

    public final int zzxK() {
        return this.zzazf;
    }

    public final Set<Scope> zzxL() {
        return this.zzazd;
    }

    public final Set<Scope> zzxM() {
        return this.zzaFA;
    }

    public final Map<Api<?>, zza> zzxN() {
        return this.zzaFB;
    }

    public final String zzxO() {
        return this.zzaiq;
    }

    public final String zzxP() {
        return this.zzazh;
    }

    public final View zzxQ() {
        return this.zzazg;
    }

    public final zzbaj zzxR() {
        return this.zzaFC;
    }

    public final Integer zzxS() {
        return this.zzaFD;
    }
}
