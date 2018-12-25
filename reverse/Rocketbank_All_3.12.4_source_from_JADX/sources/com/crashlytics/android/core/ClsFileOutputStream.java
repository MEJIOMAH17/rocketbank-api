package com.crashlytics.android.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

final class ClsFileOutputStream extends FileOutputStream {
    public static final FilenameFilter TEMP_FILENAME_FILTER = new C03141();
    private boolean closed = false;
    private File complete;
    private File inProgress;
    private final String root;

    /* renamed from: com.crashlytics.android.core.ClsFileOutputStream$1 */
    static class C03141 implements FilenameFilter {
        C03141() {
        }

        public final boolean accept(File file, String str) {
            return str.endsWith(".cls_temp");
        }
    }

    public ClsFileOutputStream(File file, String str) throws FileNotFoundException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(".cls_temp");
        super(new File(file, stringBuilder.toString()));
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(file);
        stringBuilder2.append(File.separator);
        stringBuilder2.append(str);
        this.root = stringBuilder2.toString();
        str = new StringBuilder();
        str.append(this.root);
        str.append(".cls_temp");
        this.inProgress = new File(str.toString());
    }

    public final synchronized void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            super.flush();
            super.close();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.root);
            stringBuilder.append(".cls");
            File file = new File(stringBuilder.toString());
            if (this.inProgress.renameTo(file)) {
                this.inProgress = null;
                this.complete = file;
                return;
            }
            String str = "";
            if (file.exists()) {
                str = " (target already exists)";
            } else if (!this.inProgress.exists()) {
                str = " (source does not exist)";
            }
            StringBuilder stringBuilder2 = new StringBuilder("Could not rename temp file: ");
            stringBuilder2.append(this.inProgress);
            stringBuilder2.append(" -> ");
            stringBuilder2.append(file);
            stringBuilder2.append(str);
            throw new IOException(stringBuilder2.toString());
        }
    }

    public final void closeInProgressStream() throws IOException {
        if (!this.closed) {
            this.closed = true;
            super.flush();
            super.close();
        }
    }
}
