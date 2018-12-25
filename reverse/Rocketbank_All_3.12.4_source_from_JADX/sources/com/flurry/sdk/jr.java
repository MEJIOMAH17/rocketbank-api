package com.flurry.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;

public class jr {
    /* renamed from: e */
    private static final String f291e = "jr";
    /* renamed from: f */
    private static jr f292f;
    /* renamed from: a */
    public final Context f293a;
    /* renamed from: b */
    public final Handler f294b = new Handler(Looper.getMainLooper());
    /* renamed from: c */
    public final Handler f295c;
    /* renamed from: d */
    public final String f296d;
    /* renamed from: g */
    private final HandlerThread f297g = new HandlerThread("FlurryAgent");
    /* renamed from: h */
    private final kh f298h;

    /* renamed from: a */
    public static jr m114a() {
        return f292f;
    }

    /* renamed from: a */
    public static synchronized void m115a(Context context, String str) {
        synchronized (jr.class) {
            if (f292f != null) {
                if (f292f.f296d.equals(str) == null) {
                    throw new IllegalStateException("Only one API key per application is supported!");
                }
                kf.m190e(f291e, "Flurry is already initialized");
            } else if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            } else if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("API key must be specified");
            } else {
                jr jrVar = new jr(context, str);
                f292f = jrVar;
                jrVar.f298h.m194a(context);
            }
        }
    }

    /* renamed from: b */
    public static synchronized void m116b() {
        synchronized (jr.class) {
            if (f292f == null) {
                return;
            }
            jr jrVar = f292f;
            jrVar.f298h.m193a();
            jrVar.f297g.quit();
            f292f = null;
        }
    }

    private jr(Context context, String str) {
        this.f293a = context.getApplicationContext();
        this.f297g.start();
        this.f295c = new Handler(this.f297g.getLooper());
        this.f296d = str;
        this.f298h = new kh();
    }

    /* renamed from: a */
    public final void m118a(Runnable runnable) {
        this.f294b.post(runnable);
    }

    /* renamed from: b */
    public final void m120b(Runnable runnable) {
        this.f295c.post(runnable);
    }

    /* renamed from: a */
    public final void m119a(Runnable runnable, long j) {
        if (runnable != null) {
            this.f295c.postDelayed(runnable, j);
        }
    }

    /* renamed from: c */
    public final void m121c(Runnable runnable) {
        if (runnable != null) {
            this.f295c.removeCallbacks(runnable);
        }
    }

    /* renamed from: a */
    public final ki m117a(Class<? extends ki> cls) {
        return this.f298h.m195b(cls);
    }
}
