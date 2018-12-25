package ru.rocketbank.r2d2;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: RocketApplication.kt */
public final class RocketApplication$activityLifecycleCallbacks$1 implements ActivityLifecycleCallbacks {
    final /* synthetic */ RocketApplication this$0;

    RocketApplication$activityLifecycleCallbacks$1(RocketApplication rocketApplication) {
        this.this$0 = rocketApplication;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.this$0.currentActivity = activity;
        RocketApplication.access$getAnalyticsManager$p(this.this$0);
        bundle = null;
        AnalyticsManager.logLastActivity(activity != null ? activity.getLocalClassName() : null);
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Current activity: ");
        if (activity != null) {
            bundle = activity.getLocalClassName();
        }
        stringBuilder.append(bundle);
        Log.v(tag_app, stringBuilder.toString());
    }

    public final void onActivityStarted(Activity activity) {
        this.this$0.currentActivity = activity;
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Current activity");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(tag_app, stringBuilder.toString());
    }

    public final void onActivityResumed(Activity activity) {
        this.this$0.currentActivity = activity;
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Current activity: ");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(tag_app, stringBuilder.toString());
    }

    public final void onActivityPaused(Activity activity) {
        RocketApplication.access$getAnalyticsManager$p(this.this$0);
        AnalyticsManager.logLastActivityPaused(activity != null ? activity.getLocalClassName() : null);
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Shutdown activity: ");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(tag_app, stringBuilder.toString());
        if (this.this$0.currentActivity != null && Intrinsics.areEqual(this.this$0.currentActivity, activity) != null) {
            this.this$0.currentActivity = null;
        }
    }

    public final void onActivityStopped(Activity activity) {
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Shutdown activity: ");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(tag_app, stringBuilder.toString());
        if (this.this$0.currentActivity != null && Intrinsics.areEqual(this.this$0.currentActivity, activity) != null) {
            this.this$0.currentActivity = null;
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        bundle = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Shutdown activity: ");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(bundle, stringBuilder.toString());
        if (this.this$0.currentActivity != null && Intrinsics.areEqual(this.this$0.currentActivity, activity) != null) {
            this.this$0.currentActivity = null;
        }
    }

    public final void onActivityDestroyed(Activity activity) {
        String tag_app = RocketApplication.Companion.getTAG_APP();
        StringBuilder stringBuilder = new StringBuilder("Shutdown activity: ");
        stringBuilder.append(activity != null ? activity.getLocalClassName() : null);
        Log.v(tag_app, stringBuilder.toString());
        if (this.this$0.currentActivity != null && Intrinsics.areEqual(this.this$0.currentActivity, activity) != null) {
            this.this$0.currentActivity = null;
        }
    }
}
