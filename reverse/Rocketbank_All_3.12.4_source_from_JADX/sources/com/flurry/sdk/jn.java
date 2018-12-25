package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.flurry.sdk.lj.C0520a;

public class jn implements C0520a {
    /* renamed from: a */
    private static jn f621a = null;
    /* renamed from: b */
    private static final String f622b = "jn";
    /* renamed from: c */
    private String f623c;
    /* renamed from: d */
    private String f624d;

    /* renamed from: h */
    public static String m572h() {
        return "";
    }

    /* renamed from: a */
    public static synchronized jn m564a() {
        jn jnVar;
        synchronized (jn.class) {
            if (f621a == null) {
                f621a = new jn();
            }
            jnVar = f621a;
        }
        return jnVar;
    }

    /* renamed from: b */
    public static void m566b() {
        if (f621a != null) {
            li.m651a().m269b("VersionName", f621a);
        }
        f621a = null;
    }

    private jn() {
        lj a = li.m651a();
        this.f623c = (String) a.m266a("VersionName");
        a.m267a("VersionName", (C0520a) this);
        String str = f622b;
        StringBuilder stringBuilder = new StringBuilder("initSettings, VersionName = ");
        stringBuilder.append(this.f623c);
        kf.m176a(4, str, stringBuilder.toString());
    }

    /* renamed from: c */
    public static String m567c() {
        return VERSION.RELEASE;
    }

    /* renamed from: d */
    public static String m568d() {
        return Build.DEVICE;
    }

    /* renamed from: e */
    public static String m569e() {
        return Build.ID;
    }

    /* renamed from: f */
    public static String m570f() {
        return Build.MANUFACTURER;
    }

    /* renamed from: g */
    public static String m571g() {
        return Build.MODEL;
    }

    /* renamed from: a */
    public static java.lang.String m565a(android.content.Context r2) {
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
        r0 = r2.getPackageManager();
        if (r0 == 0) goto L_0x0015;
    L_0x0006:
        r2 = r2.getPackageName();	 Catch:{ NameNotFoundException -> 0x0012 }
        r1 = 0;	 Catch:{ NameNotFoundException -> 0x0012 }
        r2 = r0.getPackageInfo(r2, r1);	 Catch:{ NameNotFoundException -> 0x0012 }
        r2 = r2.versionName;	 Catch:{ NameNotFoundException -> 0x0012 }
        goto L_0x0016;
    L_0x0012:
        r2 = "unknown";
        goto L_0x0016;
    L_0x0015:
        r2 = 0;
    L_0x0016:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.jn.a(android.content.Context):java.lang.String");
    }

    /* renamed from: i */
    public final synchronized String m575i() {
        if (!TextUtils.isEmpty(this.f623c)) {
            return this.f623c;
        } else if (TextUtils.isEmpty(this.f624d)) {
            this.f624d = m573j();
            return this.f624d;
        } else {
            return this.f624d;
        }
    }

    /* renamed from: j */
    private static String m573j() {
        try {
            Context context = jr.m114a().f293a;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo.versionName != null) {
                return packageInfo.versionName;
            }
            if (packageInfo.versionCode != 0) {
                return Integer.toString(packageInfo.versionCode);
            }
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        } catch (Throwable th) {
            kf.m177a(6, f622b, "", th);
        }
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        if (str.equals("VersionName") != null) {
            this.f623c = (String) obj;
            String str2 = f622b;
            StringBuilder stringBuilder = new StringBuilder("onSettingUpdate, VersionName = ");
            stringBuilder.append(this.f623c);
            kf.m176a(4, str2, stringBuilder.toString());
            return;
        }
        kf.m176a(6, f622b, "onSettingUpdate internal error!");
    }
}
