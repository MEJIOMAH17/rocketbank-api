package com.flurry.sdk;

import android.location.Criteria;
import android.location.Location;

public final class li extends lj {
    /* renamed from: a */
    public static final Integer f697a = Integer.valueOf(226);
    /* renamed from: b */
    public static final Integer f698b = Integer.valueOf(6);
    /* renamed from: c */
    public static final Integer f699c = Integer.valueOf(3);
    /* renamed from: d */
    public static final Integer f700d = Integer.valueOf(1);
    /* renamed from: e */
    public static final String f701e = null;
    /* renamed from: f */
    public static final Boolean f702f = Boolean.TRUE;
    /* renamed from: g */
    public static final Boolean f703g = Boolean.TRUE;
    /* renamed from: h */
    public static final String f704h = null;
    /* renamed from: i */
    public static final Boolean f705i = Boolean.TRUE;
    /* renamed from: j */
    public static final Criteria f706j = null;
    /* renamed from: k */
    public static final Location f707k = null;
    /* renamed from: l */
    public static final Long f708l = Long.valueOf(10000);
    /* renamed from: m */
    public static final Boolean f709m = Boolean.TRUE;
    /* renamed from: n */
    public static final Long f710n = null;
    /* renamed from: o */
    public static final Byte f711o = Byte.valueOf((byte) -1);
    /* renamed from: p */
    public static final Boolean f712p = Boolean.FALSE;
    /* renamed from: q */
    public static final String f713q = null;
    /* renamed from: r */
    public static final Boolean f714r = Boolean.TRUE;
    /* renamed from: s */
    private static li f715s;

    /* renamed from: a */
    public static synchronized li m651a() {
        li liVar;
        synchronized (li.class) {
            if (f715s == null) {
                f715s = new li();
            }
            liVar = f715s;
        }
        return liVar;
    }

    /* renamed from: b */
    public static synchronized void m652b() {
        synchronized (li.class) {
            if (f715s != null) {
                f715s.m270c();
            }
            f715s = null;
        }
    }

    private li() {
        m268a("AgentVersion", (Object) f697a);
        m268a("ReleaseMajorVersion", (Object) f698b);
        m268a("ReleaseMinorVersion", (Object) f699c);
        m268a("ReleasePatchVersion", (Object) f700d);
        m268a("ReleaseBetaVersion", (Object) "");
        m268a("VersionName", (Object) f701e);
        m268a("CaptureUncaughtExceptions", (Object) f702f);
        m268a("UseHttps", (Object) f703g);
        m268a("ReportUrl", (Object) f704h);
        m268a("ReportLocation", (Object) f705i);
        m268a("ExplicitLocation", (Object) f707k);
        m268a("ContinueSessionMillis", (Object) f708l);
        m268a("LogEvents", (Object) f709m);
        m268a("Age", (Object) f710n);
        m268a("Gender", (Object) f711o);
        m268a("UserId", (Object) "");
        m268a("ProtonEnabled", (Object) f712p);
        m268a("ProtonConfigUrl", (Object) f713q);
        m268a("analyticsEnabled", (Object) f714r);
    }
}
