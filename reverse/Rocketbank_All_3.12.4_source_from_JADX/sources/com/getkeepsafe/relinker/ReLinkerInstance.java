package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.ReLinker.LibraryInstaller;
import com.getkeepsafe.relinker.ReLinker.LibraryLoader;
import java.io.File;
import java.io.FilenameFilter;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public final class ReLinkerInstance {
    protected final LibraryInstaller libraryInstaller;
    protected final LibraryLoader libraryLoader;
    protected final Set<String> loadedLibraries;

    protected ReLinkerInstance() {
        this(new SystemLibraryLoader(), new ApkLibraryInstaller());
    }

    private ReLinkerInstance(LibraryLoader libraryLoader, LibraryInstaller libraryInstaller) {
        this.loadedLibraries = new HashSet();
        this.libraryLoader = libraryLoader;
        this.libraryInstaller = libraryInstaller;
    }

    public final void loadLibrary$11a583b2(Context context, String str, String str2) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        int i;
        if (str != null) {
            if (str.length() != 0) {
                i = 0;
                if (i == 0) {
                    throw new IllegalArgumentException("Given library is either null or empty");
                }
                Object[] objArr = new Object[]{str};
                String.format(Locale.US, "Beginning load of %s...", objArr);
                if (this.loadedLibraries.contains(str)) {
                    try {
                        this.libraryLoader.loadLibrary(str);
                        this.loadedLibraries.add(str);
                        Object[] objArr2 = new Object[]{str, str2};
                        String.format(Locale.US, "%s (%s) was loaded normally!", objArr2);
                        return;
                    } catch (Throwable e) {
                        Object[] objArr3 = new Object[]{Log.getStackTraceString(e)};
                        String.format(Locale.US, "Loading the library normally failed: %s", objArr3);
                        objArr2 = new Object[]{str, str2};
                        String.format(Locale.US, "%s (%s) was not loaded normally, re-linking...", objArr2);
                        r3 = getWorkaroundLibFile(context, str, str2);
                        if (!r3.exists()) {
                            File workaroundLibFile;
                            cleanupOldLibFiles(context, str, str2);
                            this.libraryInstaller.installLibrary$757ca6fb(context, this.libraryLoader.supportedAbis(), this.libraryLoader.mapLibraryName(str), workaroundLibFile);
                        }
                        this.libraryLoader.loadPath(workaroundLibFile.getAbsolutePath());
                        this.loadedLibraries.add(str);
                        Object[] objArr4 = new Object[]{str, str2};
                        String.format(Locale.US, "%s (%s) was re-linked!", objArr4);
                        return;
                    }
                }
                str2 = new Object[]{str};
                String.format(Locale.US, "%s already loaded previously!", str2);
                return;
            }
        }
        i = 1;
        if (i == 0) {
            Object[] objArr5 = new Object[]{str};
            String.format(Locale.US, "Beginning load of %s...", objArr5);
            if (this.loadedLibraries.contains(str)) {
                this.libraryLoader.loadLibrary(str);
                this.loadedLibraries.add(str);
                Object[] objArr22 = new Object[]{str, str2};
                String.format(Locale.US, "%s (%s) was loaded normally!", objArr22);
                return;
            }
            str2 = new Object[]{str};
            String.format(Locale.US, "%s already loaded previously!", str2);
            return;
        }
        throw new IllegalArgumentException("Given library is either null or empty");
    }

    private File getWorkaroundLibFile(Context context, String str, String str2) {
        int i;
        str = this.libraryLoader.mapLibraryName(str);
        if (str2 != null) {
            if (str2.length() != 0) {
                i = 0;
                if (i != 0) {
                    return new File(context.getDir("lib", 0), str);
                }
                context = context.getDir("lib", 0);
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(".");
                stringBuilder.append(str2);
                return new File(context, stringBuilder.toString());
            }
        }
        i = 1;
        if (i != 0) {
            return new File(context.getDir("lib", 0), str);
        }
        context = context.getDir("lib", 0);
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(".");
        stringBuilder2.append(str2);
        return new File(context, stringBuilder2.toString());
    }

    private void cleanupOldLibFiles(Context context, String str, String str2) {
        int i = 0;
        File dir = context.getDir("lib", 0);
        context = getWorkaroundLibFile(context, str, str2);
        str = this.libraryLoader.mapLibraryName(str);
        str = dir.listFiles(new FilenameFilter() {
            public final boolean accept(File file, String str) {
                return str.startsWith(str);
            }
        });
        if (str != null) {
            str2 = str.length;
            while (i < str2) {
                dir = str[i];
                if (!dir.getAbsolutePath().equals(context.getAbsolutePath())) {
                    dir.delete();
                }
                i++;
            }
        }
    }
}
