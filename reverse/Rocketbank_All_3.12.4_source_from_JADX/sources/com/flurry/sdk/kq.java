package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class kq<ReportInfo extends kp> {
    /* renamed from: a */
    private static final String f368a = "kq";
    /* renamed from: b */
    public static long f369b = 10000;
    /* renamed from: c */
    public boolean f370c;
    /* renamed from: d */
    public long f371d = f369b;
    /* renamed from: e */
    private final int f372e = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    /* renamed from: f */
    private final jy<List<ReportInfo>> f373f;
    /* renamed from: g */
    private final List<ReportInfo> f374g = new ArrayList();
    /* renamed from: h */
    private int f375h;
    /* renamed from: i */
    private final Runnable f376i = new C11261(this);
    /* renamed from: j */
    private final ka<jj> f377j = new C11272(this);

    /* renamed from: com.flurry.sdk.kq$1 */
    class C11261 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f642a;

        C11261(kq kqVar) {
            this.f642a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f642a.m217b();
        }
    }

    /* renamed from: com.flurry.sdk.kq$2 */
    class C11272 implements ka<jj> {
        /* renamed from: a */
        final /* synthetic */ kq f643a;

        C11272(kq kqVar) {
            this.f643a = kqVar;
        }

        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1365a(jz jzVar) {
            if (((jj) jzVar).f619a != null) {
                this.f643a.m217b();
            }
        }
    }

    /* renamed from: com.flurry.sdk.kq$3 */
    class C11283 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f644a;

        C11283(kq kqVar) {
            this.f644a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f644a.mo1377b(this.f644a.f374g);
            this.f644a.m217b();
        }
    }

    /* renamed from: com.flurry.sdk.kq$4 */
    class C11294 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f645a;

        C11294(kq kqVar) {
            this.f645a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f645a.m217b();
        }
    }

    /* renamed from: com.flurry.sdk.kq$5 */
    class C11305 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f646a;

        C11305(kq kqVar) {
            this.f646a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f646a.m217b();
        }
    }

    /* renamed from: com.flurry.sdk.kq$6 */
    class C11316 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f647a;

        C11316(kq kqVar) {
            this.f647a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f647a.m219e();
        }
    }

    /* renamed from: com.flurry.sdk.kq$7 */
    class C11327 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f648a;

        C11327(kq kqVar) {
            this.f648a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f648a.m219e();
        }
    }

    /* renamed from: com.flurry.sdk.kq$8 */
    class C11338 extends lw {
        /* renamed from: a */
        final /* synthetic */ kq f649a;

        C11338(kq kqVar) {
            this.f649a = kqVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f649a.m219e();
        }
    }

    /* renamed from: a */
    public abstract jy<List<ReportInfo>> mo1374a();

    /* renamed from: a */
    public abstract void mo1375a(ReportInfo reportInfo);

    public kq() {
        kb.m151a().m158a("com.flurry.android.sdk.NetworkStateEvent", this.f377j);
        this.f373f = mo1374a();
        this.f371d = f369b;
        this.f375h = -1;
        jr.m114a().m120b(new C11283(this));
    }

    /* renamed from: c */
    public final void m227c() {
        jr.m114a().m121c(this.f376i);
        kb.m151a().m160b("com.flurry.android.sdk.NetworkStateEvent", this.f377j);
    }

    /* renamed from: d */
    public final void m229d() {
        this.f370c = false;
        jr.m114a().m120b(new C11294(this));
    }

    /* renamed from: b */
    public final synchronized void m225b(ReportInfo reportInfo) {
        if (reportInfo != null) {
            this.f374g.add(reportInfo);
            jr.m114a().m120b(new C11305(this));
        }
    }

    /* renamed from: d */
    public final synchronized void m230d(ReportInfo reportInfo) {
        reportInfo.a_();
        jr.m114a().m120b(new C11327(this));
    }

    /* renamed from: b */
    private synchronized void m217b() {
        if (!this.f370c) {
            if (this.f375h >= 0) {
                kf.m176a(3, f368a, "Transmit is in progress");
                return;
            }
            m221g();
            if (this.f374g.isEmpty()) {
                this.f371d = f369b;
                this.f375h = -1;
                return;
            }
            this.f375h = 0;
            jr.m114a().m120b(new C11338(this));
        }
    }

    /* renamed from: e */
    private synchronized void m219e() {
        lr.m312b();
        kp kpVar = null;
        if (jk.m92a().f267b) {
            while (this.f375h < this.f374g.size()) {
                List list = this.f374g;
                int i = this.f375h;
                this.f375h = i + 1;
                kp kpVar2 = (kp) list.get(i);
                if (!kpVar2.f363o) {
                    kpVar = kpVar2;
                    break;
                }
            }
        }
        kf.m176a(3, f368a, "Network is not available, aborting transmission");
        if (kpVar == null) {
            m220f();
        } else {
            mo1375a(kpVar);
        }
    }

    /* renamed from: f */
    private synchronized void m220f() {
        m221g();
        mo1376a(this.f374g);
        if (this.f370c) {
            kf.m176a(3, f368a, "Reporter paused");
            this.f371d = f369b;
        } else if (this.f374g.isEmpty()) {
            kf.m176a(3, f368a, "All reports sent successfully");
            this.f371d = f369b;
        } else {
            this.f371d <<= 1;
            String str = f368a;
            StringBuilder stringBuilder = new StringBuilder("One or more reports failed to send, backing off: ");
            stringBuilder.append(this.f371d);
            stringBuilder.append("ms");
            kf.m176a(3, str, stringBuilder.toString());
            jr.m114a().m119a(this.f376i, this.f371d);
        }
        this.f375h = -1;
    }

    /* renamed from: b */
    public synchronized void mo1377b(List<ReportInfo> list) {
        lr.m312b();
        List list2 = (List) this.f373f.m145a();
        if (list2 != null) {
            list.addAll(list2);
        }
    }

    /* renamed from: a */
    public synchronized void mo1376a(List<ReportInfo> list) {
        lr.m312b();
        this.f373f.m146a(new ArrayList(list));
    }

    /* renamed from: g */
    private synchronized void m221g() {
        Iterator it = this.f374g.iterator();
        while (it.hasNext()) {
            kp kpVar = (kp) it.next();
            String str;
            StringBuilder stringBuilder;
            if (kpVar.f363o) {
                str = f368a;
                stringBuilder = new StringBuilder("Url transmitted - ");
                stringBuilder.append(kpVar.f365q);
                stringBuilder.append(" Attempts: ");
                stringBuilder.append(kpVar.f364p);
                kf.m176a(3, str, stringBuilder.toString());
                it.remove();
            } else if (kpVar.f364p > kpVar.m213a()) {
                str = f368a;
                stringBuilder = new StringBuilder("Exceeded max no of attempts - ");
                stringBuilder.append(kpVar.f365q);
                stringBuilder.append(" Attempts: ");
                stringBuilder.append(kpVar.f364p);
                kf.m176a(3, str, stringBuilder.toString());
                it.remove();
            } else if (System.currentTimeMillis() > kpVar.f362n && kpVar.f364p > 0) {
                str = f368a;
                stringBuilder = new StringBuilder("Expired: Time expired - ");
                stringBuilder.append(kpVar.f365q);
                stringBuilder.append(" Attempts: ");
                stringBuilder.append(kpVar.f364p);
                kf.m176a(3, str, stringBuilder.toString());
                it.remove();
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m228c(ReportInfo reportInfo) {
        reportInfo.f363o = true;
        jr.m114a().m120b(new C11316(this));
    }
}
