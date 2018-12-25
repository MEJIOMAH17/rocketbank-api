package rx.internal.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

public final class PlatformDependent {
    private static final int ANDROID_API_VERSION;
    public static final int ANDROID_API_VERSION_IS_NOT_ANDROID = 0;
    private static final boolean IS_ANDROID;

    /* renamed from: rx.internal.util.PlatformDependent$1 */
    static class C16601 implements PrivilegedAction<ClassLoader> {
        C16601() {
        }

        public final ClassLoader run() {
            return ClassLoader.getSystemClassLoader();
        }
    }

    static {
        int resolveAndroidApiVersion = resolveAndroidApiVersion();
        ANDROID_API_VERSION = resolveAndroidApiVersion;
        IS_ANDROID = resolveAndroidApiVersion != 0;
    }

    private PlatformDependent() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean isAndroid() {
        return IS_ANDROID;
    }

    public static int getAndroidApiVersion() {
        return ANDROID_API_VERSION;
    }

    private static int resolveAndroidApiVersion() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r0 = "android.os.Build$VERSION";	 Catch:{ Exception -> 0x001d }
        r1 = 1;	 Catch:{ Exception -> 0x001d }
        r2 = getSystemClassLoader();	 Catch:{ Exception -> 0x001d }
        r0 = java.lang.Class.forName(r0, r1, r2);	 Catch:{ Exception -> 0x001d }
        r1 = "SDK_INT";	 Catch:{ Exception -> 0x001d }
        r0 = r0.getField(r1);	 Catch:{ Exception -> 0x001d }
        r1 = 0;	 Catch:{ Exception -> 0x001d }
        r0 = r0.get(r1);	 Catch:{ Exception -> 0x001d }
        r0 = (java.lang.Integer) r0;	 Catch:{ Exception -> 0x001d }
        r0 = r0.intValue();	 Catch:{ Exception -> 0x001d }
        return r0;
    L_0x001d:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.PlatformDependent.resolveAndroidApiVersion():int");
    }

    static ClassLoader getSystemClassLoader() {
        if (System.getSecurityManager() == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new C16601());
    }
}
