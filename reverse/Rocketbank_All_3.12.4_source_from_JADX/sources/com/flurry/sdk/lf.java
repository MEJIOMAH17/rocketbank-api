package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import com.flurry.sdk.le.C0517a;
import com.flurry.sdk.lj.C0520a;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public class lf implements C0520a {
    /* renamed from: b */
    private static lf f687b = null;
    /* renamed from: c */
    private static final String f688c = "lf";
    /* renamed from: a */
    public long f689a;
    /* renamed from: d */
    private final Map<Context, ld> f690d = new WeakHashMap();
    /* renamed from: e */
    private final lg f691e = new lg();
    /* renamed from: f */
    private final Object f692f = new Object();
    /* renamed from: g */
    private long f693g;
    /* renamed from: h */
    private ld f694h;
    /* renamed from: i */
    private ka<lh> f695i = new C11511(this);
    /* renamed from: j */
    private ka<ju> f696j = new C11522(this);

    /* renamed from: com.flurry.sdk.lf$1 */
    class C11511 implements ka<lh> {
        /* renamed from: a */
        final /* synthetic */ lf f682a;

        C11511(lf lfVar) {
            this.f682a = lfVar;
        }

        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1365a(jz jzVar) {
            this.f682a.m642h();
        }
    }

    /* renamed from: com.flurry.sdk.lf$2 */
    class C11522 implements ka<ju> {
        /* renamed from: a */
        final /* synthetic */ lf f683a;

        C11522(lf lfVar) {
            this.f683a = lfVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            ju juVar = (ju) jzVar;
            Context context = (Activity) juVar.f628a.get();
            if (context == null) {
                kf.m178a(lf.f688c, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
                return;
            }
            String f;
            StringBuilder stringBuilder;
            switch (juVar.f629b) {
                case kStarted:
                    f = lf.f688c;
                    stringBuilder = new StringBuilder("Automatic onStartSession for context:");
                    stringBuilder.append(juVar.f628a);
                    kf.m176a(3, f, stringBuilder.toString());
                    this.f683a.m639e(context);
                    return;
                case kStopped:
                    f = lf.f688c;
                    stringBuilder = new StringBuilder("Automatic onEndSession for context:");
                    stringBuilder.append(juVar.f628a);
                    kf.m176a(3, f, stringBuilder.toString());
                    this.f683a.m648d(context);
                    return;
                case kDestroyed:
                    f = lf.f688c;
                    stringBuilder = new StringBuilder("Automatic onEndSession (destroyed) for context:");
                    stringBuilder.append(juVar.f628a);
                    kf.m176a(3, f, stringBuilder.toString());
                    this.f683a.m648d(context);
                    break;
                default:
                    break;
            }
        }
    }

    /* renamed from: com.flurry.sdk.lf$3 */
    class C11533 extends lw {
        /* renamed from: a */
        final /* synthetic */ lf f684a;

        C11533(lf lfVar) {
            this.f684a = lfVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            this.f684a.m642h();
        }
    }

    /* renamed from: a */
    public static synchronized lf m634a() {
        lf lfVar;
        synchronized (lf.class) {
            if (f687b == null) {
                f687b = new lf();
            }
            lfVar = f687b;
        }
        return lfVar;
    }

    /* renamed from: b */
    public static synchronized void m638b() {
        synchronized (lf.class) {
            if (f687b != null) {
                kb.m151a().m156a(f687b.f695i);
                kb.m151a().m156a(f687b.f696j);
                li.m651a().m269b("ContinueSessionMillis", f687b);
            }
            f687b = null;
        }
    }

    private lf() {
        lj a = li.m651a();
        this.f689a = 0;
        this.f693g = ((Long) a.m266a("ContinueSessionMillis")).longValue();
        a.m267a("ContinueSessionMillis", (C0520a) this);
        String str = f688c;
        StringBuilder stringBuilder = new StringBuilder("initSettings, ContinueSessionMillis = ");
        stringBuilder.append(this.f693g);
        kf.m176a(4, str, stringBuilder.toString());
        kb.m151a().m158a("com.flurry.android.sdk.ActivityLifecycleEvent", this.f696j);
        kb.m151a().m158a("com.flurry.android.sdk.FlurrySessionTimerEvent", this.f695i);
    }

    /* renamed from: g */
    private synchronized int m641g() {
        return this.f690d.size();
    }

    /* renamed from: c */
    public final ld m646c() {
        ld ldVar;
        synchronized (this.f692f) {
            ldVar = this.f694h;
        }
        return ldVar;
    }

    /* renamed from: a */
    public final synchronized void m643a(Context context) {
        if (!(context instanceof Activity)) {
            return;
        }
        if (jv.m130a().m133c()) {
            kf.m176a(3, f688c, "bootstrap for context:".concat(String.valueOf(context)));
            m639e(context);
        }
    }

    /* renamed from: b */
    public final synchronized void m645b(Context context) {
        if (!jv.m130a().m133c() || !(context instanceof Activity)) {
            kf.m176a(3, f688c, "Manual onStartSession for context:".concat(String.valueOf(context)));
            m639e(context);
        }
    }

    /* renamed from: c */
    public final synchronized void m647c(Context context) {
        if (!jv.m130a().m133c() || !(context instanceof Activity)) {
            kf.m176a(3, f688c, "Manual onEndSession for context:".concat(String.valueOf(context)));
            m648d(context);
        }
    }

    /* renamed from: d */
    public final synchronized boolean m649d() {
        if (m646c() != null) {
            return true;
        }
        kf.m176a(2, f688c, "Session not found. No active session");
        return false;
    }

    /* renamed from: e */
    public final synchronized void m650e() {
        for (Entry entry : this.f690d.entrySet()) {
            le leVar = new le();
            leVar.f678a = new WeakReference(entry.getKey());
            leVar.f679b = (ld) entry.getValue();
            leVar.f680c = C0517a.f405d;
            jd.m535a();
            leVar.f681d = jd.m537d();
            leVar.m149b();
        }
        this.f690d.clear();
        jr.m114a().m120b(new C11533(this));
    }

    /* renamed from: e */
    private synchronized void m639e(Context context) {
        if (((ld) this.f690d.get(context)) == null) {
            le leVar;
            this.f691e.m263a();
            ld c = m646c();
            if (c == null) {
                c = new ld();
                kf.m190e(f688c, "Flurry session started for context:".concat(String.valueOf(context)));
                leVar = new le();
                leVar.f678a = new WeakReference(context);
                leVar.f679b = c;
                leVar.f680c = C0517a.f402a;
                leVar.m149b();
            }
            this.f690d.put(context, c);
            synchronized (this.f692f) {
                this.f694h = c;
            }
            kf.m190e(f688c, "Flurry session resumed for context:".concat(String.valueOf(context)));
            leVar = new le();
            leVar.f678a = new WeakReference(context);
            leVar.f679b = c;
            leVar.f680c = C0517a.f404c;
            leVar.m149b();
            this.f689a = 0;
        } else if (jv.m130a().m133c()) {
            kf.m176a(3, f688c, "Session already started with context:".concat(String.valueOf(context)));
        } else {
            kf.m190e(f688c, "Session already started with context:".concat(String.valueOf(context)));
        }
    }

    /* renamed from: d */
    final synchronized void m648d(Context context) {
        ld ldVar = (ld) this.f690d.remove(context);
        if (ldVar != null) {
            kf.m190e(f688c, "Flurry session paused for context:".concat(String.valueOf(context)));
            le leVar = new le();
            leVar.f678a = new WeakReference(context);
            leVar.f679b = ldVar;
            jd.m535a();
            leVar.f681d = jd.m537d();
            leVar.f680c = C0517a.f405d;
            leVar.m149b();
            if (m641g() == null) {
                this.f691e.m264a(this.f693g);
                this.f689a = System.currentTimeMillis();
                return;
            }
            this.f689a = 0;
        } else if (jv.m130a().m133c()) {
            kf.m176a(3, f688c, "Session cannot be ended, session not found for context:".concat(String.valueOf(context)));
        } else {
            kf.m190e(f688c, "Session cannot be ended, session not found for context:".concat(String.valueOf(context)));
        }
    }

    /* renamed from: h */
    private synchronized void m642h() {
        int g = m641g();
        if (g > 0) {
            kf.m176a(5, f688c, "Session cannot be finalized, sessionContextCount:".concat(String.valueOf(g)));
            return;
        }
        final ld c = m646c();
        if (c == null) {
            kf.m176a(5, f688c, "Session cannot be finalized, current session not found");
            return;
        }
        kf.m190e(f688c, "Flurry session ended");
        le leVar = new le();
        leVar.f679b = c;
        leVar.f680c = C0517a.f406e;
        jd.m535a();
        leVar.f681d = jd.m537d();
        leVar.m149b();
        jr.m114a().m120b(new lw(this) {
            /* renamed from: b */
            final /* synthetic */ lf f686b;

            /* renamed from: a */
            public final void mo1370a() {
                lf.m637a(this.f686b, c);
            }
        });
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        if (str.equals("ContinueSessionMillis") != null) {
            this.f693g = ((Long) obj).longValue();
            String str2 = f688c;
            StringBuilder stringBuilder = new StringBuilder("onSettingUpdate, ContinueSessionMillis = ");
            stringBuilder.append(this.f693g);
            kf.m176a(4, str2, stringBuilder.toString());
            return;
        }
        kf.m176a(6, f688c, "onSettingUpdate internal error!");
    }

    /* renamed from: a */
    static /* synthetic */ void m637a(lf lfVar, ld ldVar) {
        synchronized (lfVar.f692f) {
            if (lfVar.f694h == ldVar) {
                lfVar.f694h = null;
            }
        }
    }
}
