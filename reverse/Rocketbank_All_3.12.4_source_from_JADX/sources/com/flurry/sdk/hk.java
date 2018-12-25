package com.flurry.sdk;

import android.content.Context;
import com.flurry.android.FlurryEventRecordStatus;
import com.flurry.sdk.lj.C0520a;
import java.util.Map;

public class hk implements ki {
    /* renamed from: d */
    private static final String f461d = "hk";
    /* renamed from: a */
    public C1089if f462a;
    /* renamed from: b */
    public ix f463b;
    /* renamed from: c */
    public ih f464c;

    /* renamed from: a */
    public static synchronized hk m375a() {
        hk hkVar;
        synchronized (hk.class) {
            hkVar = (hk) jr.m114a().m117a(hk.class);
        }
        return hkVar;
    }

    /* renamed from: a */
    public final void mo1366a(Context context) {
        ld.m259a(ja.class);
        this.f463b = new ix();
        this.f462a = new C1089if();
        this.f464c = new ih();
        if (!lr.m307a(context, "android.permission.INTERNET")) {
            kf.m183b(f461d, "Application must declare permission: android.permission.INTERNET");
        }
        if (lr.m307a(context, "android.permission.ACCESS_NETWORK_STATE") == null) {
            kf.m190e(f461d, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE");
        }
    }

    /* renamed from: b */
    public final void mo1367b() {
        if (this.f464c != null) {
            this.f464c.m227c();
            this.f464c = null;
        }
        if (this.f463b != null) {
            C0520a c0520a = this.f463b;
            li.m651a().m269b("UseHttps", c0520a);
            li.m651a().m269b("ReportUrl", c0520a);
            this.f463b = null;
        }
        if (this.f462a != null) {
            c0520a = this.f462a;
            jr.m114a().m121c(c0520a.f485a);
            kb.m151a().m160b("com.flurry.android.sdk.NetworkStateEvent", c0520a.f488d);
            kb.m151a().m160b("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", c0520a.f487c);
            kb.m151a().m160b("com.flurry.android.sdk.IdProviderFinishedEvent", c0520a.f486b);
            il.m17b();
            li.m651a().m269b("ProtonEnabled", c0520a);
            this.f462a = null;
        }
        ld.m260b(ja.class);
    }

    /* renamed from: a */
    public static FlurryEventRecordStatus m374a(String str, String str2, Map<String, String> map) {
        ja c = m377c();
        return c != null ? c.m520a(str, jc.m77a(str2), (Map) map) : FlurryEventRecordStatus.kFlurryEventFailed;
    }

    /* renamed from: a */
    public static void m376a(String str, String str2, Throwable th) {
        ja c = m377c();
        if (c != null) {
            c.m527a(str, str2, th.getClass().getName(), th);
        }
    }

    /* renamed from: c */
    public static ja m377c() {
        ld c = lf.m634a().m646c();
        return c == null ? null : (ja) c.m261c(ja.class);
    }
}
