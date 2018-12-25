package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.QueueFile;
import io.fabric.sdk.android.services.common.QueueFile.ElementReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

final class QueueFileLogStore implements FileLogStore {
    private QueueFile logFile;
    private final int maxLogSize = 65536;
    private final File workingFile;

    public class LogBytes {
        public final byte[] bytes;
        public final int offset;

        public LogBytes(byte[] bArr, int i) {
            this.bytes = bArr;
            this.offset = i;
        }
    }

    public QueueFileLogStore(File file) {
        this.workingFile = file;
    }

    public final void writeToLog(long j, String str) {
        openLogFile();
        if (this.logFile != null) {
            if (str == null) {
                str = "null";
            }
            try {
                if (str.length() > 16384) {
                    StringBuilder stringBuilder = new StringBuilder("...");
                    stringBuilder.append(str.substring(str.length() - 16384));
                    str = stringBuilder.toString();
                }
                str = str.replaceAll("\r", " ").replaceAll("\n", " ");
                this.logFile.add(String.format(Locale.US, "%d %s%n", new Object[]{Long.valueOf(j), str}).getBytes("UTF-8"));
                while (this.logFile.isEmpty() == null && this.logFile.usedBytes() > 65536) {
                    this.logFile.remove();
                }
            } catch (long j2) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "There was a problem writing to the Crashlytics log.", j2);
            }
        }
    }

    public final ByteString getLogAsByteString() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        return ByteString.copyFrom$3d5b0678(logBytes.bytes, logBytes.offset);
    }

    private LogBytes getLogBytes() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        if (this.logFile == null) {
            return null;
        }
        final int[] iArr = new int[]{0};
        final byte[] bArr = new byte[this.logFile.usedBytes()];
        try {
            this.logFile.forEach(new ElementReader() {
                public final void read(InputStream inputStream, int i) throws IOException {
                    try {
                        inputStream.read(bArr, iArr[0], i);
                        int[] iArr = iArr;
                        iArr[0] = iArr[0] + i;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "A problem occurred while reading the Crashlytics log file.", e);
        }
        return new LogBytes(bArr, iArr[0]);
    }

    public final void closeLogFile() {
        CommonUtils.closeOrLog(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new QueueFile(this.workingFile);
            } catch (Throwable e) {
                StringBuilder stringBuilder = new StringBuilder("Could not open log file: ");
                stringBuilder.append(this.workingFile);
                Fabric.getLogger().mo771e("CrashlyticsCore", stringBuilder.toString(), e);
            }
        }
    }

    public final void deleteLogFile() {
        CommonUtils.closeOrLog(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
        this.workingFile.delete();
    }
}
