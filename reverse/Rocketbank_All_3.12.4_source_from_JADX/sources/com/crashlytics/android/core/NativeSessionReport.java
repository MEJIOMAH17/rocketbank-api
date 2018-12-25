package com.crashlytics.android.core;

import com.crashlytics.android.core.Report.Type;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.Map;

final class NativeSessionReport implements Report {
    private final File reportDirectory;

    public final Map<String, String> getCustomHeaders() {
        return null;
    }

    public final File getFile() {
        return null;
    }

    public final String getFileName() {
        return null;
    }

    public NativeSessionReport(File file) {
        this.reportDirectory = file;
    }

    public final String getIdentifier() {
        return this.reportDirectory.getName();
    }

    public final File[] getFiles() {
        return this.reportDirectory.listFiles();
    }

    public final Type getType() {
        return Type.NATIVE;
    }

    public final void remove() {
        for (File file : this.reportDirectory.listFiles()) {
            StringBuilder stringBuilder = new StringBuilder("Removing native report file at ");
            stringBuilder.append(file.getPath());
            Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
            file.delete();
        }
        StringBuilder stringBuilder2 = new StringBuilder("Removing native report directory at ");
        stringBuilder2.append(this.reportDirectory);
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder2.toString());
        this.reportDirectory.delete();
    }
}
