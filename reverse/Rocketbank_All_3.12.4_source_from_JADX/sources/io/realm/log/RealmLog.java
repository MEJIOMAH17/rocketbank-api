package io.realm.log;

public final class RealmLog {
    private static String REALM_JAVA_TAG = "REALM_JAVA";

    private static native void nativeAddLogger(RealmLogger realmLogger);

    private static native void nativeClearLoggers();

    static native void nativeCloseCoreLoggerBridge(long j);

    static native long nativeCreateCoreLoggerBridge(String str);

    private static native int nativeGetLogLevel();

    private static native void nativeLog(int i, String str, Throwable th, String str2);

    static native void nativeLogToCoreLoggerBridge(long j, int i, String str);

    private static native void nativeRegisterDefaultLogger();

    private static native void nativeRemoveLogger(RealmLogger realmLogger);

    private static native void nativeSetLogLevel(int i);

    private static void log$5d503500(int i, String str, Object... objArr) {
        StringBuilder stringBuilder = new StringBuilder();
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        if (str != null) {
            stringBuilder.append(str);
        }
        nativeLog(i, REALM_JAVA_TAG, null, stringBuilder.toString());
    }

    public static void debug(String str, Object... objArr) {
        log$5d503500(3, str, objArr);
    }

    public static void warn(String str, Object... objArr) {
        log$5d503500(5, str, objArr);
    }

    public static void fatal(String str, Object... objArr) {
        log$5d503500(7, str, objArr);
    }
}
