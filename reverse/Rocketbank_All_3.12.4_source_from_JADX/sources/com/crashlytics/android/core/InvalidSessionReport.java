package com.crashlytics.android.core;

import com.crashlytics.android.core.Report.Type;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class InvalidSessionReport implements Report {
    private final Map<String, String> customHeaders = new HashMap(ReportUploader.HEADER_INVALID_CLS_FILE);
    private final File[] files;
    private final String identifier;

    public InvalidSessionReport(String str, File[] fileArr) {
        this.files = fileArr;
        this.identifier = str;
    }

    public final String getFileName() {
        return this.files[0].getName();
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final File getFile() {
        return this.files[0];
    }

    public final File[] getFiles() {
        return this.files;
    }

    public final Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.customHeaders);
    }

    public final void remove() {
        for (File file : this.files) {
            StringBuilder stringBuilder = new StringBuilder("Removing invalid report file at ");
            stringBuilder.append(file.getPath());
            Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
            file.delete();
        }
    }

    public final Type getType() {
        return Type.JAVA;
    }
}
