package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;

@SuppressLint({"CommitPrefEdits"})
final class PreferenceManager {
    private final CrashlyticsCore kit;
    private final PreferenceStore preferenceStore;

    public PreferenceManager(PreferenceStore preferenceStore, CrashlyticsCore crashlyticsCore) {
        this.preferenceStore = preferenceStore;
        this.kit = crashlyticsCore;
    }

    final void setShouldAlwaysSendReports$1385ff() {
        this.preferenceStore.save(this.preferenceStore.edit().putBoolean("always_send_reports_opt_in", true));
    }

    final boolean shouldAlwaysSendReports() {
        if (!this.preferenceStore.get().contains("preferences_migration_complete")) {
            PreferenceStore preferenceStoreImpl = new PreferenceStoreImpl(this.kit);
            boolean z = !this.preferenceStore.get().contains("always_send_reports_opt_in") && preferenceStoreImpl.get().contains("always_send_reports_opt_in");
            if (z) {
                this.preferenceStore.save(this.preferenceStore.edit().putBoolean("always_send_reports_opt_in", preferenceStoreImpl.get().getBoolean("always_send_reports_opt_in", false)));
            }
            this.preferenceStore.save(this.preferenceStore.edit().putBoolean("preferences_migration_complete", true));
        }
        return this.preferenceStore.get().getBoolean("always_send_reports_opt_in", false);
    }
}
