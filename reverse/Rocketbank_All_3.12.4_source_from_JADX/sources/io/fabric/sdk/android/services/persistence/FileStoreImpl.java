package io.fabric.sdk.android.services.persistence;

import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import java.io.File;

public final class FileStoreImpl implements FileStore {
    private final String contentPath;
    private final Context context;
    private final String legacySupport;

    public FileStoreImpl(Kit kit) {
        if (kit.getContext() == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.context = kit.getContext();
        StringBuilder stringBuilder = new StringBuilder(".Fabric");
        stringBuilder.append(File.separator);
        stringBuilder.append(kit.getIdentifier());
        this.contentPath = stringBuilder.toString();
        kit = new StringBuilder("Android/");
        kit.append(this.context.getPackageName());
        this.legacySupport = kit.toString();
    }

    public final File getFilesDir() {
        File filesDir = this.context.getFilesDir();
        if (filesDir != null) {
            if (!filesDir.exists()) {
                if (!filesDir.mkdirs()) {
                    Fabric.getLogger().mo776w("Fabric", "Couldn't create file");
                }
            }
            return filesDir;
        }
        Fabric.getLogger().mo768d("Fabric", "Null File");
        return null;
    }
}
