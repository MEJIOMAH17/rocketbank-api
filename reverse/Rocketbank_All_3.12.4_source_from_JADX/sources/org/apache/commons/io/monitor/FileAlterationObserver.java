package org.apache.commons.io.monitor;

import android.arch.lifecycle.GeneratedAdapter;
import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.comparator.NameFileComparator;

public class FileAlterationObserver implements Serializable {
    private static final long serialVersionUID = 1185122225658782848L;
    private final Comparator<File> comparator;
    private final FileFilter fileFilter;
    private final List<GeneratedAdapter> listeners;
    private final FileEntry rootEntry;

    public void destroy() throws Exception {
    }

    public FileAlterationObserver(String str) {
        this(new File(str));
    }

    public FileAlterationObserver(String str, FileFilter fileFilter) {
        this(new File(str), fileFilter);
    }

    public FileAlterationObserver(String str, FileFilter fileFilter, IOCase iOCase) {
        this(new File(str), fileFilter, iOCase);
    }

    public FileAlterationObserver(File file) {
        this(file, null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter) {
        this(file, fileFilter, null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter, IOCase iOCase) {
        this(new FileEntry(file), fileFilter, iOCase);
    }

    protected FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, IOCase iOCase) {
        this.listeners = new CopyOnWriteArrayList();
        if (fileEntry == null) {
            throw new IllegalArgumentException("Root entry is missing");
        } else if (fileEntry.getFile() == null) {
            throw new IllegalArgumentException("Root directory is missing");
        } else {
            this.rootEntry = fileEntry;
            this.fileFilter = fileFilter;
            if (iOCase != null) {
                if (iOCase.equals(IOCase.SYSTEM) == null) {
                    if (iOCase.equals(IOCase.INSENSITIVE) != null) {
                        this.comparator = NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
                        return;
                    } else {
                        this.comparator = NameFileComparator.NAME_COMPARATOR;
                        return;
                    }
                }
            }
            this.comparator = NameFileComparator.NAME_SYSTEM_COMPARATOR;
        }
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public void addListener$2dbd97b4(GeneratedAdapter generatedAdapter) {
        if (generatedAdapter != null) {
            this.listeners.add(generatedAdapter);
        }
    }

    public void removeListener$2dbd97b4(GeneratedAdapter generatedAdapter) {
        if (generatedAdapter != null) {
            do {
            } while (this.listeners.remove(generatedAdapter));
        }
    }

    public Iterable<GeneratedAdapter> getListeners() {
        return this.listeners;
    }

    public void initialize() throws Exception {
        this.rootEntry.refresh(this.rootEntry.getFile());
        this.rootEntry.setChildren(doListFiles(this.rootEntry.getFile(), this.rootEntry));
    }

    public void checkAndNotify() {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next();
        }
        File file = this.rootEntry.getFile();
        if (file.exists()) {
            checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), listFiles(file));
        } else if (this.rootEntry.isExists()) {
            checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
        }
        it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private void checkAndNotify(FileEntry fileEntry, FileEntry[] fileEntryArr, File[] fileArr) {
        FileEntry[] fileEntryArr2 = fileArr.length > 0 ? new FileEntry[fileArr.length] : FileEntry.EMPTY_ENTRIES;
        int i = 0;
        int length = fileEntryArr.length;
        int i2 = 0;
        while (i < length) {
            FileEntry fileEntry2 = fileEntryArr[i];
            while (i2 < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i2]) > 0) {
                fileEntryArr2[i2] = createFileEntry(fileEntry, fileArr[i2]);
                doCreate(fileEntryArr2[i2]);
                i2++;
            }
            if (i2 >= fileArr.length || this.comparator.compare(fileEntry2.getFile(), fileArr[i2]) != 0) {
                checkAndNotify(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
                doDelete(fileEntry2);
            } else {
                doMatch(fileEntry2, fileArr[i2]);
                checkAndNotify(fileEntry2, fileEntry2.getChildren(), listFiles(fileArr[i2]));
                fileEntryArr2[i2] = fileEntry2;
                i2++;
            }
            i++;
        }
        while (i2 < fileArr.length) {
            fileEntryArr2[i2] = createFileEntry(fileEntry, fileArr[i2]);
            doCreate(fileEntryArr2[i2]);
            i2++;
        }
        fileEntry.setChildren(fileEntryArr2);
    }

    private FileEntry createFileEntry(FileEntry fileEntry, File file) {
        fileEntry = fileEntry.newChildInstance(file);
        fileEntry.refresh(file);
        fileEntry.setChildren(doListFiles(file, fileEntry));
        return fileEntry;
    }

    private FileEntry[] doListFiles(File file, FileEntry fileEntry) {
        file = listFiles(file);
        FileEntry[] fileEntryArr = file.length > 0 ? new FileEntry[file.length] : FileEntry.EMPTY_ENTRIES;
        for (int i = 0; i < file.length; i++) {
            fileEntryArr[i] = createFileEntry(fileEntry, file[i]);
        }
        return fileEntryArr;
    }

    private void doCreate(FileEntry fileEntry) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next();
            if (fileEntry.isDirectory()) {
                fileEntry.getFile();
            } else {
                fileEntry.getFile();
            }
        }
        for (FileEntry doCreate : fileEntry.getChildren()) {
            doCreate(doCreate);
        }
    }

    private void doMatch(FileEntry fileEntry, File file) {
        if (fileEntry.refresh(file) != null) {
            file = this.listeners.iterator();
            while (file.hasNext()) {
                file.next();
                fileEntry.isDirectory();
            }
        }
    }

    private void doDelete(FileEntry fileEntry) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next();
            if (fileEntry.isDirectory()) {
                fileEntry.getFile();
            } else {
                fileEntry.getFile();
            }
        }
    }

    private File[] listFiles(File file) {
        file = file.isDirectory() ? this.fileFilter == null ? file.listFiles() : file.listFiles(this.fileFilter) : null;
        if (file == null) {
            file = FileUtils.EMPTY_FILE_ARRAY;
        }
        if (this.comparator != null && file.length > 1) {
            Arrays.sort(file, this.comparator);
        }
        return file;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append("[file='");
        stringBuilder.append(getDirectory().getPath());
        stringBuilder.append('\'');
        if (this.fileFilter != null) {
            stringBuilder.append(", ");
            stringBuilder.append(this.fileFilter.toString());
        }
        stringBuilder.append(", listeners=");
        stringBuilder.append(this.listeners.size());
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
