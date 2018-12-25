package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.persistence.FileStore;
import java.io.File;

final class NativeFileUtils {
    private final FileStore fileStore;
    private final String markerName;

    public NativeFileUtils(String str, FileStore fileStore) {
        this.markerName = str;
        this.fileStore = fileStore;
    }

    public final boolean create() {
        try {
            return new File(this.fileStore.getFilesDir(), this.markerName).createNewFile();
        } catch (Throwable e) {
            StringBuilder stringBuilder = new StringBuilder("Error creating marker: ");
            stringBuilder.append(this.markerName);
            Fabric.getLogger().mo771e("CrashlyticsCore", stringBuilder.toString(), e);
            return false;
        }
    }

    public final boolean isPresent() {
        return new File(this.fileStore.getFilesDir(), this.markerName).exists();
    }

    public final boolean remove() {
        return new File(this.fileStore.getFilesDir(), this.markerName).delete();
    }
}
