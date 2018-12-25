package ru.rocketbank.core.model.push;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Acme.kt */
public final class Acme {
    /* renamed from: a */
    private String f456a;
    private long id;
    @SerializedName("web_auth")
    private WebAuth webAuth;

    public static /* bridge */ /* synthetic */ Acme copy$default(Acme acme, long j, String str, WebAuth webAuth, int i, Object obj) {
        if ((i & 1) != 0) {
            j = acme.id;
        }
        if ((i & 2) != 0) {
            str = acme.f456a;
        }
        if ((i & 4) != 0) {
            webAuth = acme.webAuth;
        }
        return acme.copy(j, str, webAuth);
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.f456a;
    }

    public final WebAuth component3() {
        return this.webAuth;
    }

    public final Acme copy(long j, String str, WebAuth webAuth) {
        return new Acme(j, str, webAuth);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Acme) {
            Acme acme = (Acme) obj;
            return ((this.id > acme.id ? 1 : (this.id == acme.id ? 0 : -1)) == 0) && Intrinsics.areEqual(this.f456a, acme.f456a) && Intrinsics.areEqual(this.webAuth, acme.webAuth);
        }
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.f456a;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        WebAuth webAuth = this.webAuth;
        if (webAuth != null) {
            i2 = webAuth.hashCode();
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Acme(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", a=");
        stringBuilder.append(this.f456a);
        stringBuilder.append(", webAuth=");
        stringBuilder.append(this.webAuth);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Acme(long j, String str, WebAuth webAuth) {
        this.id = j;
        this.f456a = str;
        this.webAuth = webAuth;
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final String getA() {
        return this.f456a;
    }

    public final void setA(String str) {
        this.f456a = str;
    }

    public /* synthetic */ Acme(long j, String str, WebAuth webAuth, int i, Ref ref) {
        if ((i & 1) != null) {
            j = 0;
        }
        if ((i & 4) != 0) {
            webAuth = null;
        }
        this(j, str, webAuth);
    }

    public final WebAuth getWebAuth() {
        return this.webAuth;
    }

    public final void setWebAuth(WebAuth webAuth) {
        this.webAuth = webAuth;
    }
}
