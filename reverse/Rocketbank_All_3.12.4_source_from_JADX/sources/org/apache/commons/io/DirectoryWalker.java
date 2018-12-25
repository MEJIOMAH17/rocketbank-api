package org.apache.commons.io;

import android.graphics.Path;
import java.io.File;
import java.io.IOException;

public abstract class DirectoryWalker<T> {

    public static class CancelException extends IOException {
        private static final long serialVersionUID = 1347339620135041008L;
        private final int depth;
        private final File file;

        public CancelException(File file, int i) {
            this("Operation Cancelled", file, i);
        }

        public CancelException(String str, File file, int i) {
            super(str);
            this.file = file;
            this.depth = i;
        }

        public File getFile() {
            return this.file;
        }

        public int getDepth() {
            return this.depth;
        }
    }

    public abstract Path getPath(float f, float f2, float f3, float f4);
}
