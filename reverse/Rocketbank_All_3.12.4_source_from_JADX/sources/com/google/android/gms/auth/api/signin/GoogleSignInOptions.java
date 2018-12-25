package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.auth.api.signin.internal.zzh;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInOptions extends zza implements Optional, ReflectedParcelable {
    public static final Creator<GoogleSignInOptions> CREATOR = new zzb();
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN = new Builder().requestScopes(SCOPE_GAMES, new Scope[0]).build();
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
    public static final Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    private static Comparator<Scope> zzakg = new C05401();
    public static final Scope zzakh = new Scope(Scopes.PROFILE);
    public static final Scope zzaki = new Scope("email");
    public static final Scope zzakj = new Scope("openid");
    final int versionCode;
    private Account zzahh;
    private boolean zzajv;
    private String zzajw;
    private final ArrayList<Scope> zzakk;
    private final boolean zzakl;
    private final boolean zzakm;
    private String zzakn;
    private ArrayList<zzg> zzako;
    private Map<Integer, zzg> zzakp;

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$1 */
    class C05401 implements Comparator<Scope> {
        C05401() {
        }

        public final /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((Scope) obj, (Scope) obj2);
        }

        public final int zza(Scope scope, Scope scope2) {
            return scope.zzvt().compareTo(scope2.zzvt());
        }
    }

    public static final class Builder {
        private Account zzahh;
        private boolean zzajv;
        private String zzajw;
        private boolean zzakl;
        private boolean zzakm;
        private String zzakn;
        private Set<Scope> zzakq = new HashSet();
        private Map<Integer, zzg> zzakr = new HashMap();

        public Builder(GoogleSignInOptions googleSignInOptions) {
            zzac.zzw(googleSignInOptions);
            this.zzakq = new HashSet(googleSignInOptions.zzakk);
            this.zzakl = googleSignInOptions.zzakl;
            this.zzakm = googleSignInOptions.zzakm;
            this.zzajv = googleSignInOptions.zzajv;
            this.zzajw = googleSignInOptions.zzajw;
            this.zzahh = googleSignInOptions.zzahh;
            this.zzakn = googleSignInOptions.zzakn;
            this.zzakr = GoogleSignInOptions.zzx(googleSignInOptions.zzako);
        }

        private String zzcy(String str) {
            boolean z;
            zzac.zzdr(str);
            if (this.zzajw != null) {
                if (!this.zzajw.equals(str)) {
                    z = false;
                    zzac.zzb(z, (Object) "two different server client ids provided");
                    return str;
                }
            }
            z = true;
            zzac.zzb(z, (Object) "two different server client ids provided");
            return str;
        }

        public final Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (this.zzakr.containsKey(Integer.valueOf(1))) {
                throw new IllegalStateException("Only one extension per type may be added");
            }
            this.zzakr.put(Integer.valueOf(1), new zzg(googleSignInOptionsExtension));
            return this;
        }

        public final GoogleSignInOptions build() {
            if (this.zzajv && (this.zzahh == null || !this.zzakq.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.zzakq), this.zzahh, this.zzajv, this.zzakl, this.zzakm, this.zzajw, this.zzakn, this.zzakr);
        }

        public final Builder requestEmail() {
            this.zzakq.add(GoogleSignInOptions.zzaki);
            return this;
        }

        public final Builder requestId() {
            this.zzakq.add(GoogleSignInOptions.zzakj);
            return this;
        }

        public final Builder requestIdToken(String str) {
            this.zzajv = true;
            this.zzajw = zzcy(str);
            return this;
        }

        public final Builder requestProfile() {
            this.zzakq.add(GoogleSignInOptions.zzakh);
            return this;
        }

        public final Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.zzakq.add(scope);
            this.zzakq.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final Builder requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public final Builder requestServerAuthCode(String str, boolean z) {
            this.zzakl = true;
            this.zzajw = zzcy(str);
            this.zzakm = z;
            return this;
        }

        public final Builder setAccountName(String str) {
            this.zzahh = new Account(zzac.zzdr(str), "com.google");
            return this;
        }

        public final Builder setHostedDomain(String str) {
            this.zzakn = zzac.zzdr(str);
            return this;
        }
    }

    GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<zzg> arrayList2) {
        this(i, (ArrayList) arrayList, account, z, z2, z3, str, str2, zzx(arrayList2));
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, zzg> map) {
        this.versionCode = i;
        this.zzakk = arrayList;
        this.zzahh = account;
        this.zzajv = z;
        this.zzakl = z2;
        this.zzakm = z3;
        this.zzajw = str;
        this.zzakn = str2;
        this.zzako = new ArrayList(map.values());
        this.zzakp = map;
    }

    public static GoogleSignInOptions zzcx(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        Collection hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        Object optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap());
    }

    private JSONObject zzri() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zzakk, zzakg);
            Iterator it = this.zzakk.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).zzvt());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.zzahh != null) {
                jSONObject.put("accountName", this.zzahh.name);
            }
            jSONObject.put("idTokenRequested", this.zzajv);
            jSONObject.put("forceCodeForRefreshToken", this.zzakm);
            jSONObject.put("serverAuthRequested", this.zzakl);
            if (!TextUtils.isEmpty(this.zzajw)) {
                jSONObject.put("serverClientId", this.zzajw);
            }
            if (!TextUtils.isEmpty(this.zzakn)) {
                jSONObject.put("hostedDomain", this.zzakn);
            }
            return jSONObject;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    private static Map<Integer, zzg> zzx(List<zzg> list) {
        Map<Integer, zzg> hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (zzg zzg : list) {
            hashMap.put(Integer.valueOf(zzg.getType()), zzg);
        }
        return hashMap;
    }

    public boolean equals(java.lang.Object r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = 0;
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4;	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r3.zzako;	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 > 0) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x000e:
        r1 = r4.zzako;	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 <= 0) goto L_0x0017;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0016:
        return r0;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0017:
        r1 = r3.zzakk;	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.zzrj();	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r2.size();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != r2) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0027:
        r1 = r3.zzakk;	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.zzrj();	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.containsAll(r2);	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != 0) goto L_0x0034;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0033:
        return r0;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0034:
        r1 = r3.zzahh;	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != 0) goto L_0x003f;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0038:
        r1 = r4.getAccount();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != 0) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x003e:
        goto L_0x004b;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x003f:
        r1 = r3.zzahh;	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.getAccount();	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.equals(r2);	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 == 0) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x004b:
        r1 = r3.zzajw;	 Catch:{ ClassCastException -> 0x0084 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 == 0) goto L_0x005e;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0053:
        r1 = r4.getServerClientId();	 Catch:{ ClassCastException -> 0x0084 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 == 0) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x005d:
        goto L_0x006a;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x005e:
        r1 = r3.zzajw;	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.getServerClientId();	 Catch:{ ClassCastException -> 0x0084 }
        r1 = r1.equals(r2);	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 == 0) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x006a:
        r1 = r3.zzakm;	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.zzrl();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != r2) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x0072:
        r1 = r3.zzajv;	 Catch:{ ClassCastException -> 0x0084 }
        r2 = r4.isIdTokenRequested();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != r2) goto L_0x0084;	 Catch:{ ClassCastException -> 0x0084 }
    L_0x007a:
        r1 = r3.zzakl;	 Catch:{ ClassCastException -> 0x0084 }
        r4 = r4.zzrk();	 Catch:{ ClassCastException -> 0x0084 }
        if (r1 != r4) goto L_0x0084;
    L_0x0082:
        r4 = 1;
        return r4;
    L_0x0084:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public Account getAccount() {
        return this.zzahh;
    }

    public Scope[] getScopeArray() {
        return (Scope[]) this.zzakk.toArray(new Scope[this.zzakk.size()]);
    }

    public String getServerClientId() {
        return this.zzajw;
    }

    public int hashCode() {
        List arrayList = new ArrayList();
        Iterator it = this.zzakk.iterator();
        while (it.hasNext()) {
            arrayList.add(((Scope) it.next()).zzvt());
        }
        Collections.sort(arrayList);
        return new zzh().zzq(arrayList).zzq(this.zzahh).zzq(this.zzajw).zzad(this.zzakm).zzad(this.zzajv).zzad(this.zzakl).zzru();
    }

    public boolean isIdTokenRequested() {
        return this.zzajv;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public String zzrg() {
        return zzri().toString();
    }

    public ArrayList<Scope> zzrj() {
        return new ArrayList(this.zzakk);
    }

    public boolean zzrk() {
        return this.zzakl;
    }

    public boolean zzrl() {
        return this.zzakm;
    }

    public String zzrm() {
        return this.zzakn;
    }

    public ArrayList<zzg> zzrn() {
        return this.zzako;
    }
}
