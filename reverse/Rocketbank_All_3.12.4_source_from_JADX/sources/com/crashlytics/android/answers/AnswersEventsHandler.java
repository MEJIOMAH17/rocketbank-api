package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import android.support.v7.recyclerview.C0945R.dimen;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.events.EventsStorageListener;
import io.fabric.sdk.android.services.events.GZIPQueueFileEventStorage;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.concurrent.ScheduledExecutorService;

final class AnswersEventsHandler implements EventsStorageListener {
    private final Context context;
    final ScheduledExecutorService executor;
    private final AnswersFilesManagerProvider filesManagerProvider;
    private final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    private final Kit kit;
    private final SessionMetadataCollector metadataCollector;
    private final HttpRequestFactory requestFactory;
    SessionAnalyticsManagerStrategy strategy = new DisabledSessionAnalyticsManagerStrategy();

    /* renamed from: com.crashlytics.android.answers.AnswersEventsHandler$1 */
    class C03051 implements Runnable {
        final /* synthetic */ dimen val$analyticsSettingsData$e9546bb;
        final /* synthetic */ String val$protocolAndHostOverride;

        C03051(dimen dimen, String str) {
            this.val$analyticsSettingsData$e9546bb = dimen;
            this.val$protocolAndHostOverride = str;
        }

        public final void run() {
            try {
                AnswersEventsHandler.this.strategy.setAnalyticsSettingsData$61d868c(this.val$analyticsSettingsData$e9546bb, this.val$protocolAndHostOverride);
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Answers", "Failed to set analytics settings data", e);
            }
        }
    }

    /* renamed from: com.crashlytics.android.answers.AnswersEventsHandler$2 */
    class C03062 implements Runnable {
        C03062() {
        }

        public final void run() {
            try {
                SessionAnalyticsManagerStrategy sessionAnalyticsManagerStrategy = AnswersEventsHandler.this.strategy;
                AnswersEventsHandler.this.strategy = new DisabledSessionAnalyticsManagerStrategy();
                sessionAnalyticsManagerStrategy.deleteAllEvents();
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Answers", "Failed to disable events", e);
            }
        }
    }

    /* renamed from: com.crashlytics.android.answers.AnswersEventsHandler$3 */
    class C03073 implements Runnable {
        C03073() {
        }

        public final void run() {
            try {
                AnswersEventsHandler.this.strategy.sendEvents();
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Answers", "Failed to send events files", e);
            }
        }
    }

    /* renamed from: com.crashlytics.android.answers.AnswersEventsHandler$4 */
    class C03084 implements Runnable {
        C03084() {
        }

        public final void run() {
            try {
                SessionEventMetadata metadata = AnswersEventsHandler.this.metadataCollector.getMetadata();
                AnswersFilesManagerProvider access$100 = AnswersEventsHandler.this.filesManagerProvider;
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
                }
                SessionAnalyticsFilesManager sessionAnalyticsFilesManager = new SessionAnalyticsFilesManager(access$100.context, new SessionEventTransform(), new SystemCurrentTimeProvider(), new GZIPQueueFileEventStorage(access$100.context, access$100.fileStore.getFilesDir(), "session_analytics.tap", "session_analytics_to_send"));
                sessionAnalyticsFilesManager.registerRollOverListener(AnswersEventsHandler.this);
                AnswersEventsHandler.this.strategy = new EnabledSessionAnalyticsManagerStrategy(AnswersEventsHandler.this.kit, AnswersEventsHandler.this.context, AnswersEventsHandler.this.executor, sessionAnalyticsFilesManager, AnswersEventsHandler.this.requestFactory, metadata, AnswersEventsHandler.this.firebaseAnalyticsApiAdapter);
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Answers", "Failed to enable events", e);
            }
        }
    }

    /* renamed from: com.crashlytics.android.answers.AnswersEventsHandler$5 */
    class C03095 implements Runnable {
        C03095() {
        }

        public final void run() {
            try {
                AnswersEventsHandler.this.strategy.rollFileOver();
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Answers", "Failed to flush events", e);
            }
        }
    }

    public AnswersEventsHandler(Kit kit, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, HttpRequestFactory httpRequestFactory, ScheduledExecutorService scheduledExecutorService, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter) {
        this.kit = kit;
        this.context = context;
        this.filesManagerProvider = answersFilesManagerProvider;
        this.metadataCollector = sessionMetadataCollector;
        this.requestFactory = httpRequestFactory;
        this.executor = scheduledExecutorService;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter;
    }

    public final void onRollOver$552c4e01() {
        try {
            this.executor.submit(new C03073());
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e);
        }
    }

    public final void processEventAsync(final Builder builder) {
        try {
            this.executor.submit(/* anonymous class already generated */);
        } catch (Builder builder2) {
            Fabric.getLogger().mo771e("Answers", "Failed to submit events task", builder2);
        }
    }
}
