package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

public final class ActivityLifecycleManager {
    private final Application application;
    private ActivityLifecycleCallbacksWrapper callbacksWrapper;

    private static class ActivityLifecycleCallbacksWrapper {
        private final Application application;
        private final Set<ActivityLifecycleCallbacks> registeredCallbacks = new HashSet();

        ActivityLifecycleCallbacksWrapper(Application application) {
            this.application = application;
        }

        static /* synthetic */ boolean access$000(ActivityLifecycleCallbacksWrapper activityLifecycleCallbacksWrapper, final Callbacks callbacks) {
            if (activityLifecycleCallbacksWrapper.application == null) {
                return null;
            }
            ActivityLifecycleCallbacks c07401 = new ActivityLifecycleCallbacks() {
                public final void onActivityDestroyed(Activity activity) {
                }

                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    callbacks.onActivityCreated$9bb446d(activity);
                }

                public final void onActivityStarted(Activity activity) {
                    callbacks.onActivityStarted(activity);
                }

                public final void onActivityResumed(Activity activity) {
                    callbacks.onActivityResumed(activity);
                }

                public final void onActivityPaused(Activity activity) {
                    callbacks.onActivityPaused(activity);
                }

                public final void onActivityStopped(Activity activity) {
                    callbacks.onActivityStopped(activity);
                }
            };
            activityLifecycleCallbacksWrapper.application.registerActivityLifecycleCallbacks(c07401);
            activityLifecycleCallbacksWrapper.registeredCallbacks.add(c07401);
            return true;
        }

        static /* synthetic */ void access$100(ActivityLifecycleCallbacksWrapper activityLifecycleCallbacksWrapper) {
            for (ActivityLifecycleCallbacks unregisterActivityLifecycleCallbacks : activityLifecycleCallbacksWrapper.registeredCallbacks) {
                activityLifecycleCallbacksWrapper.application.unregisterActivityLifecycleCallbacks(unregisterActivityLifecycleCallbacks);
            }
        }
    }

    public static abstract class Callbacks {
        public void onActivityCreated$9bb446d(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public ActivityLifecycleManager(Context context) {
        this.application = (Application) context.getApplicationContext();
        if (VERSION.SDK_INT >= 14) {
            this.callbacksWrapper = new ActivityLifecycleCallbacksWrapper(this.application);
        }
    }

    public final boolean registerCallbacks(Callbacks callbacks) {
        return (this.callbacksWrapper == null || ActivityLifecycleCallbacksWrapper.access$000(this.callbacksWrapper, callbacks) == null) ? null : true;
    }

    public final void resetCallbacks() {
        if (this.callbacksWrapper != null) {
            ActivityLifecycleCallbacksWrapper.access$100(this.callbacksWrapper);
        }
    }
}
