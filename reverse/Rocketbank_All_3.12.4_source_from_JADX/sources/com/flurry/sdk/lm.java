package com.flurry.sdk;

public final class lm {
    /* renamed from: a */
    private static long f416a = 100;
    /* renamed from: b */
    private static lm f417b;
    /* renamed from: c */
    private final ln f418c = new ln();

    /* renamed from: a */
    public static synchronized lm m271a() {
        lm lmVar;
        synchronized (lm.class) {
            if (f417b == null) {
                f417b = new lm();
            }
            lmVar = f417b;
        }
        return lmVar;
    }

    /* renamed from: b */
    public static synchronized void m272b() {
        synchronized (lm.class) {
            if (f417b != null) {
                f417b.m273c();
                f417b = null;
            }
        }
    }

    /* renamed from: a */
    public final synchronized void m274a(ka<ll> kaVar) {
        kb.m151a().m158a("com.flurry.android.sdk.TickEvent", kaVar);
        if (kb.m151a().m159b("com.flurry.android.sdk.TickEvent") > null) {
            this.f418c.m280a();
        }
    }

    /* renamed from: b */
    public final synchronized void m275b(ka<ll> kaVar) {
        kb.m151a().m160b("com.flurry.android.sdk.TickEvent", kaVar);
        if (kb.m151a().m159b("com.flurry.android.sdk.TickEvent") == null) {
            this.f418c.m281b();
        }
    }

    /* renamed from: c */
    private synchronized void m273c() {
        kb.m151a().m157a("com.flurry.android.sdk.TickEvent");
        this.f418c.m281b();
    }
}
