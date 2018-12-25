package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.util.Set;

final class LogFileManager {
    private static final NoopLogStore NOOP_LOG_STORE = new NoopLogStore();
    private final Context context;
    private FileLogStore currentLog;
    private final DirectoryProvider directoryProvider;

    public interface DirectoryProvider {
        File getLogFileDir();
    }

    static final class NoopLogStore implements FileLogStore {
        public final void closeLogFile() {
        }

        public final void deleteLogFile() {
        }

        public final ByteString getLogAsByteString() {
            return null;
        }

        public final void writeToLog(long j, String str) {
        }

        private NoopLogStore() {
        }
    }

    LogFileManager(Context context, DirectoryProvider directoryProvider) {
        this(context, directoryProvider, (byte) 0);
    }

    private LogFileManager(Context context, DirectoryProvider directoryProvider, byte b) {
        this.context = context;
        this.directoryProvider = directoryProvider;
        this.currentLog = NOOP_LOG_STORE;
        setCurrentSession(null);
    }

    final void setCurrentSession(String str) {
        this.currentLog.closeLogFile();
        this.currentLog = NOOP_LOG_STORE;
        if (str != null) {
            if (CommonUtils.getBooleanResourceValue(this.context, "com.crashlytics.CollectCustomLogs", true)) {
                this.currentLog = new QueueFileLogStore(getWorkingFileForSession(str));
            } else {
                Fabric.getLogger().mo768d("CrashlyticsCore", "Preferences requested no custom logs. Aborting log file creation.");
            }
        }
    }

    final void writeToLog(long j, String str) {
        this.currentLog.writeToLog(j, str);
    }

    final ByteString getByteStringForLog() {
        return this.currentLog.getLogAsByteString();
    }

    final void clearLog() {
        this.currentLog.deleteLogFile();
    }

    final void discardOldLogFiles(Set<String> set) {
        File[] listFiles = this.directoryProvider.getLogFileDir().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                Object name = file.getName();
                int lastIndexOf = name.lastIndexOf(".temp");
                if (lastIndexOf != -1) {
                    name = name.substring(20, lastIndexOf);
                }
                if (!set.contains(name)) {
                    file.delete();
                }
            }
        }
    }

    private File getWorkingFileForSession(String str) {
        StringBuilder stringBuilder = new StringBuilder("crashlytics-userlog-");
        stringBuilder.append(str);
        stringBuilder.append(".temp");
        return new File(this.directoryProvider.getLogFileDir(), stringBuilder.toString());
    }
}
