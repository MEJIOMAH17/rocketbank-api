package io.realm.internal;

import android.content.Context;
import com.getkeepsafe.relinker.ReLinker;
import java.io.File;

public final class RealmCore {
    private static final String BINARIES_PATH;
    private static final String FILE_SEP = File.separator;
    private static final String PATH_SEP = File.pathSeparator;
    private static volatile boolean libraryIsLoaded = false;

    static {
        StringBuilder stringBuilder = new StringBuilder("lib");
        stringBuilder.append(PATH_SEP);
        stringBuilder.append("..");
        stringBuilder.append(FILE_SEP);
        stringBuilder.append("lib");
        BINARIES_PATH = stringBuilder.toString();
    }

    public static synchronized void loadLibrary(Context context) {
        synchronized (RealmCore.class) {
            if (libraryIsLoaded) {
                return;
            }
            ReLinker.loadLibrary(context, "realm-jni", "3.3.1");
            libraryIsLoaded = true;
        }
    }
}
