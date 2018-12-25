package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;

final class lg {
    /* renamed from: a */
    private Timer f410a;
    /* renamed from: b */
    private C0519a f411b;

    /* renamed from: com.flurry.sdk.lg$a */
    class C0519a extends TimerTask {
        /* renamed from: a */
        final /* synthetic */ lg f409a;

        C0519a(lg lgVar) {
            this.f409a = lgVar;
        }

        public final void run() {
            this.f409a.m263a();
            kb.m151a().m155a(new lh());
        }
    }

    lg() {
    }

    /* renamed from: a */
    public final synchronized void m263a() {
        if (this.f410a != null) {
            this.f410a.cancel();
            this.f410a = null;
        }
        this.f411b = null;
    }

    /* renamed from: a */
    public final synchronized void m264a(long j) {
        if ((this.f410a != null ? 1 : null) != null) {
            m263a();
        }
        this.f410a = new Timer("FlurrySessionTimer");
        this.f411b = new C0519a(this);
        this.f410a.schedule(this.f411b, j);
    }
}
