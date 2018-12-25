package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;

public class km {
    /* renamed from: a */
    private static final String f349a = "km";
    /* renamed from: b */
    private Timer f350b;
    /* renamed from: c */
    private C0503a f351c;
    /* renamed from: d */
    private kn f352d;

    /* renamed from: com.flurry.sdk.km$a */
    class C0503a extends TimerTask {
        /* renamed from: a */
        final /* synthetic */ km f348a;

        private C0503a(km kmVar) {
            this.f348a = kmVar;
        }

        public final void run() {
            kf.m176a(3, km.f349a, "HttpRequest timed out. Cancelling.");
            kn a = this.f348a.f352d;
            long currentTimeMillis = System.currentTimeMillis() - a.f734m;
            String str = kn.f721e;
            StringBuilder stringBuilder = new StringBuilder("Timeout (");
            stringBuilder.append(currentTimeMillis);
            stringBuilder.append("MS) for url: ");
            stringBuilder.append(a.f727f);
            kf.m176a(3, str, stringBuilder.toString());
            a.f737p = 629;
            a.f741t = true;
            a.m670h();
            a.m668f();
        }
    }

    public km(kn knVar) {
        this.f352d = knVar;
    }

    /* renamed from: a */
    public final synchronized void m208a() {
        if (this.f350b != null) {
            this.f350b.cancel();
            this.f350b = null;
            kf.m176a(3, f349a, "HttpRequestTimeoutTimer stopped.");
        }
        this.f351c = null;
    }

    /* renamed from: a */
    public final synchronized void m209a(long j) {
        if ((this.f350b != null ? (byte) 1 : (byte) 0) != (byte) 0) {
            m208a();
        }
        this.f350b = new Timer("HttpRequestTimeoutTimer");
        this.f351c = new C0503a();
        this.f350b.schedule(this.f351c, j);
        String str = f349a;
        StringBuilder stringBuilder = new StringBuilder("HttpRequestTimeoutTimer started: ");
        stringBuilder.append(j);
        stringBuilder.append("MS");
        kf.m176a(3, str, stringBuilder.toString());
    }
}
