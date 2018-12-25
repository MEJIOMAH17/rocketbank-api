package com.crashlytics.android.answers;

import android.app.Activity;
import com.crashlytics.android.answers.AnswersEventsHandler.C03084;
import com.crashlytics.android.answers.AnswersEventsHandler.C03095;
import com.crashlytics.android.answers.BackgroundManager.Listener;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import java.util.Collections;

final class SessionAnalyticsManager implements Listener {
    final BackgroundManager backgroundManager;
    final AnswersEventsHandler eventsHandler;
    private final long installedAt;
    final ActivityLifecycleManager lifecycleManager;
    final AnswersPreferenceManager preferenceManager;

    SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler, ActivityLifecycleManager activityLifecycleManager, BackgroundManager backgroundManager, AnswersPreferenceManager answersPreferenceManager, long j) {
        this.eventsHandler = answersEventsHandler;
        this.lifecycleManager = activityLifecycleManager;
        this.backgroundManager = backgroundManager;
        this.preferenceManager = answersPreferenceManager;
        this.installedAt = j;
    }

    public final void enable() {
        AnswersEventsHandler answersEventsHandler = this.eventsHandler;
        try {
            answersEventsHandler.executor.submit(new C03084());
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e);
        }
        this.lifecycleManager.registerCallbacks(new AnswersLifecycleCallbacks(this, this.backgroundManager));
        this.backgroundManager.registerListener(this);
        if ((this.preferenceManager.hasAnalyticsLaunched() ^ 1) != 0) {
            long j = this.installedAt;
            Fabric.getLogger().mo768d("Answers", "Logged install");
            answersEventsHandler = this.eventsHandler;
            Builder builder = new Builder(Type.INSTALL);
            builder.details = Collections.singletonMap("installedAt", String.valueOf(j));
            try {
                answersEventsHandler.executor.submit(/* anonymous class already generated */);
            } catch (Throwable e2) {
                Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e2);
            }
            this.preferenceManager.setAnalyticsLaunched();
        }
    }

    public final void onLifecycle(Activity activity, Type type) {
        StringBuilder stringBuilder = new StringBuilder("Logged lifecycle event: ");
        stringBuilder.append(type.name());
        Fabric.getLogger().mo768d("Answers", stringBuilder.toString());
        AnswersEventsHandler answersEventsHandler = this.eventsHandler;
        activity = Collections.singletonMap("activity", activity.getClass().getName());
        Builder builder = new Builder(type);
        builder.details = activity;
        answersEventsHandler.processEventAsync(builder);
    }

    public final void onBackground() {
        Fabric.getLogger().mo768d("Answers", "Flush events when app is backgrounded");
        AnswersEventsHandler answersEventsHandler = this.eventsHandler;
        try {
            answersEventsHandler.executor.submit(new C03095());
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e);
        }
    }
}
