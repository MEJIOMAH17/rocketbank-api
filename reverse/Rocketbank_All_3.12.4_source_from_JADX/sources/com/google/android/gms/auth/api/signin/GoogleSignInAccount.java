package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount extends zza implements ReflectedParcelable {
    public static final Creator<GoogleSignInAccount> CREATOR = new zza();
    public static zze zzajZ = zzi.zzzc();
    private static Comparator<Scope> zzakg = new C05391();
    final int versionCode;
    private String zzGV;
    List<Scope> zzaiN;
    private String zzajB;
    private String zzajl;
    private String zzajm;
    private String zzaka;
    private String zzakb;
    private Uri zzakc;
    private String zzakd;
    private long zzake;
    private String zzakf;

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInAccount$1 */
    class C05391 implements Comparator<Scope> {
        C05391() {
        }

        public final /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((Scope) obj, (Scope) obj2);
        }

        public final int zza(Scope scope, Scope scope2) {
            return scope.zzvt().compareTo(scope2.zzvt());
        }
    }

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.versionCode = i;
        this.zzGV = str;
        this.zzajB = str2;
        this.zzaka = str3;
        this.zzakb = str4;
        this.zzakc = uri;
        this.zzakd = str5;
        this.zzake = j;
        this.zzakf = str6;
        this.zzaiN = list;
        this.zzajl = str7;
        this.zzajm = str8;
    }

    public static GoogleSignInAccount zza(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, (l == null ? Long.valueOf(zzajZ.currentTimeMillis() / 1000) : l).longValue(), zzac.zzdr(str7), new ArrayList((Collection) zzac.zzw(set)), str5, str6);
    }

    public static GoogleSignInAccount zzcv(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        Object optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        Set hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return zza(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).zzcw(jSONObject.optString("serverAuthCode", null));
    }

    private JSONObject zzri() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put("id", getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            if (getPhotoUrl() != null) {
                jSONObject.put("photoUrl", getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.zzake);
            jSONObject.put("obfuscatedIdentifier", zzrf());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zzaiN, zzakg);
            for (Scope zzvt : this.zzaiN) {
                jSONArray.put(zzvt.zzvt());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof GoogleSignInAccount) ? false : ((GoogleSignInAccount) obj).zzrg().equals(zzrg());
    }

    public Account getAccount() {
        return this.zzaka == null ? null : new Account(this.zzaka, "com.google");
    }

    public String getDisplayName() {
        return this.zzakb;
    }

    public String getEmail() {
        return this.zzaka;
    }

    public String getFamilyName() {
        return this.zzajm;
    }

    public String getGivenName() {
        return this.zzajl;
    }

    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.zzaiN);
    }

    public String getId() {
        return this.zzGV;
    }

    public String getIdToken() {
        return this.zzajB;
    }

    public Uri getPhotoUrl() {
        return this.zzakc;
    }

    public String getServerAuthCode() {
        return this.zzakd;
    }

    public int hashCode() {
        return zzrg().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public boolean zza() {
        return zzajZ.currentTimeMillis() / 1000 >= this.zzake - 300;
    }

    public GoogleSignInAccount zzcw(String str) {
        this.zzakd = str;
        return this;
    }

    public long zzre() {
        return this.zzake;
    }

    public String zzrf() {
        return this.zzakf;
    }

    public String zzrg() {
        return zzri().toString();
    }

    public String zzrh() {
        JSONObject zzri = zzri();
        zzri.remove("serverAuthCode");
        return zzri.toString();
    }
}
