package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

final class DefaultCachedSettingsIo implements CachedSettingsIo {
    private final Kit kit;

    public DefaultCachedSettingsIo(Kit kit) {
        this.kit = kit;
    }

    public final JSONObject readCachedSettings() {
        Closeable fileInputStream;
        Throwable e;
        Fabric.getLogger().mo768d("Fabric", "Reading cached settings...");
        Closeable closeable = null;
        try {
            JSONObject jSONObject;
            File file = new File(new FileStoreImpl(this.kit).getFilesDir(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream));
                    closeable = fileInputStream;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        Fabric.getLogger().mo771e("Fabric", "Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    } catch (Throwable th) {
                        e = th;
                        closeable = fileInputStream;
                        CommonUtils.closeOrLog(closeable, "Error while closing settings cache file.");
                        throw e;
                    }
                }
            }
            Fabric.getLogger().mo768d("Fabric", "No cached settings found.");
            jSONObject = null;
            CommonUtils.closeOrLog(closeable, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            Fabric.getLogger().mo771e("Fabric", "Failed to fetch cached settings", e);
            CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
            return null;
        } catch (Throwable th2) {
            e = th2;
            CommonUtils.closeOrLog(closeable, "Error while closing settings cache file.");
            throw e;
        }
    }

    public final void writeCachedSettings(long j, JSONObject jSONObject) {
        Throwable e;
        Fabric.getLogger().mo768d("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            Closeable closeable = null;
            try {
                jSONObject.put("expires_at", j);
                j = new FileWriter(new File(new FileStoreImpl(this.kit).getFilesDir(), "com.crashlytics.settings.json"));
                try {
                    j.write(jSONObject.toString());
                    j.flush();
                    CommonUtils.closeOrLog(j, "Failed to close settings writer.");
                } catch (Exception e2) {
                    e = e2;
                    closeable = j;
                    try {
                        Fabric.getLogger().mo771e("Fabric", "Failed to cache settings", e);
                        CommonUtils.closeOrLog(closeable, "Failed to close settings writer.");
                    } catch (Throwable th) {
                        e = th;
                        CommonUtils.closeOrLog(closeable, "Failed to close settings writer.");
                        throw e;
                    }
                } catch (Throwable th2) {
                    e = th2;
                    closeable = j;
                    CommonUtils.closeOrLog(closeable, "Failed to close settings writer.");
                    throw e;
                }
            } catch (Exception e3) {
                e = e3;
                Fabric.getLogger().mo771e("Fabric", "Failed to cache settings", e);
                CommonUtils.closeOrLog(closeable, "Failed to close settings writer.");
            }
        }
    }
}
