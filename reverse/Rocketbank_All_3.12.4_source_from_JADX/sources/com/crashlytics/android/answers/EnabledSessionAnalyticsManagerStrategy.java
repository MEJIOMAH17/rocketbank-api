package com.crashlytics.android.answers;

import android.content.Context;
import android.support.v7.cardview.C0943R.style;
import android.support.v7.gridlayout.C0222R;
import android.support.v7.recyclerview.C0945R.dimen;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.events.FilesSender;
import io.fabric.sdk.android.services.events.TimeBasedFileRollOverRunnable;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class EnabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    ApiKey apiKey = new ApiKey();
    private final Context context;
    boolean customEventsEnabled = true;
    EventFilter eventFilter = new KeepAllEventFilter();
    private final ScheduledExecutorService executorService;
    private final SessionAnalyticsFilesManager filesManager;
    FilesSender filesSender;
    private final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    boolean forwardToFirebaseAnalyticsEnabled = false;
    private final HttpRequestFactory httpRequestFactory;
    boolean includePurchaseEventsInForwardedEvents = false;
    private final Kit kit;
    final SessionEventMetadata metadata;
    boolean predefinedEventsEnabled = true;
    private final AtomicReference<ScheduledFuture<?>> rolloverFutureRef = new AtomicReference();
    volatile int rolloverIntervalSeconds = -1;

    public EnabledSessionAnalyticsManagerStrategy(Kit kit, Context context, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, HttpRequestFactory httpRequestFactory, SessionEventMetadata sessionEventMetadata, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter) {
        this.kit = kit;
        this.context = context;
        this.executorService = scheduledExecutorService;
        this.filesManager = sessionAnalyticsFilesManager;
        this.httpRequestFactory = httpRequestFactory;
        this.metadata = sessionEventMetadata;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter;
    }

    public final void setAnalyticsSettingsData$61d868c(dimen dimen, String str) {
        this.filesSender = new AnswersRetryFilesSender(new SessionAnalyticsFilesSender(this.kit, str, dimen.analyticsURL, this.httpRequestFactory, this.apiKey.getValue(this.context)), new RetryManager(new C0222R.dimen(new RandomBackoff(new style()), new C0222R(5))));
        this.filesManager.setAnalyticsSettingsData$26f139d6(dimen);
        this.forwardToFirebaseAnalyticsEnabled = dimen.forwardToFirebaseAnalytics;
        this.includePurchaseEventsInForwardedEvents = dimen.includePurchaseEventsInForwardedEvents;
        str = Fabric.getLogger();
        String str2 = "Answers";
        StringBuilder stringBuilder = new StringBuilder("Firebase analytics forwarding ");
        stringBuilder.append(this.forwardToFirebaseAnalyticsEnabled ? "enabled" : "disabled");
        str.mo768d(str2, stringBuilder.toString());
        str = Fabric.getLogger();
        str2 = "Answers";
        stringBuilder = new StringBuilder("Firebase analytics including purchase events ");
        stringBuilder.append(this.includePurchaseEventsInForwardedEvents ? "enabled" : "disabled");
        str.mo768d(str2, stringBuilder.toString());
        this.customEventsEnabled = dimen.trackCustomEvents;
        str = Fabric.getLogger();
        str2 = "Answers";
        stringBuilder = new StringBuilder("Custom event tracking ");
        stringBuilder.append(this.customEventsEnabled ? "enabled" : "disabled");
        str.mo768d(str2, stringBuilder.toString());
        this.predefinedEventsEnabled = dimen.trackPredefinedEvents;
        str = Fabric.getLogger();
        str2 = "Answers";
        stringBuilder = new StringBuilder("Predefined event tracking ");
        stringBuilder.append(this.predefinedEventsEnabled ? "enabled" : "disabled");
        str.mo768d(str2, stringBuilder.toString());
        if (dimen.samplingRate > 1) {
            Fabric.getLogger().mo768d("Answers", "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(dimen.samplingRate);
        }
        this.rolloverIntervalSeconds = dimen.flushIntervalSeconds;
        scheduleTimeBasedFileRollOver(null, (long) this.rolloverIntervalSeconds);
    }

    public final void processEvent(Builder builder) {
        SessionEvent sessionEvent = new SessionEvent(this.metadata, builder.timestamp, builder.type, builder.details, builder.customType, builder.customAttributes, builder.predefinedType, builder.predefinedAttributes);
        if (this.customEventsEnabled == null && Type.CUSTOM.equals(sessionEvent.type) != null) {
            Fabric.getLogger().mo768d("Answers", "Custom events tracking disabled - skipping event: ".concat(String.valueOf(sessionEvent)));
        } else if (this.predefinedEventsEnabled == null && Type.PREDEFINED.equals(sessionEvent.type) != null) {
            Fabric.getLogger().mo768d("Answers", "Predefined events tracking disabled - skipping event: ".concat(String.valueOf(sessionEvent)));
        } else if (this.eventFilter.skipEvent(sessionEvent) != null) {
            Fabric.getLogger().mo768d("Answers", "Skipping filtered event: ".concat(String.valueOf(sessionEvent)));
        } else {
            try {
                this.filesManager.writeEvent(sessionEvent);
            } catch (Builder builder2) {
                Fabric.getLogger().mo771e("Answers", "Failed to write event: ".concat(String.valueOf(sessionEvent)), builder2);
            }
            Object obj = null;
            if ((this.rolloverIntervalSeconds != -1 ? 1 : null) != null) {
                scheduleTimeBasedFileRollOver((long) this.rolloverIntervalSeconds, (long) this.rolloverIntervalSeconds);
            }
            if (!(Type.CUSTOM.equals(sessionEvent.type) == null && Type.PREDEFINED.equals(sessionEvent.type) == null)) {
                obj = 1;
            }
            builder2 = "purchase".equals(sessionEvent.predefinedType);
            if (this.forwardToFirebaseAnalyticsEnabled) {
                if (obj != null) {
                    if (builder2 == null || this.includePurchaseEventsInForwardedEvents != null) {
                        try {
                            this.firebaseAnalyticsApiAdapter.processEvent(sessionEvent);
                        } catch (Builder builder22) {
                            Fabric.getLogger().mo771e("Answers", "Failed to map event to Firebase: ".concat(String.valueOf(sessionEvent)), builder22);
                        }
                    }
                }
            }
        }
    }

    public final void sendEvents() {
        if (this.filesSender == null) {
            CommonUtils.logControlled(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        CommonUtils.logControlled(this.context, "Sending all files");
        List batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i = 0;
        while (batchOfFilesToSend.size() > 0) {
            try {
                CommonUtils.logControlled(this.context, String.format(Locale.US, "attempt to send batch of %d files", new Object[]{Integer.valueOf(batchOfFilesToSend.size())}));
                boolean send = this.filesSender.send(batchOfFilesToSend);
                if (send) {
                    i += batchOfFilesToSend.size();
                    this.filesManager.deleteSentFiles(batchOfFilesToSend);
                }
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
            } catch (Throwable e) {
                Context context = this.context;
                StringBuilder stringBuilder = new StringBuilder("Failed to send batch of analytics files to server: ");
                stringBuilder.append(e.getMessage());
                CommonUtils.logControlledError(context, stringBuilder.toString(), e);
            }
        }
        if (i == 0) {
            this.filesManager.deleteOldestInRollOverIfOverMax();
        }
    }

    public final void cancelTimeBasedFileRollOver() {
        if (this.rolloverFutureRef.get() != null) {
            CommonUtils.logControlled(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            ((ScheduledFuture) this.rolloverFutureRef.get()).cancel(false);
            this.rolloverFutureRef.set(null);
        }
    }

    public final void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    public final boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (Throwable e) {
            CommonUtils.logControlledError(this.context, "Failed to roll file over.", e);
            return false;
        }
    }

    private void scheduleTimeBasedFileRollOver(long j, long j2) {
        if ((this.rolloverFutureRef.get() == null ? 1 : null) != null) {
            Runnable timeBasedFileRollOverRunnable = new TimeBasedFileRollOverRunnable(this.context, this);
            Context context = this.context;
            StringBuilder stringBuilder = new StringBuilder("Scheduling time based file roll over every ");
            stringBuilder.append(j2);
            stringBuilder.append(" seconds");
            CommonUtils.logControlled(context, stringBuilder.toString());
            try {
                this.rolloverFutureRef.set(this.executorService.scheduleAtFixedRate(timeBasedFileRollOverRunnable, j, j2, TimeUnit.SECONDS));
            } catch (long j3) {
                CommonUtils.logControlledError(this.context, "Failed to schedule time based file roll over", j3);
            }
        }
    }
}
