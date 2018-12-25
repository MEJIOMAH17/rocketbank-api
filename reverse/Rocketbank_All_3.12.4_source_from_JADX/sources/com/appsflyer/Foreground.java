package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;

public final class Foreground implements ActivityLifecycleCallbacks {
    private static Foreground instance;
    private boolean foreground = false;
    private Handler handler = new Handler();
    private List<Listener> listeners = new CopyOnWriteArrayList();
    private boolean paused = true;

    public interface Listener {
        void onBecameBackground(Activity activity);

        void onBecameForeground(Activity activity);
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public static Foreground init(Application application) {
        if (instance == null) {
            instance = new Foreground();
            if (VERSION.SDK_INT >= 14) {
                application.registerActivityLifecycleCallbacks(instance);
            }
        }
        return instance;
    }

    public static Foreground getInstance() {
        if (instance != null) {
            return instance;
        }
        throw new IllegalStateException("Foreground is not initialised - invoke at least once with parameter init/get");
    }

    public final void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public final void onActivityResumed(Activity activity) {
        this.paused = false;
        int i = this.foreground ^ 1;
        this.foreground = true;
        if (i != 0) {
            for (Listener onBecameForeground : this.listeners) {
                try {
                    onBecameForeground.onBecameForeground(activity);
                } catch (Throwable e) {
                    AFLogger.afLogE("Listener threw exception! ", e);
                }
            }
        }
    }

    public final void onActivityPaused(final Activity activity) {
        this.paused = true;
        new Timer().schedule(new TimerTask() {
            public final void run() {
                if (Foreground.this.foreground && Foreground.this.paused) {
                    Foreground.this.foreground = false;
                    for (Listener onBecameBackground : Foreground.this.listeners) {
                        try {
                            onBecameBackground.onBecameBackground(activity);
                        } catch (Throwable e) {
                            AFLogger.afLogE("Listener threw exception! ", e);
                        }
                    }
                }
            }
        }, 500);
    }
}
