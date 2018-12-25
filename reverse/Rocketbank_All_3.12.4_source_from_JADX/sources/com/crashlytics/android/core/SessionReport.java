package com.crashlytics.android.core;

import com.crashlytics.android.core.Report.Type;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class SessionReport implements Report {
    private final Map<String, String> customHeaders;
    private final File file;
    private final File[] files;

    public SessionReport(File file) {
        this(file, Collections.emptyMap());
    }

    public SessionReport(File file, Map<String, String> map) {
        this.file = file;
        this.files = new File[]{file};
        this.customHeaders = new HashMap(map);
        if (this.file.length() == 0) {
            this.customHeaders.putAll(ReportUploader.HEADER_INVALID_CLS_FILE);
        }
    }

    public final File getFile() {
        return this.file;
    }

    public final File[] getFiles() {
        return this.files;
    }

    public final Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.customHeaders);
    }

    public final void remove() {
        StringBuilder stringBuilder = new StringBuilder("Removing report at ");
        stringBuilder.append(this.file.getPath());
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
        this.file.delete();
    }

    public final Type getType() {
        return Type.JAVA;
    }

    public final String getFileName() {
        return this.file.getName();
    }

    public final String getIdentifier() {
        String name = this.file.getName();
        return name.substring(0, name.lastIndexOf(46));
    }
}
