package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.util.zzt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzaac implements ActivityLifecycleCallbacks, ComponentCallbacks2 {
    private static final zzaac zzazV = new zzaac();
    private final ArrayList<zza> mListeners = new ArrayList();
    private boolean zzadP = false;
    private final AtomicBoolean zzazW = new AtomicBoolean();
    private final AtomicBoolean zzazX = new AtomicBoolean();

    public interface zza {
        void zzas(boolean z);
    }

    private zzaac() {
    }

    public static void zza(Application application) {
        synchronized (zzazV) {
            if (!zzazV.zzadP) {
                application.registerActivityLifecycleCallbacks(zzazV);
                application.registerComponentCallbacks(zzazV);
                zzazV.zzadP = true;
            }
        }
    }

    private void zzas(boolean z) {
        synchronized (zzazV) {
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                ((zza) it.next()).zzas(z);
            }
        }
    }

    public static zzaac zzvB() {
        return zzazV;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.zzazW.compareAndSet(true, false);
        this.zzazX.set(true);
        if (compareAndSet) {
            zzas(false);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.zzazW.compareAndSet(true, false);
        this.zzazX.set(true);
        if (compareAndSet) {
            zzas(false);
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i) {
        if (i == 20 && this.zzazW.compareAndSet(false, true)) {
            this.zzazX.set(true);
            zzas(true);
        }
    }

    public final void zza(zza zza) {
        synchronized (zzazV) {
            this.mListeners.add(zza);
        }
    }

    @TargetApi(16)
    public final boolean zzar(boolean z) {
        if (!this.zzazX.get()) {
            if (!zzt.zzzi()) {
                return z;
            }
            RunningAppProcessInfo runningAppProcessInfo = new RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.zzazX.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.zzazW.set(true);
            }
        }
        return zzvC();
    }

    public final boolean zzvC() {
        return this.zzazW.get();
    }
}
