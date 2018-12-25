package com.flurry.sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.flurry.sdk.ju.C0498a;
import java.lang.ref.WeakReference;

public class jv {
    /* renamed from: a */
    private static jv f312a = null;
    /* renamed from: b */
    private static final String f313b = "jv";
    /* renamed from: c */
    private Object f314c;

    /* renamed from: com.flurry.sdk.jv$1 */
    class C04991 implements ActivityLifecycleCallbacks {
        /* renamed from: a */
        final /* synthetic */ jv f311a;

        C04991(jv jvVar) {
            this.f311a = jvVar;
        }

        public final void onActivityCreated(Activity activity, Bundle bundle) {
            kf.m176a(3, jv.f313b, "onActivityCreated for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kCreated);
        }

        public final void onActivityStarted(Activity activity) {
            kf.m176a(3, jv.f313b, "onActivityStarted for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kStarted);
        }

        public final void onActivityResumed(Activity activity) {
            kf.m176a(3, jv.f313b, "onActivityResumed for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kResumed);
        }

        public final void onActivityPaused(Activity activity) {
            kf.m176a(3, jv.f313b, "onActivityPaused for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kPaused);
        }

        public final void onActivityStopped(Activity activity) {
            kf.m176a(3, jv.f313b, "onActivityStopped for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kStopped);
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            kf.m176a(3, jv.f313b, "onActivitySaveInstanceState for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kSaveState);
        }

        public final void onActivityDestroyed(Activity activity) {
            kf.m176a(3, jv.f313b, "onActivityDestroyed for activity:".concat(String.valueOf(activity)));
            C04991.m129a(activity, C0498a.kDestroyed);
        }

        /* renamed from: a */
        private static void m129a(Activity activity, C0498a c0498a) {
            ju juVar = new ju();
            juVar.f628a = new WeakReference(activity);
            juVar.f629b = c0498a;
            juVar.m149b();
        }
    }

    /* renamed from: a */
    public static synchronized jv m130a() {
        jv jvVar;
        synchronized (jv.class) {
            if (f312a == null) {
                f312a = new jv();
            }
            jvVar = f312a;
        }
        return jvVar;
    }

    /* renamed from: b */
    public static synchronized void m131b() {
        synchronized (jv.class) {
            if (f312a != null) {
                jv jvVar = f312a;
                if (VERSION.SDK_INT >= 14 && jvVar.f314c != null) {
                    Context context = jr.m114a().f293a;
                    if (context instanceof Application) {
                        ((Application) context).unregisterActivityLifecycleCallbacks((ActivityLifecycleCallbacks) jvVar.f314c);
                        jvVar.f314c = null;
                    }
                }
            }
            f312a = null;
        }
    }

    private jv() {
        if (VERSION.SDK_INT >= 14 && this.f314c == null) {
            Context context = jr.m114a().f293a;
            if (context instanceof Application) {
                this.f314c = new C04991(this);
                ((Application) context).registerActivityLifecycleCallbacks((ActivityLifecycleCallbacks) this.f314c);
            }
        }
    }

    /* renamed from: c */
    public final boolean m133c() {
        return this.f314c != null;
    }
}
