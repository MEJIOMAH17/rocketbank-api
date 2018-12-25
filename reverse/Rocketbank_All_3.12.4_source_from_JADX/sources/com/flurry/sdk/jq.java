package com.flurry.sdk;

import android.content.Context;
import android.os.SystemClock;
import com.flurry.sdk.le.C0517a;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class jq {
    /* renamed from: a */
    static final String f280a = "jq";
    /* renamed from: b */
    WeakReference<ld> f281b;
    /* renamed from: c */
    public volatile long f282c = 0;
    /* renamed from: d */
    public volatile long f283d = 0;
    /* renamed from: e */
    public volatile long f284e = -1;
    /* renamed from: f */
    public volatile long f285f = 0;
    /* renamed from: g */
    private final ka<le> f286g = new C11171(this);
    /* renamed from: h */
    private volatile long f287h = 0;
    /* renamed from: i */
    private String f288i;
    /* renamed from: j */
    private String f289j;
    /* renamed from: k */
    private Map<String, String> f290k;

    /* renamed from: com.flurry.sdk.jq$2 */
    class C04962 extends LinkedHashMap<String, String> {
        /* renamed from: a */
        final /* synthetic */ jq f278a;

        C04962(jq jqVar) {
            this.f278a = jqVar;
        }

        protected final boolean removeEldestEntry(Entry<String, String> entry) {
            return size() > 10 ? true : null;
        }
    }

    /* renamed from: com.flurry.sdk.jq$4 */
    static /* synthetic */ class C04974 {
        /* renamed from: a */
        static final /* synthetic */ int[] f279a = new int[C0517a.m262a().length];

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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = com.flurry.sdk.le.C0517a.m262a();
            r0 = r0.length;
            r0 = new int[r0];
            f279a = r0;
            r0 = 1;
            r1 = f279a;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r2 = com.flurry.sdk.le.C0517a.f402a;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0011 }
        L_0x0011:
            r1 = f279a;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r2 = com.flurry.sdk.le.C0517a.f404c;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r3 = 2;	 Catch:{ NoSuchFieldError -> 0x0019 }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x0019 }
        L_0x0019:
            r1 = f279a;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r2 = com.flurry.sdk.le.C0517a.f405d;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r3 = 3;	 Catch:{ NoSuchFieldError -> 0x0021 }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x0021 }
        L_0x0021:
            r1 = f279a;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r2 = com.flurry.sdk.le.C0517a.f406e;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r0 = 4;	 Catch:{ NoSuchFieldError -> 0x0029 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0029 }
        L_0x0029:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.jq.4.<clinit>():void");
        }
    }

    /* renamed from: com.flurry.sdk.jq$1 */
    class C11171 implements ka<le> {
        /* renamed from: a */
        final /* synthetic */ jq f626a;

        C11171(jq jqVar) {
            this.f626a = jqVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            le leVar = (le) jzVar;
            if (this.f626a.f281b == null || leVar.f679b == this.f626a.f281b.get()) {
                jq jqVar;
                switch (C04974.f279a[leVar.f680c - 1]) {
                    case 1:
                        jqVar = this.f626a;
                        ld ldVar = leVar.f679b;
                        Context context = (Context) leVar.f678a.get();
                        jqVar.f281b = new WeakReference(ldVar);
                        jqVar.f282c = System.currentTimeMillis();
                        jqVar.f283d = SystemClock.elapsedRealtime();
                        if (ldVar != null) {
                            if (context != null) {
                                String str = jq.f280a;
                                StringBuilder stringBuilder = new StringBuilder("Flurry session id started:");
                                stringBuilder.append(jqVar.f282c);
                                kf.m176a(3, str, stringBuilder.toString());
                                le leVar2 = new le();
                                leVar2.f678a = new WeakReference(context);
                                leVar2.f679b = ldVar;
                                leVar2.f680c = C0517a.f403b;
                                leVar2.m149b();
                                jr.m114a().m120b(new C11183(jqVar));
                                return;
                            }
                        }
                        kf.m176a(3, jq.f280a, "Flurry session id cannot be created.");
                        jr.m114a().m120b(new C11183(jqVar));
                        return;
                    case 2:
                        jqVar = this.f626a;
                        leVar.f678a.get();
                        jqVar.m106a();
                        return;
                    case 3:
                        jqVar = this.f626a;
                        leVar.f678a.get();
                        jqVar.f284e = SystemClock.elapsedRealtime() - jqVar.f283d;
                        return;
                    case 4:
                        kb.m151a().m160b("com.flurry.android.sdk.FlurrySessionEvent", this.f626a.f286g);
                        jq.m105b();
                        break;
                    default:
                        break;
                }
            }
        }
    }

    /* renamed from: com.flurry.sdk.jq$3 */
    class C11183 extends lw {
        /* renamed from: a */
        final /* synthetic */ jq f627a;

        C11183(jq jqVar) {
            this.f627a = jqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            ji.m552a().m561c();
        }
    }

    /* renamed from: b */
    public static void m105b() {
    }

    public jq() {
        kb.m151a().m158a("com.flurry.android.sdk.FlurrySessionEvent", this.f286g);
        this.f290k = new C04962(this);
    }

    /* renamed from: a */
    public final synchronized void m106a() {
        long j = lf.m634a().f689a;
        if (j > 0) {
            this.f285f += System.currentTimeMillis() - j;
        }
    }

    /* renamed from: c */
    public final synchronized long m110c() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f283d;
        if (elapsedRealtime <= this.f287h) {
            elapsedRealtime = this.f287h + 1;
            this.f287h = elapsedRealtime;
        }
        this.f287h = elapsedRealtime;
        return this.f287h;
    }

    /* renamed from: a */
    public final synchronized void m107a(String str) {
        this.f288i = str;
    }

    /* renamed from: b */
    public final synchronized void m109b(String str) {
        this.f289j = str;
    }

    /* renamed from: d */
    public final synchronized String m111d() {
        return this.f288i;
    }

    /* renamed from: e */
    public final synchronized String m112e() {
        return this.f289j;
    }

    /* renamed from: a */
    public final synchronized void m108a(String str, String str2) {
        this.f290k.put(str, str2);
    }

    /* renamed from: f */
    public final synchronized Map<String, String> m113f() {
        return this.f290k;
    }
}
