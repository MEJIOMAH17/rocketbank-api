package com.crashlytics.android.answers;

import android.content.Context;
import android.support.v4.util.ObjectsCompat;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import io.fabric.sdk.android.Fabric;

final class FirebaseAnalyticsApiAdapter {
    private final Context context;
    private EventLogger eventLogger;
    private final FirebaseAnalyticsEventMapper eventMapper;

    public FirebaseAnalyticsApiAdapter(Context context) {
        this(context, new FirebaseAnalyticsEventMapper());
    }

    private FirebaseAnalyticsApiAdapter(Context context, FirebaseAnalyticsEventMapper firebaseAnalyticsEventMapper) {
        this.context = context;
        this.eventMapper = firebaseAnalyticsEventMapper;
    }

    public final void processEvent(SessionEvent sessionEvent) {
        if (this.eventLogger == null) {
            this.eventLogger = ObjectsCompat.getEventLogger(this.context);
        }
        EventLogger eventLogger = this.eventLogger;
        if (eventLogger == null) {
            Fabric.getLogger().mo768d("Answers", "Firebase analytics logging was enabled, but not available...");
            return;
        }
        FirebaseAnalyticsEvent mapEvent = FirebaseAnalyticsEventMapper.mapEvent(sessionEvent);
        if (mapEvent == null) {
            Fabric.getLogger().mo768d("Answers", "Fabric event was not mappable to Firebase event: ".concat(String.valueOf(sessionEvent)));
            return;
        }
        eventLogger.logEvent(mapEvent.getEventName(), mapEvent.getEventParams());
        if ("levelEnd".equals(sessionEvent.predefinedType) != null) {
            eventLogger.logEvent(Event.POST_SCORE, mapEvent.getEventParams());
        }
    }
}
