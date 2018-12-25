package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.flurry.sdk.id.C1078a;
import com.flurry.sdk.im.C1096a;
import com.flurry.sdk.lj.C0520a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* renamed from: com.flurry.sdk.if */
public class C1089if implements C0520a {
    /* renamed from: e */
    private static final String f483e = "if";
    /* renamed from: f */
    private static String f484f = "https://proton.flurry.com/sdk/v1/config";
    /* renamed from: a */
    public final Runnable f485a = new C10791(this);
    /* renamed from: b */
    public final ka<jf> f486b = new C10834(this);
    /* renamed from: c */
    public final ka<jg> f487c = new C10845(this);
    /* renamed from: d */
    public final ka<jj> f488d = new C10856(this);
    /* renamed from: g */
    private final kj<hr> f489g = new kj("proton config request", new ir());
    /* renamed from: h */
    private final kj<hs> f490h = new kj("proton config response", new is());
    /* renamed from: i */
    private jy<id> f491i;
    /* renamed from: j */
    private jy<List<im>> f492j;
    /* renamed from: k */
    private final ie f493k = new ie();
    /* renamed from: l */
    private final jw<String, hv> f494l = new jw();
    /* renamed from: m */
    private final List<im> f495m = new ArrayList();
    /* renamed from: n */
    private boolean f496n;
    /* renamed from: o */
    private String f497o;
    /* renamed from: p */
    private boolean f498p = true;
    /* renamed from: q */
    private boolean f499q;
    /* renamed from: r */
    private long f500r = 10000;
    /* renamed from: s */
    private long f501s;
    /* renamed from: t */
    private boolean f502t;
    /* renamed from: u */
    private hs f503u;
    /* renamed from: v */
    private boolean f504v;

    /* renamed from: com.flurry.sdk.if$1 */
    class C10791 extends lw {
        /* renamed from: a */
        final /* synthetic */ C1089if f470a;

        C10791(C1089if c1089if) {
            this.f470a = c1089if;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f470a.m413f();
        }
    }

    /* renamed from: com.flurry.sdk.if$3 */
    class C10823 extends lw {
        /* renamed from: a */
        final /* synthetic */ C1089if f476a;

        C10823(C1089if c1089if) {
            this.f476a = c1089if;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f476a.m413f();
        }
    }

    /* renamed from: com.flurry.sdk.if$4 */
    class C10834 implements ka<jf> {
        /* renamed from: a */
        final /* synthetic */ C1089if f477a;

        C10834(C1089if c1089if) {
            this.f477a = c1089if;
        }

        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1365a(jz jzVar) {
            this.f477a.m413f();
        }
    }

    /* renamed from: com.flurry.sdk.if$5 */
    class C10845 implements ka<jg> {
        /* renamed from: a */
        final /* synthetic */ C1089if f478a;

        C10845(C1089if c1089if) {
            this.f478a = c1089if;
        }

        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1365a(jz jzVar) {
            this.f478a.m413f();
        }
    }

    /* renamed from: com.flurry.sdk.if$6 */
    class C10856 implements ka<jj> {
        /* renamed from: a */
        final /* synthetic */ C1089if f479a;

        C10856(C1089if c1089if) {
            this.f479a = c1089if;
        }

        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1365a(jz jzVar) {
            if (((jj) jzVar).f619a != null) {
                this.f479a.m413f();
            }
        }
    }

    /* renamed from: com.flurry.sdk.if$7 */
    class C10867 implements lc<id> {
        /* renamed from: a */
        final /* synthetic */ C1089if f480a;

        C10867(C1089if c1089if) {
            this.f480a = c1089if;
        }

        /* renamed from: a */
        public final kz<id> mo1372a(int i) {
            return new C1078a();
        }
    }

    /* renamed from: com.flurry.sdk.if$8 */
    class C10878 implements lc<List<im>> {
        /* renamed from: a */
        final /* synthetic */ C1089if f481a;

        C10878(C1089if c1089if) {
            this.f481a = c1089if;
        }

        /* renamed from: a */
        public final kz<List<im>> mo1372a(int i) {
            return new ky(new C1096a());
        }
    }

    /* renamed from: com.flurry.sdk.if$9 */
    class C10889 extends lw {
        /* renamed from: a */
        final /* synthetic */ C1089if f482a;

        C10889(C1089if c1089if) {
            this.f482a = c1089if;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f482a.m419i();
        }
    }

    public C1089if() {
        lj a = li.m651a();
        this.f496n = ((Boolean) a.m266a("ProtonEnabled")).booleanValue();
        a.m267a("ProtonEnabled", (C0520a) this);
        String str = f483e;
        StringBuilder stringBuilder = new StringBuilder("initSettings, protonEnabled = ");
        stringBuilder.append(this.f496n);
        kf.m176a(4, str, stringBuilder.toString());
        this.f497o = (String) a.m266a("ProtonConfigUrl");
        a.m267a("ProtonConfigUrl", (C0520a) this);
        str = f483e;
        stringBuilder = new StringBuilder("initSettings, protonConfigUrl = ");
        stringBuilder.append(this.f497o);
        kf.m176a(4, str, stringBuilder.toString());
        this.f498p = ((Boolean) a.m266a("analyticsEnabled")).booleanValue();
        a.m267a("analyticsEnabled", (C0520a) this);
        String str2 = f483e;
        StringBuilder stringBuilder2 = new StringBuilder("initSettings, AnalyticsEnabled = ");
        stringBuilder2.append(this.f498p);
        kf.m176a(4, str2, stringBuilder2.toString());
        kb.m151a().m158a("com.flurry.android.sdk.IdProviderFinishedEvent", this.f486b);
        kb.m151a().m158a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.f487c);
        kb.m151a().m158a("com.flurry.android.sdk.NetworkStateEvent", this.f488d);
        Context context = jr.m114a().f293a;
        stringBuilder = new StringBuilder(".yflurryprotonconfig.");
        stringBuilder.append(Long.toString(lr.m319i(jr.m114a().f296d), 16));
        this.f491i = new jy(context.getFileStreamPath(stringBuilder.toString()), ".yflurryprotonconfig.", 1, new C10867(this));
        context = jr.m114a().f293a;
        stringBuilder = new StringBuilder(".yflurryprotonreport.");
        stringBuilder.append(Long.toString(lr.m319i(jr.m114a().f296d), 16));
        this.f492j = new jy(context.getFileStreamPath(stringBuilder.toString()), ".yflurryprotonreport.", 1, new C10878(this));
        jr.m114a().m120b(new C10889(this));
        jr.m114a().m120b(new lw(this) {
            /* renamed from: a */
            final /* synthetic */ C1089if f468a;

            {
                this.f468a = r1;
            }

            /* renamed from: a */
            public final void mo1370a() {
                this.f468a.m424k();
            }
        });
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        int hashCode = str.hashCode();
        if (hashCode != -1720015653) {
            if (hashCode != 640941243) {
                if (hashCode == 1591403975) {
                    if (str.equals("ProtonConfigUrl") != null) {
                        str = true;
                        switch (str) {
                            case null:
                                this.f496n = ((Boolean) obj).booleanValue();
                                str = f483e;
                                obj = new StringBuilder("onSettingUpdate, protonEnabled = ");
                                obj.append(this.f496n);
                                kf.m176a(4, str, obj.toString());
                                return;
                            case 1:
                                this.f497o = (String) obj;
                                str = f483e;
                                obj = new StringBuilder("onSettingUpdate, protonConfigUrl = ");
                                obj.append(this.f497o);
                                kf.m176a(4, str, obj.toString());
                                return;
                            case 2:
                                this.f498p = ((Boolean) obj).booleanValue();
                                str = f483e;
                                obj = new StringBuilder("onSettingUpdate, AnalyticsEnabled = ");
                                obj.append(this.f498p);
                                kf.m176a(4, str, obj.toString());
                                return;
                            default:
                                kf.m176a(6, f483e, "onSettingUpdate internal error!");
                                return;
                        }
                    }
                }
            } else if (str.equals("ProtonEnabled") != null) {
                str = null;
                switch (str) {
                    case null:
                        this.f496n = ((Boolean) obj).booleanValue();
                        str = f483e;
                        obj = new StringBuilder("onSettingUpdate, protonEnabled = ");
                        obj.append(this.f496n);
                        kf.m176a(4, str, obj.toString());
                        return;
                    case 1:
                        this.f497o = (String) obj;
                        str = f483e;
                        obj = new StringBuilder("onSettingUpdate, protonConfigUrl = ");
                        obj.append(this.f497o);
                        kf.m176a(4, str, obj.toString());
                        return;
                    case 2:
                        this.f498p = ((Boolean) obj).booleanValue();
                        str = f483e;
                        obj = new StringBuilder("onSettingUpdate, AnalyticsEnabled = ");
                        obj.append(this.f498p);
                        kf.m176a(4, str, obj.toString());
                        return;
                    default:
                        kf.m176a(6, f483e, "onSettingUpdate internal error!");
                        return;
                }
            }
        } else if (str.equals("analyticsEnabled") != null) {
            str = 2;
            switch (str) {
                case null:
                    this.f496n = ((Boolean) obj).booleanValue();
                    str = f483e;
                    obj = new StringBuilder("onSettingUpdate, protonEnabled = ");
                    obj.append(this.f496n);
                    kf.m176a(4, str, obj.toString());
                    return;
                case 1:
                    this.f497o = (String) obj;
                    str = f483e;
                    obj = new StringBuilder("onSettingUpdate, protonConfigUrl = ");
                    obj.append(this.f497o);
                    kf.m176a(4, str, obj.toString());
                    return;
                case 2:
                    this.f498p = ((Boolean) obj).booleanValue();
                    str = f483e;
                    obj = new StringBuilder("onSettingUpdate, AnalyticsEnabled = ");
                    obj.append(this.f498p);
                    kf.m176a(4, str, obj.toString());
                    return;
                default:
                    kf.m176a(6, f483e, "onSettingUpdate internal error!");
                    return;
            }
        }
        str = -1;
        switch (str) {
            case null:
                this.f496n = ((Boolean) obj).booleanValue();
                str = f483e;
                obj = new StringBuilder("onSettingUpdate, protonEnabled = ");
                obj.append(this.f496n);
                kf.m176a(4, str, obj.toString());
                return;
            case 1:
                this.f497o = (String) obj;
                str = f483e;
                obj = new StringBuilder("onSettingUpdate, protonConfigUrl = ");
                obj.append(this.f497o);
                kf.m176a(4, str, obj.toString());
                return;
            case 2:
                this.f498p = ((Boolean) obj).booleanValue();
                str = f483e;
                obj = new StringBuilder("onSettingUpdate, AnalyticsEnabled = ");
                obj.append(this.f498p);
                kf.m176a(4, str, obj.toString());
                return;
            default:
                kf.m176a(6, f483e, "onSettingUpdate internal error!");
                return;
        }
    }

    /* renamed from: a */
    public final synchronized void m427a() {
        if (this.f496n) {
            lr.m312b();
            jd.m535a();
            ih.f509a = jd.m537d();
            this.f504v = false;
            m413f();
        }
    }

    /* renamed from: b */
    public final synchronized void m431b() {
        if (this.f496n) {
            lr.m312b();
            jd.m535a();
            m404b(jd.m537d());
            m422j();
        }
    }

    /* renamed from: a */
    public final synchronized void m428a(long j) {
        if (this.f496n) {
            lr.m312b();
            m404b(j);
            m406b("flurry.session_end", null);
            jr.m114a().m120b(new lw(this) {
                /* renamed from: a */
                final /* synthetic */ C1089if f469a;

                {
                    this.f469a = r1;
                }

                /* renamed from: a */
                public final void mo1370a() {
                    this.f469a.m425l();
                }
            });
        }
    }

    /* renamed from: c */
    public final synchronized void m432c() {
        if (this.f496n) {
            lr.m312b();
            m422j();
        }
    }

    /* renamed from: a */
    public final synchronized void m430a(String str, Map<String, String> map) {
        if (this.f496n) {
            lr.m312b();
            m406b(str, (Map) map);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: e */
    private synchronized void m412e() {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.f496n;	 Catch:{ all -> 0x0034 }
        if (r0 != 0) goto L_0x0007;
    L_0x0005:
        monitor-exit(r4);
        return;
    L_0x0007:
        com.flurry.sdk.lr.m312b();	 Catch:{ all -> 0x0034 }
        r0 = com.flurry.sdk.jr.m114a();	 Catch:{ all -> 0x0034 }
        r0 = r0.f293a;	 Catch:{ all -> 0x0034 }
        r1 = "FLURRY_SHARED_PREFERENCES";
        r2 = 0;
        r0 = r0.getSharedPreferences(r1, r2);	 Catch:{ all -> 0x0034 }
        r1 = "com.flurry.android.flurryAppInstall";
        r3 = 1;
        r1 = r0.getBoolean(r1, r3);	 Catch:{ all -> 0x0034 }
        if (r1 == 0) goto L_0x0032;
    L_0x0020:
        r1 = "flurry.app_install";
        r3 = 0;
        r4.m406b(r1, r3);	 Catch:{ all -> 0x0034 }
        r0 = r0.edit();	 Catch:{ all -> 0x0034 }
        r1 = "com.flurry.android.flurryAppInstall";
        r0.putBoolean(r1, r2);	 Catch:{ all -> 0x0034 }
        r0.apply();	 Catch:{ all -> 0x0034 }
    L_0x0032:
        monitor-exit(r4);
        return;
    L_0x0034:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.if.e():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: f */
    private synchronized void m413f() {
        /*
        r19 = this;
        r1 = r19;
        monitor-enter(r19);
        r2 = r1.f496n;	 Catch:{ all -> 0x00f3 }
        if (r2 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r19);
        return;
    L_0x0009:
        com.flurry.sdk.lr.m312b();	 Catch:{ all -> 0x00f3 }
        r2 = r1.f499q;	 Catch:{ all -> 0x00f3 }
        if (r2 != 0) goto L_0x0012;
    L_0x0010:
        monitor-exit(r19);
        return;
    L_0x0012:
        r2 = com.flurry.sdk.je.m79a();	 Catch:{ all -> 0x00f3 }
        r2 = r2.m88c();	 Catch:{ all -> 0x00f3 }
        if (r2 != 0) goto L_0x001e;
    L_0x001c:
        monitor-exit(r19);
        return;
    L_0x001e:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x00f3 }
        r4 = com.flurry.sdk.je.m79a();	 Catch:{ all -> 0x00f3 }
        r4 = r4.m89d();	 Catch:{ all -> 0x00f3 }
        r5 = 1;
        r4 = r4 ^ r5;
        r6 = r1.f503u;	 Catch:{ all -> 0x00f3 }
        r7 = 3;
        if (r6 == 0) goto L_0x0086;
    L_0x0031:
        r6 = r1.f502t;	 Catch:{ all -> 0x00f3 }
        r8 = 0;
        if (r6 == r4) goto L_0x0040;
    L_0x0036:
        r5 = f483e;	 Catch:{ all -> 0x00f3 }
        r6 = "Limit ad tracking value has changed, purging";
        com.flurry.sdk.kf.m176a(r7, r5, r6);	 Catch:{ all -> 0x00f3 }
        r1.f503u = r8;	 Catch:{ all -> 0x00f3 }
        goto L_0x0086;
    L_0x0040:
        r9 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x00f3 }
        r11 = r1.f501s;	 Catch:{ all -> 0x00f3 }
        r6 = r1.f503u;	 Catch:{ all -> 0x00f3 }
        r13 = r6.f71b;	 Catch:{ all -> 0x00f3 }
        r15 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r13 = r13 * r15;
        r17 = r11 + r13;
        r6 = (r9 > r17 ? 1 : (r9 == r17 ? 0 : -1));
        if (r6 >= 0) goto L_0x0067;
    L_0x0053:
        r2 = f483e;	 Catch:{ all -> 0x00f3 }
        r3 = "Cached Proton config valid, no need to refresh";
        com.flurry.sdk.kf.m176a(r7, r2, r3);	 Catch:{ all -> 0x00f3 }
        r2 = r1.f504v;	 Catch:{ all -> 0x00f3 }
        if (r2 != 0) goto L_0x0065;
    L_0x005e:
        r1.f504v = r5;	 Catch:{ all -> 0x00f3 }
        r2 = "flurry.session_start";
        r1.m406b(r2, r8);	 Catch:{ all -> 0x00f3 }
    L_0x0065:
        monitor-exit(r19);
        return;
    L_0x0067:
        r5 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x00f3 }
        r9 = r1.f501s;	 Catch:{ all -> 0x00f3 }
        r11 = r1.f503u;	 Catch:{ all -> 0x00f3 }
        r11 = r11.f72c;	 Catch:{ all -> 0x00f3 }
        r11 = r11 * r15;
        r13 = r9 + r11;
        r9 = (r5 > r13 ? 1 : (r5 == r13 ? 0 : -1));
        if (r9 < 0) goto L_0x0086;
    L_0x0078:
        r5 = f483e;	 Catch:{ all -> 0x00f3 }
        r6 = "Cached Proton config expired, purging";
        com.flurry.sdk.kf.m176a(r7, r5, r6);	 Catch:{ all -> 0x00f3 }
        r1.f503u = r8;	 Catch:{ all -> 0x00f3 }
        r5 = r1.f494l;	 Catch:{ all -> 0x00f3 }
        r5.m136a();	 Catch:{ all -> 0x00f3 }
    L_0x0086:
        r5 = com.flurry.sdk.jp.m576a();	 Catch:{ all -> 0x00f3 }
        r5.m170a(r1);	 Catch:{ all -> 0x00f3 }
        r5 = f483e;	 Catch:{ all -> 0x00f3 }
        r6 = "Requesting proton config";
        com.flurry.sdk.kf.m176a(r7, r5, r6);	 Catch:{ all -> 0x00f3 }
        r5 = r19.m416g();	 Catch:{ all -> 0x00f3 }
        if (r5 != 0) goto L_0x009c;
    L_0x009a:
        monitor-exit(r19);
        return;
    L_0x009c:
        r6 = new com.flurry.sdk.kl;	 Catch:{ all -> 0x00f3 }
        r6.<init>();	 Catch:{ all -> 0x00f3 }
        r7 = r1.f497o;	 Catch:{ all -> 0x00f3 }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ all -> 0x00f3 }
        if (r7 == 0) goto L_0x00ac;
    L_0x00a9:
        r7 = f484f;	 Catch:{ all -> 0x00f3 }
        goto L_0x00ae;
    L_0x00ac:
        r7 = r1.f497o;	 Catch:{ all -> 0x00f3 }
    L_0x00ae:
        r6.f727f = r7;	 Catch:{ all -> 0x00f3 }
        r7 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r6.f717w = r7;	 Catch:{ all -> 0x00f3 }
        r7 = com.flurry.sdk.kn.C0506a.kPost;	 Catch:{ all -> 0x00f3 }
        r6.f728g = r7;	 Catch:{ all -> 0x00f3 }
        r7 = "Content-Type";
        r8 = "application/x-flurry;version=2";
        r6.m663a(r7, r8);	 Catch:{ all -> 0x00f3 }
        r7 = "Accept";
        r8 = "application/x-flurry;version=2";
        r6.m663a(r7, r8);	 Catch:{ all -> 0x00f3 }
        r7 = "FM-Checksum";
        r8 = com.flurry.sdk.kj.m198a(r5);	 Catch:{ all -> 0x00f3 }
        r8 = java.lang.Integer.toString(r8);	 Catch:{ all -> 0x00f3 }
        r6.m663a(r7, r8);	 Catch:{ all -> 0x00f3 }
        r7 = new com.flurry.sdk.kv;	 Catch:{ all -> 0x00f3 }
        r7.<init>();	 Catch:{ all -> 0x00f3 }
        r6.f747c = r7;	 Catch:{ all -> 0x00f3 }
        r7 = new com.flurry.sdk.kv;	 Catch:{ all -> 0x00f3 }
        r7.<init>();	 Catch:{ all -> 0x00f3 }
        r6.f748d = r7;	 Catch:{ all -> 0x00f3 }
        r6.f746b = r5;	 Catch:{ all -> 0x00f3 }
        r5 = new com.flurry.sdk.if$2;	 Catch:{ all -> 0x00f3 }
        r5.<init>(r1, r2, r4);	 Catch:{ all -> 0x00f3 }
        r6.f745a = r5;	 Catch:{ all -> 0x00f3 }
        r2 = com.flurry.sdk.jp.m576a();	 Catch:{ all -> 0x00f3 }
        r2.m171a(r1, r6);	 Catch:{ all -> 0x00f3 }
        monitor-exit(r19);
        return;
    L_0x00f3:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r19);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.if.f():void");
    }

    /* renamed from: g */
    private byte[] m416g() {
        try {
            Object hrVar = new hr();
            hrVar.f59a = jr.m114a().f296d;
            hrVar.f60b = lo.m282a(jr.m114a().f293a);
            hrVar.f61c = lo.m283b(jr.m114a().f293a);
            hrVar.f62d = js.m122a();
            hrVar.f63e = 3;
            jn.m564a();
            hrVar.f64f = jn.m567c();
            hrVar.f65g = je.m79a().m89d() ^ 1;
            hrVar.f66h = new hu();
            hrVar.f66h.f78a = new ho();
            hrVar.f66h.f78a.f38a = Build.MODEL;
            hrVar.f66h.f78a.f39b = Build.BRAND;
            hrVar.f66h.f78a.f40c = Build.ID;
            hrVar.f66h.f78a.f41d = Build.DEVICE;
            hrVar.f66h.f78a.f42e = Build.PRODUCT;
            hrVar.f66h.f78a.f43f = VERSION.RELEASE;
            hrVar.f67i = new ArrayList();
            for (Entry entry : Collections.unmodifiableMap(je.m79a().f251a).entrySet()) {
                ht htVar = new ht();
                htVar.f76a = ((jm) entry.getKey()).f274c;
                if (((jm) entry.getKey()).f275d) {
                    htVar.f77b = new String((byte[]) entry.getValue());
                } else {
                    htVar.f77b = lr.m311b((byte[]) entry.getValue());
                }
                hrVar.f67i.add(htVar);
            }
            Location e = ji.m552a().m563e();
            if (e != null) {
                hrVar.f68j = new hy();
                hrVar.f68j.f84a = new hx();
                hrVar.f68j.f84a.f81a = lr.m300a(e.getLatitude());
                hrVar.f68j.f84a.f82b = lr.m300a(e.getLongitude());
                hrVar.f68j.f84a.f83c = (float) lr.m300a((double) e.getAccuracy());
            }
            String str = (String) li.m651a().m266a("UserId");
            if (!str.equals("")) {
                hrVar.f69k = new ib();
                hrVar.f69k.f95a = str;
            }
            return this.f489g.m201a(hrVar);
        } catch (Exception e2) {
            kf.m176a(5, f483e, "Proton config request failed with exception: ".concat(String.valueOf(e2)));
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m407b(hs hsVar) {
        if (hsVar == null) {
            return false;
        }
        boolean z;
        hq hqVar = hsVar.f74e;
        if (!(hqVar == null || hqVar.f54a == null)) {
            for (int i = 0; i < hqVar.f54a.size(); i++) {
                hp hpVar = (hp) hqVar.f54a.get(i);
                if (hpVar != null) {
                    if (!hpVar.f45b.equals("") && hpVar.f44a != -1 && !hpVar.f48e.equals("")) {
                        boolean z2;
                        List<hv> list = hpVar.f46c;
                        if (list != null) {
                            for (hv hvVar : list) {
                                if (hvVar.f79a.equals("")) {
                                    kf.m176a(3, f483e, "An event is missing a name");
                                } else if ((hvVar instanceof hw) && ((hw) hvVar).f465c.equals("")) {
                                    kf.m176a(3, f483e, "An event trigger is missing a param name");
                                }
                                z2 = false;
                            }
                        }
                        z2 = true;
                        if (z2) {
                        }
                    }
                    kf.m176a(3, f483e, "A callback template is missing required values");
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            if (hsVar.f74e == null || hsVar.f74e.f58e == null || hsVar.f74e.f58e.equals("") == null) {
                return true;
            }
        }
        kf.m176a(3, f483e, "Config response is missing required values.");
        return false;
    }

    /* renamed from: h */
    private void m417h() {
        if (this.f503u != null) {
            kf.m176a(5, f483e, "Processing config response");
            il.m16a(this.f503u.f74e.f56c);
            il.m18b(this.f503u.f74e.f57d * 1000);
            in a = in.m58a();
            String str = this.f503u.f74e.f58e;
            if (!(str == null || str.endsWith(".do"))) {
                kf.m176a(5, in.f164b, "overriding analytics agent report URL without an endpoint, are you sure?");
            }
            a.f166a = str;
            if (this.f496n) {
                li.m651a().m268a("analyticsEnabled", (Object) Boolean.valueOf(this.f503u.f75f.f97b));
            }
            this.f494l.m136a();
            hq hqVar = this.f503u.f74e;
            if (hqVar != null) {
                List<hp> list = hqVar.f54a;
                if (list != null) {
                    for (hp hpVar : list) {
                        if (hpVar != null) {
                            List<Object> list2 = hpVar.f46c;
                            if (list2 != null) {
                                for (Object obj : list2) {
                                    if (!(obj == null || TextUtils.isEmpty(obj.f79a))) {
                                        obj.f80b = hpVar;
                                        this.f494l.m138a(obj.f79a, obj);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private synchronized void m406b(java.lang.String r35, java.util.Map<java.lang.String, java.lang.String> r36) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:37)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:61)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
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
        r34 = this;
        r1 = r34;
        r11 = r35;
        r2 = r36;
        monitor-enter(r34);
        r3 = f483e;	 Catch:{ all -> 0x021d }
        r4 = "Event triggered: ";	 Catch:{ all -> 0x021d }
        r5 = java.lang.String.valueOf(r35);	 Catch:{ all -> 0x021d }
        r4 = r4.concat(r5);	 Catch:{ all -> 0x021d }
        r12 = 3;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r3, r4);	 Catch:{ all -> 0x021d }
        r3 = r1.f498p;	 Catch:{ all -> 0x021d }
        if (r3 != 0) goto L_0x0024;	 Catch:{ all -> 0x021d }
    L_0x001b:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "Analytics and pulse have been disabled.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m190e(r2, r3);	 Catch:{ all -> 0x021d }
        monitor-exit(r34);
        return;
    L_0x0024:
        r3 = r1.f503u;	 Catch:{ all -> 0x021d }
        if (r3 != 0) goto L_0x0031;	 Catch:{ all -> 0x021d }
    L_0x0028:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "Config response is empty. No events to fire.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r2, r3);	 Catch:{ all -> 0x021d }
        monitor-exit(r34);
        return;
    L_0x0031:
        com.flurry.sdk.lr.m312b();	 Catch:{ all -> 0x021d }
        r3 = android.text.TextUtils.isEmpty(r35);	 Catch:{ all -> 0x021d }
        if (r3 == 0) goto L_0x003c;
    L_0x003a:
        monitor-exit(r34);
        return;
    L_0x003c:
        r3 = r1.f494l;	 Catch:{ all -> 0x021d }
        r3 = r3.m134a(r11);	 Catch:{ all -> 0x021d }
        if (r3 != 0) goto L_0x004d;	 Catch:{ all -> 0x021d }
    L_0x0044:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "No events to fire. Returning.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r2, r3);	 Catch:{ all -> 0x021d }
        monitor-exit(r34);
        return;
    L_0x004d:
        r4 = r3.size();	 Catch:{ all -> 0x021d }
        if (r4 != 0) goto L_0x005c;	 Catch:{ all -> 0x021d }
    L_0x0053:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "No events to fire. Returning.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r2, r3);	 Catch:{ all -> 0x021d }
        monitor-exit(r34);
        return;
    L_0x005c:
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x021d }
        if (r2 == 0) goto L_0x0064;	 Catch:{ all -> 0x021d }
    L_0x0062:
        r8 = 1;	 Catch:{ all -> 0x021d }
        goto L_0x0065;	 Catch:{ all -> 0x021d }
    L_0x0064:
        r8 = 0;	 Catch:{ all -> 0x021d }
    L_0x0065:
        r9 = -1;	 Catch:{ all -> 0x021d }
        r10 = r35.hashCode();	 Catch:{ all -> 0x021d }
        r13 = 645204782; // 0x26750b2e float:8.50166E-16 double:3.187735173E-315;	 Catch:{ all -> 0x021d }
        if (r10 == r13) goto L_0x008e;	 Catch:{ all -> 0x021d }
    L_0x006f:
        r13 = 1371447545; // 0x51bea0f9 float:1.02343057E11 double:6.77585117E-315;	 Catch:{ all -> 0x021d }
        if (r10 == r13) goto L_0x0084;	 Catch:{ all -> 0x021d }
    L_0x0074:
        r13 = 1579613685; // 0x5e26fdf5 float:3.00826079E18 double:7.804328555E-315;	 Catch:{ all -> 0x021d }
        if (r10 == r13) goto L_0x007a;	 Catch:{ all -> 0x021d }
    L_0x0079:
        goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x007a:
        r10 = "flurry.session_start";	 Catch:{ all -> 0x021d }
        r10 = r11.equals(r10);	 Catch:{ all -> 0x021d }
        if (r10 == 0) goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x0082:
        r9 = 0;	 Catch:{ all -> 0x021d }
        goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x0084:
        r10 = "flurry.app_install";	 Catch:{ all -> 0x021d }
        r10 = r11.equals(r10);	 Catch:{ all -> 0x021d }
        if (r10 == 0) goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x008c:
        r9 = 2;	 Catch:{ all -> 0x021d }
        goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x008e:
        r10 = "flurry.session_end";	 Catch:{ all -> 0x021d }
        r10 = r11.equals(r10);	 Catch:{ all -> 0x021d }
        if (r10 == 0) goto L_0x0097;	 Catch:{ all -> 0x021d }
    L_0x0096:
        r9 = 1;	 Catch:{ all -> 0x021d }
    L_0x0097:
        switch(r9) {
            case 0: goto L_0x00a3;
            case 1: goto L_0x00a0;
            case 2: goto L_0x009d;
            default: goto L_0x009a;
        };	 Catch:{ all -> 0x021d }
    L_0x009a:
        r9 = com.flurry.sdk.iq.APPLICATION_EVENT;	 Catch:{ all -> 0x021d }
        goto L_0x00a5;	 Catch:{ all -> 0x021d }
    L_0x009d:
        r9 = com.flurry.sdk.iq.INSTALL;	 Catch:{ all -> 0x021d }
        goto L_0x00a5;	 Catch:{ all -> 0x021d }
    L_0x00a0:
        r9 = com.flurry.sdk.iq.SESSION_END;	 Catch:{ all -> 0x021d }
        goto L_0x00a5;	 Catch:{ all -> 0x021d }
    L_0x00a3:
        r9 = com.flurry.sdk.iq.SESSION_START;	 Catch:{ all -> 0x021d }
    L_0x00a5:
        r10 = new java.util.HashMap;	 Catch:{ all -> 0x021d }
        r10.<init>();	 Catch:{ all -> 0x021d }
        r3 = r3.iterator();	 Catch:{ all -> 0x021d }
    L_0x00ae:
        r13 = r3.hasNext();	 Catch:{ all -> 0x021d }
        if (r13 == 0) goto L_0x01c4;	 Catch:{ all -> 0x021d }
    L_0x00b4:
        r13 = r3.next();	 Catch:{ all -> 0x021d }
        r13 = (com.flurry.sdk.hv) r13;	 Catch:{ all -> 0x021d }
        r14 = r13 instanceof com.flurry.sdk.hw;	 Catch:{ all -> 0x021d }
        if (r14 == 0) goto L_0x0125;	 Catch:{ all -> 0x021d }
    L_0x00be:
        r14 = f483e;	 Catch:{ all -> 0x021d }
        r15 = "Event contains triggers.";	 Catch:{ all -> 0x021d }
        r6 = 4;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r6, r14, r15);	 Catch:{ all -> 0x021d }
        r14 = r13;	 Catch:{ all -> 0x021d }
        r14 = (com.flurry.sdk.hw) r14;	 Catch:{ all -> 0x021d }
        r14 = r14.f466d;	 Catch:{ all -> 0x021d }
        if (r14 != 0) goto L_0x00d6;	 Catch:{ all -> 0x021d }
    L_0x00cd:
        r15 = f483e;	 Catch:{ all -> 0x021d }
        r7 = "Template does not contain trigger values. Firing.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r6, r15, r7);	 Catch:{ all -> 0x021d }
    L_0x00d4:
        r7 = 1;	 Catch:{ all -> 0x021d }
        goto L_0x00ec;	 Catch:{ all -> 0x021d }
    L_0x00d6:
        r7 = r14.length;	 Catch:{ all -> 0x021d }
        if (r7 != 0) goto L_0x00e1;	 Catch:{ all -> 0x021d }
    L_0x00d9:
        r7 = f483e;	 Catch:{ all -> 0x021d }
        r15 = "Template does not contain trigger values. Firing.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r6, r7, r15);	 Catch:{ all -> 0x021d }
        goto L_0x00d4;	 Catch:{ all -> 0x021d }
    L_0x00e1:
        if (r2 != 0) goto L_0x00eb;	 Catch:{ all -> 0x021d }
    L_0x00e3:
        r7 = f483e;	 Catch:{ all -> 0x021d }
        r13 = "Publisher has not passed in params list. Not firing.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r6, r7, r13);	 Catch:{ all -> 0x021d }
        goto L_0x00ae;	 Catch:{ all -> 0x021d }
    L_0x00eb:
        r7 = 0;	 Catch:{ all -> 0x021d }
    L_0x00ec:
        r15 = r13;	 Catch:{ all -> 0x021d }
        r15 = (com.flurry.sdk.hw) r15;	 Catch:{ all -> 0x021d }
        r15 = r15.f465c;	 Catch:{ all -> 0x021d }
        r15 = r2.get(r15);	 Catch:{ all -> 0x021d }
        r15 = (java.lang.String) r15;	 Catch:{ all -> 0x021d }
        if (r15 != 0) goto L_0x0101;	 Catch:{ all -> 0x021d }
    L_0x00f9:
        r7 = f483e;	 Catch:{ all -> 0x021d }
        r13 = "Publisher params has no value associated with proton key. Not firing.";	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r6, r7, r13);	 Catch:{ all -> 0x021d }
        goto L_0x00ae;	 Catch:{ all -> 0x021d }
    L_0x0101:
        r12 = 0;	 Catch:{ all -> 0x021d }
    L_0x0102:
        r6 = r14.length;	 Catch:{ all -> 0x021d }
        if (r12 >= r6) goto L_0x0112;	 Catch:{ all -> 0x021d }
    L_0x0105:
        r6 = r14[r12];	 Catch:{ all -> 0x021d }
        r6 = r6.equals(r15);	 Catch:{ all -> 0x021d }
        if (r6 == 0) goto L_0x010f;	 Catch:{ all -> 0x021d }
    L_0x010d:
        r7 = 1;	 Catch:{ all -> 0x021d }
        goto L_0x0112;	 Catch:{ all -> 0x021d }
    L_0x010f:
        r12 = r12 + 1;	 Catch:{ all -> 0x021d }
        goto L_0x0102;	 Catch:{ all -> 0x021d }
    L_0x0112:
        if (r7 != 0) goto L_0x011d;	 Catch:{ all -> 0x021d }
    L_0x0114:
        r6 = f483e;	 Catch:{ all -> 0x021d }
        r7 = "Publisher params list does not match proton param values. Not firing.";	 Catch:{ all -> 0x021d }
        r12 = 4;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r6, r7);	 Catch:{ all -> 0x021d }
        goto L_0x0131;	 Catch:{ all -> 0x021d }
    L_0x011d:
        r6 = f483e;	 Catch:{ all -> 0x021d }
        r7 = "Publisher params match proton values. Firing.";	 Catch:{ all -> 0x021d }
        r12 = 4;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r6, r7);	 Catch:{ all -> 0x021d }
    L_0x0125:
        r6 = r13.f80b;	 Catch:{ all -> 0x021d }
        if (r6 != 0) goto L_0x0134;	 Catch:{ all -> 0x021d }
    L_0x0129:
        r6 = f483e;	 Catch:{ all -> 0x021d }
        r7 = "Template is empty. Not firing current event.";	 Catch:{ all -> 0x021d }
        r12 = 3;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r12, r6, r7);	 Catch:{ all -> 0x021d }
    L_0x0131:
        r12 = 3;	 Catch:{ all -> 0x021d }
        goto L_0x00ae;	 Catch:{ all -> 0x021d }
    L_0x0134:
        r7 = f483e;	 Catch:{ all -> 0x021d }
        r12 = new java.lang.StringBuilder;	 Catch:{ all -> 0x021d }
        r13 = "Creating callback report for partner: ";	 Catch:{ all -> 0x021d }
        r12.<init>(r13);	 Catch:{ all -> 0x021d }
        r13 = r6.f45b;	 Catch:{ all -> 0x021d }
        r12.append(r13);	 Catch:{ all -> 0x021d }
        r12 = r12.toString();	 Catch:{ all -> 0x021d }
        r13 = 3;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r13, r7, r12);	 Catch:{ all -> 0x021d }
        r7 = new java.util.HashMap;	 Catch:{ all -> 0x021d }
        r7.<init>();	 Catch:{ all -> 0x021d }
        r12 = "event_name";	 Catch:{ all -> 0x021d }
        r7.put(r12, r11);	 Catch:{ all -> 0x021d }
        r12 = "event_time_millis";	 Catch:{ all -> 0x021d }
        r13 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x021d }
        r7.put(r12, r13);	 Catch:{ all -> 0x021d }
        r12 = r1.f493k;	 Catch:{ all -> 0x021d }
        r13 = r6.f48e;	 Catch:{ all -> 0x021d }
        r20 = r12.m382a(r13, r7);	 Catch:{ all -> 0x021d }
        r12 = 0;	 Catch:{ all -> 0x021d }
        r13 = r6.f49f;	 Catch:{ all -> 0x021d }
        if (r13 == 0) goto L_0x0175;	 Catch:{ all -> 0x021d }
    L_0x016a:
        r12 = r1.f493k;	 Catch:{ all -> 0x021d }
        r13 = r6.f49f;	 Catch:{ all -> 0x021d }
        r7 = r12.m382a(r13, r7);	 Catch:{ all -> 0x021d }
        r29 = r7;	 Catch:{ all -> 0x021d }
        goto L_0x0177;	 Catch:{ all -> 0x021d }
    L_0x0175:
        r29 = r12;	 Catch:{ all -> 0x021d }
    L_0x0177:
        r12 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x021d }
        r14 = 259200000; // 0xf731400 float:1.1984677E-29 double:1.280618154E-315;	 Catch:{ all -> 0x021d }
        r21 = r12 + r14;	 Catch:{ all -> 0x021d }
        r7 = new com.flurry.sdk.ii;	 Catch:{ all -> 0x021d }
        r12 = r6.f45b;	 Catch:{ all -> 0x021d }
        r13 = r6.f44a;	 Catch:{ all -> 0x021d }
        r15 = r1.f503u;	 Catch:{ all -> 0x021d }
        r15 = r15.f74e;	 Catch:{ all -> 0x021d }
        r15 = r15.f55b;	 Catch:{ all -> 0x021d }
        r2 = r6.f50g;	 Catch:{ all -> 0x021d }
        r30 = r3;	 Catch:{ all -> 0x021d }
        r3 = r6.f47d;	 Catch:{ all -> 0x021d }
        r31 = r4;	 Catch:{ all -> 0x021d }
        r4 = r6.f53j;	 Catch:{ all -> 0x021d }
        r5 = r6.f52i;	 Catch:{ all -> 0x021d }
        r33 = r9;	 Catch:{ all -> 0x021d }
        r9 = r6.f51h;	 Catch:{ all -> 0x021d }
        r16 = r7;	 Catch:{ all -> 0x021d }
        r17 = r12;	 Catch:{ all -> 0x021d }
        r18 = r13;	 Catch:{ all -> 0x021d }
        r23 = r15;	 Catch:{ all -> 0x021d }
        r24 = r2;	 Catch:{ all -> 0x021d }
        r25 = r3;	 Catch:{ all -> 0x021d }
        r26 = r4;	 Catch:{ all -> 0x021d }
        r27 = r5;	 Catch:{ all -> 0x021d }
        r28 = r9;	 Catch:{ all -> 0x021d }
        r16.<init>(r17, r18, r20, r21, r23, r24, r25, r26, r27, r28, r29);	 Catch:{ all -> 0x021d }
        r2 = r6.f44a;	 Catch:{ all -> 0x021d }
        r2 = java.lang.Long.valueOf(r2);	 Catch:{ all -> 0x021d }
        r10.put(r2, r7);	 Catch:{ all -> 0x021d }
        r3 = r30;	 Catch:{ all -> 0x021d }
        r4 = r31;	 Catch:{ all -> 0x021d }
        r9 = r33;	 Catch:{ all -> 0x021d }
        r2 = r36;	 Catch:{ all -> 0x021d }
        goto L_0x0131;	 Catch:{ all -> 0x021d }
    L_0x01c4:
        r33 = r9;	 Catch:{ all -> 0x021d }
        r2 = r10.size();	 Catch:{ all -> 0x021d }
        if (r2 == 0) goto L_0x021b;	 Catch:{ all -> 0x021d }
    L_0x01cc:
        r12 = new com.flurry.sdk.im;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.jd.m535a();	 Catch:{ all -> 0x021d }
        r5 = com.flurry.sdk.jd.m537d();	 Catch:{ all -> 0x021d }
        com.flurry.sdk.jd.m535a();	 Catch:{ all -> 0x021d }
        r13 = com.flurry.sdk.jd.m540g();	 Catch:{ all -> 0x021d }
        r2 = r12;	 Catch:{ all -> 0x021d }
        r3 = r11;	 Catch:{ all -> 0x021d }
        r4 = r8;	 Catch:{ all -> 0x021d }
        r7 = r13;	 Catch:{ all -> 0x021d }
        r9 = r33;	 Catch:{ all -> 0x021d }
        r2.<init>(r3, r4, r5, r7, r9, r10);	 Catch:{ all -> 0x021d }
        r2 = "flurry.session_end";	 Catch:{ all -> 0x021d }
        r2 = r2.equals(r11);	 Catch:{ all -> 0x021d }
        if (r2 == 0) goto L_0x0204;	 Catch:{ all -> 0x021d }
    L_0x01ed:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "Storing Pulse callbacks for event: ";	 Catch:{ all -> 0x021d }
        r4 = java.lang.String.valueOf(r35);	 Catch:{ all -> 0x021d }
        r3 = r3.concat(r4);	 Catch:{ all -> 0x021d }
        r4 = 3;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r4, r2, r3);	 Catch:{ all -> 0x021d }
        r2 = r1.f495m;	 Catch:{ all -> 0x021d }
        r2.add(r12);	 Catch:{ all -> 0x021d }
        monitor-exit(r34);
        return;
    L_0x0204:
        r2 = f483e;	 Catch:{ all -> 0x021d }
        r3 = "Firing Pulse callbacks for event: ";	 Catch:{ all -> 0x021d }
        r4 = java.lang.String.valueOf(r35);	 Catch:{ all -> 0x021d }
        r3 = r3.concat(r4);	 Catch:{ all -> 0x021d }
        r4 = 3;	 Catch:{ all -> 0x021d }
        com.flurry.sdk.kf.m176a(r4, r2, r3);	 Catch:{ all -> 0x021d }
        r2 = com.flurry.sdk.il.m14a();	 Catch:{ all -> 0x021d }
        r2.m33a(r12);	 Catch:{ all -> 0x021d }
    L_0x021b:
        monitor-exit(r34);
        return;
    L_0x021d:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r34);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.if.b(java.lang.String, java.util.Map):void");
    }

    /* renamed from: b */
    private synchronized void m404b(long j) {
        Iterator it = this.f495m.iterator();
        while (it.hasNext()) {
            if (j == ((im) it.next()).f154a) {
                it.remove();
            }
        }
    }

    /* renamed from: i */
    private synchronized void m419i() {
        id idVar = (id) this.f491i.m145a();
        if (idVar != null) {
            hs hsVar;
            hs hsVar2 = null;
            try {
                hsVar = (hs) this.f490h.m202b(idVar.f102c);
            } catch (Exception e) {
                kf.m176a(5, f483e, "Failed to decode saved proton config response: ".concat(String.valueOf(e)));
                this.f491i.m147b();
                hsVar = null;
            }
            if (C1089if.m407b(hsVar)) {
                hsVar2 = hsVar;
            }
            if (hsVar2 != null) {
                kf.m176a(4, f483e, "Loaded saved proton config response");
                this.f500r = 10000;
                this.f501s = idVar.f100a;
                this.f502t = idVar.f101b;
                this.f503u = hsVar2;
                m417h();
            }
        }
        this.f499q = true;
        jr.m114a().m120b(new C10823(this));
    }

    /* renamed from: a */
    private synchronized void m397a(long j, boolean z, byte[] bArr) {
        if (bArr != null) {
            kf.m176a(4, f483e, "Saving proton config response");
            id idVar = new id();
            idVar.f100a = j;
            idVar.f101b = z;
            idVar.f102c = bArr;
            this.f491i.m146a(idVar);
        }
    }

    /* renamed from: j */
    private synchronized void m422j() {
        if (this.f498p) {
            String str = f483e;
            StringBuilder stringBuilder = new StringBuilder("Sending ");
            stringBuilder.append(this.f495m.size());
            stringBuilder.append(" queued reports.");
            kf.m176a(4, str, stringBuilder.toString());
            for (im imVar : this.f495m) {
                String str2 = f483e;
                StringBuilder stringBuilder2 = new StringBuilder("Firing Pulse callbacks for event: ");
                stringBuilder2.append(imVar.f156c);
                kf.m176a(3, str2, stringBuilder2.toString());
                il.m14a().m33a(imVar);
            }
            m426m();
            return;
        }
        kf.m190e(f483e, "Analytics disabled, not sending pulse reports.");
    }

    /* renamed from: k */
    private synchronized void m424k() {
        kf.m176a(4, f483e, "Loading queued report data.");
        List list = (List) this.f492j.m145a();
        if (list != null) {
            this.f495m.addAll(list);
        }
    }

    /* renamed from: l */
    private synchronized void m425l() {
        kf.m176a(4, f483e, "Saving queued report data.");
        this.f492j.m146a(this.f495m);
    }

    /* renamed from: m */
    private synchronized void m426m() {
        this.f495m.clear();
        this.f492j.m147b();
    }
}
