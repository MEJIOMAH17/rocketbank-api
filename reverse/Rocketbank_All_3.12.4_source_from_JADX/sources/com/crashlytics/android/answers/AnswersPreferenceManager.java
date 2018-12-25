package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import io.fabric.sdk.android.services.persistence.PreferenceStore;

final class AnswersPreferenceManager {
    private final PreferenceStore prefStore;

    AnswersPreferenceManager(PreferenceStore preferenceStore) {
        this.prefStore = preferenceStore;
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void setAnalyticsLaunched() {
        this.prefStore.save(this.prefStore.edit().putBoolean("analytics_launched", true));
    }

    @SuppressLint({"CommitPrefEdits"})
    public final boolean hasAnalyticsLaunched() {
        return this.prefStore.get().getBoolean("analytics_launched", false);
    }
}
