package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.flurry.android.FlurryEventRecordStatus;
import com.flurry.sdk.iy.C1102a;
import com.flurry.sdk.le.C0517a;
import com.flurry.sdk.lj.C0520a;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

public class ja implements C0520a {
    /* renamed from: a */
    static final String f566a = "ja";
    /* renamed from: b */
    static int f567b = 100;
    /* renamed from: c */
    static int f568c = 10;
    /* renamed from: d */
    static int f569d = 1000;
    /* renamed from: e */
    static int f570e = 160000;
    /* renamed from: f */
    static int f571f = 50;
    /* renamed from: A */
    private final List<iv> f572A = new ArrayList();
    /* renamed from: B */
    private boolean f573B = true;
    /* renamed from: C */
    private int f574C = 0;
    /* renamed from: D */
    private final List<it> f575D = new ArrayList();
    /* renamed from: E */
    private int f576E = 0;
    /* renamed from: F */
    private int f577F = 0;
    /* renamed from: G */
    private final hl f578G = new hl();
    /* renamed from: g */
    WeakReference<ld> f579g;
    /* renamed from: h */
    File f580h;
    /* renamed from: i */
    jy<List<iy>> f581i;
    /* renamed from: j */
    public boolean f582j;
    /* renamed from: k */
    boolean f583k;
    /* renamed from: l */
    String f584l;
    /* renamed from: m */
    byte f585m;
    /* renamed from: n */
    Long f586n;
    /* renamed from: o */
    boolean f587o = true;
    /* renamed from: p */
    final ka<jf> f588p = new C11119(this);
    /* renamed from: q */
    private final AtomicInteger f589q = new AtomicInteger(0);
    /* renamed from: r */
    private final AtomicInteger f590r = new AtomicInteger(0);
    /* renamed from: s */
    private final AtomicInteger f591s = new AtomicInteger(0);
    /* renamed from: t */
    private final ka<le> f592t = new C11031(this);
    /* renamed from: u */
    private long f593u;
    /* renamed from: v */
    private int f594v = -1;
    /* renamed from: w */
    private final List<iy> f595w = new ArrayList();
    /* renamed from: x */
    private final Map<String, List<String>> f596x = new HashMap();
    /* renamed from: y */
    private final Map<String, String> f597y = new HashMap();
    /* renamed from: z */
    private final Map<String, iu> f598z = new HashMap();

    /* renamed from: com.flurry.sdk.ja$8 */
    static /* synthetic */ class C04898 {
        /* renamed from: a */
        static final /* synthetic */ int[] f233a = new int[C0517a.m262a().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = com.flurry.sdk.le.C0517a.m262a();
            r0 = r0.length;
            r0 = new int[r0];
            f233a = r0;
            r0 = 1;
            r1 = f233a;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r2 = com.flurry.sdk.le.C0517a.f402a;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0011 }
        L_0x0011:
            r1 = f233a;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r2 = com.flurry.sdk.le.C0517a.f404c;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r3 = 2;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x0019 }
        L_0x0019:
            r1 = f233a;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r2 = com.flurry.sdk.le.C0517a.f405d;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r3 = 3;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x0021 }
        L_0x0021:
            r1 = f233a;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r2 = com.flurry.sdk.le.C0517a.f406e;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r0 = 4;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0029 }
        L_0x0029:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.8.<clinit>():void");
        }
    }

    /* renamed from: com.flurry.sdk.ja$1 */
    class C11031 implements ka<le> {
        /* renamed from: a */
        final /* synthetic */ ja f551a;

        C11031(ja jaVar) {
            this.f551a = jaVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            le leVar = (le) jzVar;
            if (this.f551a.f579g == null || leVar.f679b == this.f551a.f579g.get()) {
                ja jaVar;
                switch (C04898.f233a[leVar.f680c - 1]) {
                    case 1:
                        C0520a c0520a = this.f551a;
                        ld ldVar = leVar.f679b;
                        Context context = (Context) leVar.f678a.get();
                        c0520a.f579g = new WeakReference(ldVar);
                        lj a = li.m651a();
                        c0520a.f583k = ((Boolean) a.m266a("LogEvents")).booleanValue();
                        a.m267a("LogEvents", c0520a);
                        String str = ja.f566a;
                        StringBuilder stringBuilder = new StringBuilder("initSettings, LogEvents = ");
                        stringBuilder.append(c0520a.f583k);
                        kf.m176a(4, str, stringBuilder.toString());
                        c0520a.f584l = (String) a.m266a("UserId");
                        a.m267a("UserId", c0520a);
                        str = ja.f566a;
                        stringBuilder = new StringBuilder("initSettings, UserId = ");
                        stringBuilder.append(c0520a.f584l);
                        kf.m176a(4, str, stringBuilder.toString());
                        c0520a.f585m = ((Byte) a.m266a("Gender")).byteValue();
                        a.m267a("Gender", c0520a);
                        str = ja.f566a;
                        stringBuilder = new StringBuilder("initSettings, Gender = ");
                        stringBuilder.append(c0520a.f585m);
                        kf.m176a(4, str, stringBuilder.toString());
                        c0520a.f586n = (Long) a.m266a("Age");
                        a.m267a("Age", c0520a);
                        str = ja.f566a;
                        stringBuilder = new StringBuilder("initSettings, BirthDate = ");
                        stringBuilder.append(c0520a.f586n);
                        kf.m176a(4, str, stringBuilder.toString());
                        c0520a.f587o = ((Boolean) a.m266a("analyticsEnabled")).booleanValue();
                        a.m267a("analyticsEnabled", c0520a);
                        String str2 = ja.f566a;
                        StringBuilder stringBuilder2 = new StringBuilder("initSettings, AnalyticsEnabled = ");
                        stringBuilder2.append(c0520a.f587o);
                        kf.m176a(4, str2, stringBuilder2.toString());
                        StringBuilder stringBuilder3 = new StringBuilder(".flurryagent.");
                        stringBuilder3.append(Integer.toString(jr.m114a().f296d.hashCode(), 16));
                        c0520a.f580h = context.getFileStreamPath(stringBuilder3.toString());
                        stringBuilder2 = new StringBuilder(".yflurryreport.");
                        stringBuilder2.append(Long.toString(lr.m319i(jr.m114a().f296d), 16));
                        c0520a.f581i = new jy(context.getFileStreamPath(stringBuilder2.toString()), ".yflurryreport.", 1, new lc<List<iy>>(c0520a) {
                            /* renamed from: a */
                            final /* synthetic */ ja f544a;

                            {
                                this.f544a = r1;
                            }

                            /* renamed from: a */
                            public final kz<List<iy>> mo1372a(int i) {
                                return new ky(new C1102a());
                            }
                        });
                        c0520a.m525a(context);
                        c0520a.m529a(true);
                        if (hk.m375a().f462a != null) {
                            jr.m114a().m120b(new lw(c0520a) {
                                /* renamed from: a */
                                final /* synthetic */ ja f545a;

                                {
                                    this.f545a = r1;
                                }

                                /* renamed from: a */
                                public final void mo1370a() {
                                    hk.m375a().f462a.m427a();
                                }
                            });
                        }
                        jr.m114a().m120b(new lw(c0520a) {
                            /* renamed from: a */
                            final /* synthetic */ ja f546a;

                            {
                                this.f546a = r1;
                            }

                            /* renamed from: a */
                            public final void mo1370a() {
                                this.f546a.m515e();
                            }
                        });
                        jr.m114a().m120b(new lw(c0520a) {
                            /* renamed from: a */
                            final /* synthetic */ ja f547a;

                            {
                                this.f547a = r1;
                            }

                            /* renamed from: a */
                            public final void mo1370a() {
                                ja.m514d(this.f547a);
                            }
                        });
                        if (je.m79a().m88c() != null) {
                            jr.m114a().m120b(new lw(c0520a) {
                                /* renamed from: a */
                                final /* synthetic */ ja f548a;

                                {
                                    this.f548a = r1;
                                }

                                /* renamed from: a */
                                public final void mo1370a() {
                                    ja jaVar = this.f548a;
                                    jd.m535a();
                                    jaVar.m510a(true, jd.m537d());
                                }
                            });
                            return;
                        } else {
                            kb.m151a().m158a("com.flurry.android.sdk.IdProviderFinishedEvent", c0520a.f588p);
                            return;
                        }
                    case 2:
                        jaVar = this.f551a;
                        leVar.f678a.get();
                        jaVar.m523a();
                        return;
                    case 3:
                        jaVar = this.f551a;
                        leVar.f678a.get();
                        jaVar.m530b();
                        return;
                    case 4:
                        kb.m151a().m160b("com.flurry.android.sdk.FlurrySessionEvent", this.f551a.f592t);
                        this.f551a.m524a(leVar.f681d);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    /* renamed from: com.flurry.sdk.ja$3 */
    class C11053 extends lw {
        /* renamed from: a */
        final /* synthetic */ ja f554a;

        C11053(ja jaVar) {
            this.f554a = jaVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f554a.m518f();
        }
    }

    /* renamed from: com.flurry.sdk.ja$5 */
    class C11085 extends lw {
        /* renamed from: a */
        final /* synthetic */ ja f561a;

        /* renamed from: com.flurry.sdk.ja$5$1 */
        class C11071 extends lw {
            /* renamed from: a */
            final /* synthetic */ C11085 f560a;

            C11071(C11085 c11085) {
                this.f560a = c11085;
            }

            /* renamed from: a */
            public final void mo1370a() {
                hk.m375a().f464c.f370c = true;
            }
        }

        C11085(ja jaVar) {
            this.f561a = jaVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            if (this.f561a.f587o && hk.m375a().f462a != null) {
                hk.m375a().f462a.m432c();
            }
            if (hk.m375a().f464c != null) {
                jr.m114a().m120b(new C11071(this));
            }
        }
    }

    /* renamed from: com.flurry.sdk.ja$9 */
    class C11119 implements ka<jf> {
        /* renamed from: a */
        final /* synthetic */ ja f565a;

        /* renamed from: com.flurry.sdk.ja$9$1 */
        class C11101 extends lw {
            /* renamed from: a */
            final /* synthetic */ C11119 f564a;

            C11101(C11119 c11119) {
                this.f564a = c11119;
            }

            /* renamed from: a */
            public final void mo1370a() {
                ja jaVar = this.f564a.f565a;
                jd.m535a();
                jaVar.m510a(true, jd.m537d());
            }
        }

        C11119(ja jaVar) {
            this.f565a = jaVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            jr.m114a().m120b(new C11101(this));
        }
    }

    public ja() {
        kb.m151a().m158a("com.flurry.android.sdk.FlurrySessionEvent", this.f592t);
    }

    /* renamed from: a */
    public final synchronized void m523a() {
        this.f594v = lp.m293e();
        if (hk.m375a().f464c != null) {
            jr.m114a().m120b(new lw(this) {
                /* renamed from: a */
                final /* synthetic */ ja f549a;

                {
                    this.f549a = r1;
                }

                /* renamed from: a */
                public final void mo1370a() {
                    hk.m375a().f464c.m229d();
                }
            });
        }
        if (this.f587o && hk.m375a().f462a != null) {
            jr.m114a().m120b(new lw(this) {
                /* renamed from: a */
                final /* synthetic */ ja f550a;

                {
                    this.f550a = r1;
                }

                /* renamed from: a */
                public final void mo1370a() {
                    hk.m375a().f462a.m431b();
                }
            });
        }
    }

    /* renamed from: b */
    public final synchronized void m530b() {
        m529a(false);
        jd.m535a();
        final long d = jd.m537d();
        jd.m535a();
        final long f = jd.m539f();
        jd.m535a();
        long j = 0;
        jq i = jd.m542i();
        if (i != null) {
            j = i.f285f;
        }
        final long j2 = j;
        jd.m535a();
        final int i2 = jd.m541h().f264e;
        jd.m535a();
        m512b(jd.m539f());
        if (this.f587o && hk.m375a().f462a != null) {
            jr.m114a().m120b(new lw(this) {
                /* renamed from: b */
                final /* synthetic */ ja f553b;

                /* renamed from: a */
                public final void mo1370a() {
                    hk.m375a().f462a.m428a(d);
                }
            });
        }
        jr.m114a().m120b(new C11053(this));
        if (je.m79a().m88c()) {
            jr.m114a().m120b(new lw(this) {
                /* renamed from: e */
                final /* synthetic */ ja f559e;

                /* renamed from: a */
                public final void mo1370a() {
                    iy a = this.f559e.m522a(d, f, j2, i2);
                    this.f559e.f595w.clear();
                    this.f559e.f595w.add(a);
                    this.f559e.m532d();
                }
            });
        }
    }

    /* renamed from: a */
    public final synchronized void m524a(final long j) {
        kb.m151a().m156a(this.f588p);
        jr.m114a().m120b(new C11085(this));
        if (je.m79a().m88c()) {
            jr.m114a().m120b(new lw(this) {
                /* renamed from: b */
                final /* synthetic */ ja f563b;

                /* renamed from: a */
                public final void mo1370a() {
                    this.f563b.m510a(false, j);
                }
            });
        }
        li.m651a().m269b("Gender", this);
        li.m651a().m269b("UserId", this);
        li.m651a().m269b("Age", this);
        li.m651a().m269b("LogEvents", this);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final void mo1373a(java.lang.String r3, java.lang.Object r4) {
        /*
        r2 = this;
        r0 = r3.hashCode();
        r1 = 4;
        switch(r0) {
            case -1752163738: goto L_0x0031;
            case -1720015653: goto L_0x0027;
            case -738063011: goto L_0x001d;
            case 65759: goto L_0x0013;
            case 2129321697: goto L_0x0009;
            default: goto L_0x0008;
        };
    L_0x0008:
        goto L_0x003b;
    L_0x0009:
        r0 = "Gender";
        r3 = r3.equals(r0);
        if (r3 == 0) goto L_0x003b;
    L_0x0011:
        r3 = 2;
        goto L_0x003c;
    L_0x0013:
        r0 = "Age";
        r3 = r3.equals(r0);
        if (r3 == 0) goto L_0x003b;
    L_0x001b:
        r3 = 3;
        goto L_0x003c;
    L_0x001d:
        r0 = "LogEvents";
        r3 = r3.equals(r0);
        if (r3 == 0) goto L_0x003b;
    L_0x0025:
        r3 = 0;
        goto L_0x003c;
    L_0x0027:
        r0 = "analyticsEnabled";
        r3 = r3.equals(r0);
        if (r3 == 0) goto L_0x003b;
    L_0x002f:
        r3 = r1;
        goto L_0x003c;
    L_0x0031:
        r0 = "UserId";
        r3 = r3.equals(r0);
        if (r3 == 0) goto L_0x003b;
    L_0x0039:
        r3 = 1;
        goto L_0x003c;
    L_0x003b:
        r3 = -1;
    L_0x003c:
        switch(r3) {
            case 0: goto L_0x00b8;
            case 1: goto L_0x009e;
            case 2: goto L_0x0080;
            case 3: goto L_0x0066;
            case 4: goto L_0x0048;
            default: goto L_0x003f;
        };
    L_0x003f:
        r3 = 6;
        r4 = f566a;
        r0 = "onSettingUpdate internal error!";
        com.flurry.sdk.kf.m176a(r3, r4, r0);
        return;
    L_0x0048:
        r4 = (java.lang.Boolean) r4;
        r3 = r4.booleanValue();
        r2.f587o = r3;
        r3 = f566a;
        r4 = new java.lang.StringBuilder;
        r0 = "onSettingUpdate, AnalyticsEnabled = ";
        r4.<init>(r0);
        r0 = r2.f587o;
        r4.append(r0);
        r4 = r4.toString();
        com.flurry.sdk.kf.m176a(r1, r3, r4);
        return;
    L_0x0066:
        r4 = (java.lang.Long) r4;
        r2.f586n = r4;
        r3 = f566a;
        r4 = new java.lang.StringBuilder;
        r0 = "onSettingUpdate, Birthdate = ";
        r4.<init>(r0);
        r0 = r2.f586n;
        r4.append(r0);
        r4 = r4.toString();
        com.flurry.sdk.kf.m176a(r1, r3, r4);
        return;
    L_0x0080:
        r4 = (java.lang.Byte) r4;
        r3 = r4.byteValue();
        r2.f585m = r3;
        r3 = f566a;
        r4 = new java.lang.StringBuilder;
        r0 = "onSettingUpdate, Gender = ";
        r4.<init>(r0);
        r0 = r2.f585m;
        r4.append(r0);
        r4 = r4.toString();
        com.flurry.sdk.kf.m176a(r1, r3, r4);
        return;
    L_0x009e:
        r4 = (java.lang.String) r4;
        r2.f584l = r4;
        r3 = f566a;
        r4 = new java.lang.StringBuilder;
        r0 = "onSettingUpdate, UserId = ";
        r4.<init>(r0);
        r0 = r2.f584l;
        r4.append(r0);
        r4 = r4.toString();
        com.flurry.sdk.kf.m176a(r1, r3, r4);
        return;
    L_0x00b8:
        r4 = (java.lang.Boolean) r4;
        r3 = r4.booleanValue();
        r2.f583k = r3;
        r3 = f566a;
        r4 = new java.lang.StringBuilder;
        r0 = "onSettingUpdate, LogEvents = ";
        r4.<init>(r0);
        r0 = r2.f583k;
        r4.append(r0);
        r4 = r4.toString();
        com.flurry.sdk.kf.m176a(r1, r3, r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.a(java.lang.String, java.lang.Object):void");
    }

    /* renamed from: a */
    final void m525a(Context context) {
        if (context instanceof Activity) {
            context = ((Activity) context).getIntent().getExtras();
            if (context != null) {
                String str = f566a;
                StringBuilder stringBuilder = new StringBuilder("Launch Options Bundle is present ");
                stringBuilder.append(context.toString());
                kf.m176a(3, str, stringBuilder.toString());
                for (String str2 : context.keySet()) {
                    if (str2 != null) {
                        Object obj = context.get(str2);
                        this.f596x.put(str2, new ArrayList(Arrays.asList(new String[]{obj != null ? obj.toString() : "null"})));
                        String str3 = f566a;
                        StringBuilder stringBuilder2 = new StringBuilder("Launch options Key: ");
                        stringBuilder2.append(str2);
                        stringBuilder2.append(". Its value: ");
                        stringBuilder2.append(r3);
                        kf.m176a(3, str3, stringBuilder2.toString());
                    }
                }
            }
        }
    }

    @TargetApi(18)
    /* renamed from: a */
    final void m529a(boolean z) {
        Object e;
        if (z) {
            this.f597y.put("boot.time", Long.toString(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
            StatFs statFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            if (VERSION.SDK_INT >= 18) {
                this.f597y.put("disk.size.total.internal", Long.toString(statFs.getAvailableBlocksLong()));
                this.f597y.put("disk.size.available.internal", Long.toString(statFs.getAvailableBlocksLong()));
                this.f597y.put("disk.size.total.external", Long.toString(statFs2.getAvailableBlocksLong()));
                this.f597y.put("disk.size.available.external", Long.toString(statFs2.getAvailableBlocksLong()));
            } else {
                this.f597y.put("disk.size.total.internal", Long.toString((long) statFs.getAvailableBlocks()));
                this.f597y.put("disk.size.available.internal", Long.toString((long) statFs.getAvailableBlocks()));
                this.f597y.put("disk.size.total.external", Long.toString((long) statFs2.getAvailableBlocks()));
                this.f597y.put("disk.size.available.external", Long.toString((long) statFs2.getAvailableBlocks()));
            }
            jl.m99a();
            this.f597y.put("carrier.name", jl.m101c());
            jl.m99a();
            this.f597y.put("carrier.details", jl.m102d());
        }
        ActivityManager activityManager = (ActivityManager) jr.m114a().f293a.getSystemService("activity");
        MemoryInfo memoryInfo = new MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        Map map = this.f597y;
        StringBuilder stringBuilder = new StringBuilder("memory.available");
        stringBuilder.append(z ? ".start" : ".end");
        map.put(stringBuilder.toString(), Long.toString(memoryInfo.availMem));
        if (VERSION.SDK_INT >= 16) {
            map = this.f597y;
            stringBuilder = new StringBuilder("memory.total");
            stringBuilder.append(z ? ".start" : ".end");
            map.put(stringBuilder.toString(), Long.toString(memoryInfo.availMem));
        }
        boolean z2 = false;
        int i = -1;
        int intExtra;
        int intExtra2;
        float f;
        Map map2;
        StringBuilder stringBuilder2;
        Map map3;
        try {
            Intent registerReceiver = jr.m114a().f293a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                intExtra = registerReceiver.getIntExtra("status", -1);
                if (intExtra == 2 || intExtra == 5) {
                    z2 = true;
                }
                intExtra = registerReceiver.getIntExtra(Param.LEVEL, -1);
                try {
                    intExtra2 = registerReceiver.getIntExtra("scale", -1);
                } catch (Exception e2) {
                    e = e2;
                    kf.m176a(5, f566a, "Error getting battery status: ".concat(String.valueOf(e)));
                    intExtra2 = -1;
                    i = intExtra;
                    f = ((float) i) / ((float) intExtra2);
                    map2 = this.f597y;
                    stringBuilder2 = new StringBuilder("battery.charging");
                    stringBuilder2.append(z ? ".end" : ".start");
                    map2.put(stringBuilder2.toString(), Boolean.toString(z2));
                    map3 = this.f597y;
                    stringBuilder = new StringBuilder("battery.remaining");
                    stringBuilder.append(z ? ".end" : ".start");
                    map3.put(stringBuilder.toString(), Float.toString(f));
                }
                i = intExtra;
                f = ((float) i) / ((float) intExtra2);
                map2 = this.f597y;
                stringBuilder2 = new StringBuilder("battery.charging");
                if (z) {
                }
                stringBuilder2.append(z ? ".end" : ".start");
                map2.put(stringBuilder2.toString(), Boolean.toString(z2));
                map3 = this.f597y;
                stringBuilder = new StringBuilder("battery.remaining");
                if (z) {
                }
                stringBuilder.append(z ? ".end" : ".start");
                map3.put(stringBuilder.toString(), Float.toString(f));
            }
            intExtra2 = -1;
            f = ((float) i) / ((float) intExtra2);
            map2 = this.f597y;
            stringBuilder2 = new StringBuilder("battery.charging");
            if (z) {
            }
            stringBuilder2.append(z ? ".end" : ".start");
            map2.put(stringBuilder2.toString(), Boolean.toString(z2));
            map3 = this.f597y;
            stringBuilder = new StringBuilder("battery.remaining");
            if (z) {
            }
            stringBuilder.append(z ? ".end" : ".start");
            map3.put(stringBuilder.toString(), Float.toString(f));
        } catch (Exception e3) {
            e = e3;
            intExtra = -1;
            kf.m176a(5, f566a, "Error getting battery status: ".concat(String.valueOf(e)));
            intExtra2 = -1;
            i = intExtra;
            f = ((float) i) / ((float) intExtra2);
            map2 = this.f597y;
            stringBuilder2 = new StringBuilder("battery.charging");
            if (z) {
            }
            stringBuilder2.append(z ? ".end" : ".start");
            map2.put(stringBuilder2.toString(), Boolean.toString(z2));
            map3 = this.f597y;
            stringBuilder = new StringBuilder("battery.remaining");
            if (z) {
            }
            stringBuilder.append(z ? ".end" : ".start");
            map3.put(stringBuilder.toString(), Float.toString(f));
        }
    }

    /* renamed from: b */
    private synchronized void m512b(long j) {
        for (iv ivVar : this.f572A) {
            if (ivVar.f194b && !ivVar.f195c) {
                ivVar.m70a(j);
            }
        }
    }

    /* renamed from: a */
    final synchronized iy m522a(long j, long j2, long j3, int i) {
        iz izVar = new iz();
        izVar.f208a = jn.m564a().m575i();
        izVar.f209b = j;
        izVar.f210c = j2;
        izVar.f211d = j3;
        izVar.f212e = this.f597y;
        jd.m535a();
        j = jd.m542i();
        if (j != null) {
            j = j.m111d();
        } else {
            j = 0;
        }
        izVar.f213f = j;
        jd.m535a();
        j = jd.m542i();
        if (j != null) {
            j = j.m112e();
        } else {
            j = 0;
        }
        izVar.f214g = j;
        jd.m535a();
        j = jd.m542i();
        if (j != null) {
            j = j.m113f();
        } else {
            j = 0;
        }
        izVar.f215h = j;
        jh.m90a();
        izVar.f216i = jh.m91b();
        jh.m90a();
        izVar.f217j = TimeZone.getDefault().getID();
        izVar.f218k = i;
        izVar.f219l = this.f594v != -1 ? this.f594v : lp.m293e();
        izVar.f220m = this.f584l == null ? "" : this.f584l;
        izVar.f221n = ji.m552a().m563e();
        izVar.f222o = this.f577F;
        izVar.f223p = this.f585m;
        izVar.f224q = this.f586n;
        izVar.f225r = this.f598z;
        izVar.f226s = this.f572A;
        izVar.f227t = this.f573B;
        izVar.f229v = this.f575D;
        izVar.f228u = this.f576E;
        try {
            j = new iy(izVar);
        } catch (long j4) {
            kf.m176a((int) 5, f566a, "Error creating analytics session report: ".concat(String.valueOf(j4)));
            j4 = 0;
        }
        if (j4 == null) {
            kf.m190e(f566a, "New session report wasn't created");
        }
        return j4;
    }

    /* renamed from: c */
    public final synchronized void m531c() {
        this.f577F++;
    }

    /* renamed from: a */
    public final synchronized FlurryEventRecordStatus m520a(String str, String str2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (map == null) {
            return flurryEventRecordStatus;
        }
        if (TextUtils.isEmpty(str2)) {
            return flurryEventRecordStatus;
        }
        map.put("sid+Tumblr", str2);
        str = m521a(str, (Map) map, (boolean) null);
        kf.m176a(5, f566a, "logEvent status for syndication:".concat(String.valueOf(str)));
        return str;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final synchronized com.flurry.android.FlurryEventRecordStatus m521a(java.lang.String r13, java.util.Map<java.lang.String, java.lang.String> r14, boolean r15) {
        /*
        r12 = this;
        monitor-enter(r12);
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;	 Catch:{ all -> 0x011c }
        r1 = r12.f587o;	 Catch:{ all -> 0x011c }
        if (r1 != 0) goto L_0x0012;
    L_0x0007:
        r13 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;	 Catch:{ all -> 0x011c }
        r14 = f566a;	 Catch:{ all -> 0x011c }
        r15 = "Analytics has been disabled, not logging event.";
        com.flurry.sdk.kf.m190e(r14, r15);	 Catch:{ all -> 0x011c }
        monitor-exit(r12);
        return r13;
    L_0x0012:
        r1 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x011c }
        com.flurry.sdk.jd.m535a();	 Catch:{ all -> 0x011c }
        r3 = com.flurry.sdk.jd.m538e();	 Catch:{ all -> 0x011c }
        r9 = r1 - r3;
        r13 = com.flurry.sdk.lr.m310b(r13);	 Catch:{ all -> 0x011c }
        r1 = r13.length();	 Catch:{ all -> 0x011c }
        if (r1 != 0) goto L_0x002d;
    L_0x0029:
        r13 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;	 Catch:{ all -> 0x011c }
        monitor-exit(r12);
        return r13;
    L_0x002d:
        r1 = r12.f598z;	 Catch:{ all -> 0x011c }
        r1 = r1.get(r13);	 Catch:{ all -> 0x011c }
        r1 = (com.flurry.sdk.iu) r1;	 Catch:{ all -> 0x011c }
        r2 = 1;
        if (r1 != 0) goto L_0x0070;
    L_0x0038:
        r1 = r12.f598z;	 Catch:{ all -> 0x011c }
        r1 = r1.size();	 Catch:{ all -> 0x011c }
        r3 = f567b;	 Catch:{ all -> 0x011c }
        if (r1 >= r3) goto L_0x005e;
    L_0x0042:
        r1 = new com.flurry.sdk.iu;	 Catch:{ all -> 0x011c }
        r1.<init>();	 Catch:{ all -> 0x011c }
        r1.f192a = r2;	 Catch:{ all -> 0x011c }
        r2 = r12.f598z;	 Catch:{ all -> 0x011c }
        r2.put(r13, r1);	 Catch:{ all -> 0x011c }
        r1 = f566a;	 Catch:{ all -> 0x011c }
        r2 = "Event count started: ";
        r3 = java.lang.String.valueOf(r13);	 Catch:{ all -> 0x011c }
        r2 = r2.concat(r3);	 Catch:{ all -> 0x011c }
        com.flurry.sdk.kf.m190e(r1, r2);	 Catch:{ all -> 0x011c }
        goto L_0x0086;
    L_0x005e:
        r0 = f566a;	 Catch:{ all -> 0x011c }
        r1 = "Too many different events. Event not counted: ";
        r2 = java.lang.String.valueOf(r13);	 Catch:{ all -> 0x011c }
        r1 = r1.concat(r2);	 Catch:{ all -> 0x011c }
        com.flurry.sdk.kf.m190e(r0, r1);	 Catch:{ all -> 0x011c }
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;	 Catch:{ all -> 0x011c }
        goto L_0x0086;
    L_0x0070:
        r0 = r1.f192a;	 Catch:{ all -> 0x011c }
        r0 = r0 + r2;
        r1.f192a = r0;	 Catch:{ all -> 0x011c }
        r0 = f566a;	 Catch:{ all -> 0x011c }
        r1 = "Event count incremented: ";
        r2 = java.lang.String.valueOf(r13);	 Catch:{ all -> 0x011c }
        r1 = r1.concat(r2);	 Catch:{ all -> 0x011c }
        com.flurry.sdk.kf.m190e(r0, r1);	 Catch:{ all -> 0x011c }
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;	 Catch:{ all -> 0x011c }
    L_0x0086:
        r1 = r12.f583k;	 Catch:{ all -> 0x011c }
        r2 = 0;
        if (r1 == 0) goto L_0x0118;
    L_0x008b:
        r1 = r12.f572A;	 Catch:{ all -> 0x011c }
        r1 = r1.size();	 Catch:{ all -> 0x011c }
        r3 = f569d;	 Catch:{ all -> 0x011c }
        if (r1 >= r3) goto L_0x0118;
    L_0x0095:
        r1 = r12.f574C;	 Catch:{ all -> 0x011c }
        r3 = f570e;	 Catch:{ all -> 0x011c }
        if (r1 >= r3) goto L_0x0118;
    L_0x009b:
        if (r14 != 0) goto L_0x00a1;
    L_0x009d:
        r14 = java.util.Collections.emptyMap();	 Catch:{ all -> 0x011c }
    L_0x00a1:
        r0 = r14.size();	 Catch:{ all -> 0x011c }
        r1 = f568c;	 Catch:{ all -> 0x011c }
        if (r0 <= r1) goto L_0x00c3;
    L_0x00a9:
        r13 = f566a;	 Catch:{ all -> 0x011c }
        r15 = new java.lang.StringBuilder;	 Catch:{ all -> 0x011c }
        r0 = "MaxEventParams exceeded: ";
        r15.<init>(r0);	 Catch:{ all -> 0x011c }
        r14 = r14.size();	 Catch:{ all -> 0x011c }
        r15.append(r14);	 Catch:{ all -> 0x011c }
        r14 = r15.toString();	 Catch:{ all -> 0x011c }
        com.flurry.sdk.kf.m190e(r13, r14);	 Catch:{ all -> 0x011c }
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;	 Catch:{ all -> 0x011c }
        goto L_0x011a;
    L_0x00c3:
        r0 = new com.flurry.sdk.iv;	 Catch:{ all -> 0x011c }
        r1 = r12.f589q;	 Catch:{ all -> 0x011c }
        r6 = r1.incrementAndGet();	 Catch:{ all -> 0x011c }
        r5 = r0;
        r7 = r13;
        r8 = r14;
        r11 = r15;
        r5.<init>(r6, r7, r8, r9, r11);	 Catch:{ all -> 0x011c }
        r15 = r0.m73b();	 Catch:{ all -> 0x011c }
        r15 = r15.length;	 Catch:{ all -> 0x011c }
        r1 = r12.f574C;	 Catch:{ all -> 0x011c }
        r15 = r15 + r1;
        r1 = f570e;	 Catch:{ all -> 0x011c }
        if (r15 > r1) goto L_0x0108;
    L_0x00de:
        r15 = r12.f572A;	 Catch:{ all -> 0x011c }
        r15.add(r0);	 Catch:{ all -> 0x011c }
        r15 = r12.f574C;	 Catch:{ all -> 0x011c }
        r0 = r0.m73b();	 Catch:{ all -> 0x011c }
        r0 = r0.length;	 Catch:{ all -> 0x011c }
        r15 = r15 + r0;
        r12.f574C = r15;	 Catch:{ all -> 0x011c }
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;	 Catch:{ all -> 0x011c }
        r15 = r12.f587o;	 Catch:{ all -> 0x011c }
        if (r15 == 0) goto L_0x011a;
    L_0x00f3:
        r15 = com.flurry.sdk.hk.m375a();	 Catch:{ all -> 0x011c }
        r15 = r15.f462a;	 Catch:{ all -> 0x011c }
        if (r15 == 0) goto L_0x011a;
    L_0x00fb:
        r15 = com.flurry.sdk.jr.m114a();	 Catch:{ all -> 0x011c }
        r1 = new com.flurry.sdk.ja$7;	 Catch:{ all -> 0x011c }
        r1.<init>(r12, r13, r14);	 Catch:{ all -> 0x011c }
        r15.m120b(r1);	 Catch:{ all -> 0x011c }
        goto L_0x011a;
    L_0x0108:
        r13 = f570e;	 Catch:{ all -> 0x011c }
        r12.f574C = r13;	 Catch:{ all -> 0x011c }
        r12.f573B = r2;	 Catch:{ all -> 0x011c }
        r13 = f566a;	 Catch:{ all -> 0x011c }
        r14 = "Event Log size exceeded. No more event details logged.";
        com.flurry.sdk.kf.m190e(r13, r14);	 Catch:{ all -> 0x011c }
        r0 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventLogCountExceeded;	 Catch:{ all -> 0x011c }
        goto L_0x011a;
    L_0x0118:
        r12.f573B = r2;	 Catch:{ all -> 0x011c }
    L_0x011a:
        monitor-exit(r12);
        return r0;
    L_0x011c:
        r13 = move-exception;
        monitor-exit(r12);
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.a(java.lang.String, java.util.Map, boolean):com.flurry.android.FlurryEventRecordStatus");
    }

    /* renamed from: a */
    public final synchronized void m528a(String str, Map<String, String> map) {
        for (iv ivVar : this.f572A) {
            boolean z;
            if (ivVar.f194b && ivVar.f196d == 0 && ivVar.f193a.equals(str)) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                jd.m535a();
                long e = elapsedRealtime - jd.m538e();
                if (map != null && map.size() > null && this.f574C < f570e) {
                    str = this.f574C - ivVar.m73b().length;
                    Map hashMap = new HashMap(ivVar.m69a());
                    ivVar.m71a((Map) map);
                    if (ivVar.m73b().length + str > f570e) {
                        ivVar.m72b(hashMap);
                        this.f573B = false;
                        this.f574C = f570e;
                        kf.m190e(f566a, "Event Log size exceeded. No more event details logged.");
                    } else if (ivVar.m69a().size() > f568c) {
                        str = f566a;
                        map = new StringBuilder("MaxEventParams exceeded on endEvent: ");
                        map.append(ivVar.m69a().size());
                        kf.m190e(str, map.toString());
                        ivVar.m72b(hashMap);
                    } else {
                        this.f574C = str + ivVar.m73b().length;
                    }
                }
                ivVar.m70a(e);
                return;
            }
        }
    }

    /* renamed from: a */
    public final synchronized void m527a(String str, String str2, String str3, Throwable th) {
        int i;
        it itVar;
        int i2 = 0;
        if (str != null) {
            if ("uncaught".equals(str)) {
                i = 1;
                this.f576E++;
                if (this.f575D.size() < f571f) {
                    itVar = new it(this.f590r.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th);
                    this.f575D.add(itVar);
                    str = f566a;
                    str2 = new StringBuilder("Error logged: ");
                    str2.append(itVar.f186a);
                    kf.m190e(str, str2.toString());
                } else if (i == 0) {
                    while (i2 < this.f575D.size()) {
                        itVar = (it) this.f575D.get(i2);
                        if (itVar.f186a != null || "uncaught".equals(itVar.f186a)) {
                            i2++;
                        } else {
                            this.f575D.set(i2, new it(this.f590r.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th));
                            return;
                        }
                    }
                } else {
                    kf.m190e(f566a, "Max errors logged. No more errors logged.");
                }
            }
        }
        i = 0;
        this.f576E++;
        if (this.f575D.size() < f571f) {
            itVar = new it(this.f590r.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th);
            this.f575D.add(itVar);
            str = f566a;
            str2 = new StringBuilder("Error logged: ");
            str2.append(itVar.f186a);
            kf.m190e(str, str2.toString());
        } else if (i == 0) {
            kf.m190e(f566a, "Max errors logged. No more errors logged.");
        } else {
            while (i2 < this.f575D.size()) {
                itVar = (it) this.f575D.get(i2);
                if (itVar.f186a != null) {
                }
                i2++;
            }
        }
    }

    /* renamed from: a */
    private synchronized void m510a(boolean z, long j) {
        ja jaVar = this;
        synchronized (this) {
            int i = 3;
            if (jaVar.f587o) {
                if (!z) {
                    if (jaVar.f595w.isEmpty()) {
                        return;
                    }
                }
                try {
                    Object obj = f566a;
                    kf.m176a(3, (String) obj, "generating agent report");
                    String str = jr.m114a().f296d;
                    String i2 = jn.m564a().m575i();
                    boolean z2 = jaVar.f582j;
                    boolean d = je.m79a().m89d();
                    long j2 = jaVar.f593u;
                    List list = jaVar.f595w;
                    Map unmodifiableMap = Collections.unmodifiableMap(je.m79a().f251a);
                    Map a = jaVar.f578G.m7a();
                    Map map = jaVar.f596x;
                    HashMap c = jt.m125a().m128c();
                    long currentTimeMillis = System.currentTimeMillis();
                } catch (Object e) {
                    kf.m190e(f566a, "Exception while generating report: ".concat(String.valueOf(obj)));
                    r2 = null;
                    byte[] bArr;
                    if (bArr != null) {
                        String str2 = f566a;
                        StringBuilder stringBuilder = new StringBuilder("generated report of size ");
                        stringBuilder.append(bArr.length);
                        stringBuilder.append(" with ");
                        stringBuilder.append(jaVar.f595w.size());
                        stringBuilder.append(" reports.");
                        kf.m176a(i, str2, stringBuilder.toString());
                        ix ixVar = hk.m375a().f463b;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append(js.m122a());
                        ixVar.m235b(bArr, jr.m114a().f296d, stringBuilder2.toString());
                    } else {
                        kf.m190e(f566a, "Error generating report");
                    }
                    jaVar.f595w.clear();
                    jaVar.f581i.m147b();
                    return;
                } finally {
                    obj = e;
                }
                if (bArr != null) {
                    kf.m190e(f566a, "Error generating report");
                } else {
                    String str22 = f566a;
                    StringBuilder stringBuilder3 = new StringBuilder("generated report of size ");
                    stringBuilder3.append(bArr.length);
                    stringBuilder3.append(" with ");
                    stringBuilder3.append(jaVar.f595w.size());
                    stringBuilder3.append(" reports.");
                    kf.m176a(i, str22, stringBuilder3.toString());
                    ix ixVar2 = hk.m375a().f463b;
                    StringBuilder stringBuilder22 = new StringBuilder();
                    stringBuilder22.append(js.m122a());
                    ixVar2.m235b(bArr, jr.m114a().f296d, stringBuilder22.toString());
                }
                jaVar.f595w.clear();
                jaVar.f581i.m147b();
                return;
            }
            kf.m176a(3, f566a, "Analytics disabled, not sending agent report.");
        }
    }

    /* renamed from: d */
    public final synchronized void m532d() {
        kf.m176a(4, f566a, "Saving persistent agent data.");
        this.f581i.m146a(this.f595w);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: e */
    private synchronized void m515e() {
        /*
        r7 = this;
        monitor-enter(r7);
        r0 = f566a;	 Catch:{ all -> 0x0060 }
        r1 = "Loading persistent session report data.";
        r2 = 4;
        com.flurry.sdk.kf.m176a(r2, r0, r1);	 Catch:{ all -> 0x0060 }
        r0 = r7.f581i;	 Catch:{ all -> 0x0060 }
        r0 = r0.m145a();	 Catch:{ all -> 0x0060 }
        r0 = (java.util.List) r0;	 Catch:{ all -> 0x0060 }
        if (r0 == 0) goto L_0x001a;
    L_0x0013:
        r1 = r7.f595w;	 Catch:{ all -> 0x0060 }
        r1.addAll(r0);	 Catch:{ all -> 0x0060 }
        monitor-exit(r7);
        return;
    L_0x001a:
        r0 = r7.f580h;	 Catch:{ all -> 0x0060 }
        r0 = r0.exists();	 Catch:{ all -> 0x0060 }
        if (r0 == 0) goto L_0x005e;
    L_0x0022:
        r0 = f566a;	 Catch:{ all -> 0x0060 }
        r1 = "Legacy persistent agent data found, converting.";
        com.flurry.sdk.kf.m176a(r2, r0, r1);	 Catch:{ all -> 0x0060 }
        r0 = r7.f580h;	 Catch:{ all -> 0x0060 }
        r0 = com.flurry.sdk.hn.m11a(r0);	 Catch:{ all -> 0x0060 }
        if (r0 == 0) goto L_0x0056;
    L_0x0031:
        r1 = r0.f236a;	 Catch:{ all -> 0x0060 }
        r2 = r0.f237b;	 Catch:{ all -> 0x0060 }
        r4 = 0;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 > 0) goto L_0x0042;
    L_0x003b:
        com.flurry.sdk.jd.m535a();	 Catch:{ all -> 0x0060 }
        r2 = com.flurry.sdk.jd.m537d();	 Catch:{ all -> 0x0060 }
    L_0x0042:
        r7.f582j = r1;	 Catch:{ all -> 0x0060 }
        r7.f593u = r2;	 Catch:{ all -> 0x0060 }
        r7.m518f();	 Catch:{ all -> 0x0060 }
        r0 = r0.f238c;	 Catch:{ all -> 0x0060 }
        r0 = java.util.Collections.unmodifiableList(r0);	 Catch:{ all -> 0x0060 }
        if (r0 == 0) goto L_0x0056;
    L_0x0051:
        r1 = r7.f595w;	 Catch:{ all -> 0x0060 }
        r1.addAll(r0);	 Catch:{ all -> 0x0060 }
    L_0x0056:
        r0 = r7.f580h;	 Catch:{ all -> 0x0060 }
        r0.delete();	 Catch:{ all -> 0x0060 }
        r7.m532d();	 Catch:{ all -> 0x0060 }
    L_0x005e:
        monitor-exit(r7);
        return;
    L_0x0060:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.e():void");
    }

    /* renamed from: f */
    private void m518f() {
        Editor edit = jr.m114a().f293a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putBoolean("com.flurry.sdk.previous_successful_report", this.f582j);
        edit.putLong("com.flurry.sdk.initial_run_time", this.f593u);
        edit.commit();
    }

    /* renamed from: d */
    static /* synthetic */ void m514d(ja jaVar) {
        SharedPreferences sharedPreferences = jr.m114a().f293a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        jaVar.f582j = sharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
        jd.m535a();
        jaVar.f593u = sharedPreferences.getLong("com.flurry.sdk.initial_run_time", jd.m537d());
    }
}
