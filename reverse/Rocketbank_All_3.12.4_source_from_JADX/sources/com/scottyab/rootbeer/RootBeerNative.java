package com.scottyab.rootbeer;

import com.scottyab.rootbeer.util.QLog;

public class RootBeerNative {
    static boolean libraryLoaded = true;

    public native int checkForRoot(Object[] objArr);

    public native int setLogDebugMessages(boolean z);

    static {
        try {
            System.loadLibrary("tool-checker");
        } catch (UnsatisfiedLinkError e) {
            QLog.m353e(e);
        }
    }

    public static boolean wasNativeLibraryLoaded() {
        return libraryLoaded;
    }
}
