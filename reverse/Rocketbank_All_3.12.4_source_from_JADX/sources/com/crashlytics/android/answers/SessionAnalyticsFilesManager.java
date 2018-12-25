package com.crashlytics.android.answers;

import android.content.Context;
import android.support.v7.recyclerview.C0945R.dimen;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.events.EventsStorage;
import java.io.IOException;
import java.util.UUID;

final class SessionAnalyticsFilesManager extends EventsFilesManager<SessionEvent> {
    private dimen analyticsSettingsData$e9546bb;

    SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, CurrentTimeProvider currentTimeProvider, EventsStorage eventsStorage) throws IOException {
        super(context, sessionEventTransform, currentTimeProvider, eventsStorage);
    }

    protected final String generateUniqueRollOverFileName() {
        UUID randomUUID = UUID.randomUUID();
        StringBuilder stringBuilder = new StringBuilder("sa_");
        stringBuilder.append(randomUUID.toString());
        stringBuilder.append("_");
        stringBuilder.append(this.currentTimeProvider.getCurrentTimeMillis());
        stringBuilder.append(".tap");
        return stringBuilder.toString();
    }

    protected final int getMaxFilesToKeep() {
        return this.analyticsSettingsData$e9546bb == null ? super.getMaxFilesToKeep() : this.analyticsSettingsData$e9546bb.maxPendingSendFileCount;
    }

    protected final int getMaxByteSizePerFile() {
        return this.analyticsSettingsData$e9546bb == null ? super.getMaxByteSizePerFile() : this.analyticsSettingsData$e9546bb.maxByteSizePerFile;
    }

    final void setAnalyticsSettingsData$26f139d6(dimen dimen) {
        this.analyticsSettingsData$e9546bb = dimen;
    }
}
