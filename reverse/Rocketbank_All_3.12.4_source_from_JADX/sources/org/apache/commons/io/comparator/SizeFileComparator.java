package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import org.apache.commons.io.FileUtils;

public class SizeFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> SIZE_COMPARATOR = new SizeFileComparator();
    public static final Comparator<File> SIZE_REVERSE = new ReverseComparator(SIZE_COMPARATOR);
    public static final Comparator<File> SIZE_SUMDIR_COMPARATOR = new SizeFileComparator(true);
    public static final Comparator<File> SIZE_SUMDIR_REVERSE = new ReverseComparator(SIZE_SUMDIR_COMPARATOR);
    private static final long serialVersionUID = -1201561106411416190L;
    private final boolean sumDirectoryContents;

    public SizeFileComparator() {
        this.sumDirectoryContents = false;
    }

    public SizeFileComparator(boolean z) {
        this.sumDirectoryContents = z;
    }

    public int compare(File file, File file2) {
        long sizeOfDirectory = file.isDirectory() ? (this.sumDirectoryContents && file.exists()) ? FileUtils.sizeOfDirectory(file) : 0 : file.length();
        file = file2.isDirectory() != null ? (this.sumDirectoryContents == null || file2.exists() == null) ? null : FileUtils.sizeOfDirectory(file2) : file2.length();
        long j = sizeOfDirectory - file;
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("[sumDirectoryContents=");
        stringBuilder.append(this.sumDirectoryContents);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
