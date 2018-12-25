package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class Utils {
    private static final FilenameFilter ALL_FILES_FILTER = new C03391();

    /* renamed from: com.crashlytics.android.core.Utils$1 */
    static class C03391 implements FilenameFilter {
        public final boolean accept(File file, String str) {
            return true;
        }

        C03391() {
        }
    }

    static int capFileCount(File file, int i, Comparator<File> comparator) {
        return capFileCount(file, ALL_FILES_FILTER, i, comparator);
    }

    static int capFileCount(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        file = file.listFiles(filenameFilter);
        filenameFilter = null;
        if (file == null) {
            return 0;
        }
        int length = file.length;
        Arrays.sort(file, comparator);
        FilenameFilter length2 = file.length;
        while (filenameFilter < length2) {
            File file2 = file[filenameFilter];
            if (length <= i) {
                return length;
            }
            file2.delete();
            length--;
            filenameFilter++;
        }
        return length;
    }
}
