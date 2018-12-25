package com.crashlytics.android.beta;

import android.annotation.SuppressLint;
import android.content.Context;
import com.android.databinding.library.C0291R;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class AbstractCheckForUpdatesController implements UpdatesController {
    private Beta beta;
    private C0291R betaSettings$1b8c5181;
    private BuildProperties buildProps;
    private Context context;
    private CurrentTimeProvider currentTimeProvider;
    private final AtomicBoolean externallyReady;
    private HttpRequestFactory httpRequestFactory;
    private IdManager idManager;
    private final AtomicBoolean initialized;
    private long lastCheckTimeMillis;
    private PreferenceStore preferenceStore;

    public AbstractCheckForUpdatesController() {
        this(false);
    }

    public AbstractCheckForUpdatesController(boolean z) {
        this.initialized = new AtomicBoolean();
        this.lastCheckTimeMillis = 0;
        this.externallyReady = new AtomicBoolean(z);
    }

    public final void initialize$c689b02(Context context, Beta beta, IdManager idManager, C0291R c0291r, BuildProperties buildProperties, PreferenceStore preferenceStore, CurrentTimeProvider currentTimeProvider, HttpRequestFactory httpRequestFactory) {
        this.context = context;
        this.beta = beta;
        this.idManager = idManager;
        this.betaSettings$1b8c5181 = c0291r;
        this.buildProps = buildProperties;
        this.preferenceStore = preferenceStore;
        this.currentTimeProvider = currentTimeProvider;
        this.httpRequestFactory = httpRequestFactory;
        this.initialized.set(true);
        if (this.externallyReady.get() != null) {
            checkForUpdates();
        }
    }

    protected final boolean signalExternallyReady() {
        this.externallyReady.set(true);
        return this.initialized.get();
    }

    @SuppressLint({"CommitPrefEdits"})
    protected final void checkForUpdates() {
        synchronized (this.preferenceStore) {
            if (this.preferenceStore.get().contains("last_update_check")) {
                this.preferenceStore.save(this.preferenceStore.edit().remove("last_update_check"));
            }
        }
        long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
        long j = ((long) this.betaSettings$1b8c5181.updateSuspendDurationSeconds) * 1000;
        Fabric.getLogger().mo768d("Beta", "Check for updates delay: ".concat(String.valueOf(j)));
        StringBuilder stringBuilder = new StringBuilder("Check for updates last check time: ");
        stringBuilder.append(this.lastCheckTimeMillis);
        Fabric.getLogger().mo768d("Beta", stringBuilder.toString());
        long j2 = this.lastCheckTimeMillis + j;
        StringBuilder stringBuilder2 = new StringBuilder("Check for updates current time: ");
        stringBuilder2.append(currentTimeMillis);
        stringBuilder2.append(", next check time: ");
        stringBuilder2.append(j2);
        Fabric.getLogger().mo768d("Beta", stringBuilder2.toString());
        if (currentTimeMillis >= j2) {
            try {
                performUpdateCheck();
            } finally {
                this.lastCheckTimeMillis = currentTimeMillis;
            }
        } else {
            Fabric.getLogger().mo768d("Beta", "Check for updates next check time was not passed");
        }
    }

    private void performUpdateCheck() {
        Fabric.getLogger().mo768d("Beta", "Performing update check");
        new CheckForUpdatesRequest(this.beta, CommonUtils.getStringsFileValue(this.beta.getContext(), "com.crashlytics.ApiEndpoint"), this.betaSettings$1b8c5181.updateUrl, this.httpRequestFactory, new CheckForUpdatesResponseTransform()).invoke(new ApiKey().getValue(this.context), (String) this.idManager.getDeviceIdentifiers().get(DeviceIdentifierType.FONT_TOKEN), this.buildProps);
    }
}
