package rx.internal.util.unsafe;

import rx.internal.util.SuppressAnimalSniffer;
import sun.misc.Unsafe;

@SuppressAnimalSniffer
public final class UnsafeAccess {
    private static final boolean DISABLED_BY_USER;
    public static final Unsafe UNSAFE;

    static {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r0 = "rx.unsafe-disable";
        r0 = java.lang.System.getProperty(r0);
        r1 = 1;
        if (r0 == 0) goto L_0x000b;
    L_0x0009:
        r0 = r1;
        goto L_0x000c;
    L_0x000b:
        r0 = 0;
    L_0x000c:
        DISABLED_BY_USER = r0;
        r0 = 0;
        r2 = sun.misc.Unsafe.class;	 Catch:{ Throwable -> 0x0021 }
        r3 = "theUnsafe";	 Catch:{ Throwable -> 0x0021 }
        r2 = r2.getDeclaredField(r3);	 Catch:{ Throwable -> 0x0021 }
        r2.setAccessible(r1);	 Catch:{ Throwable -> 0x0021 }
        r1 = r2.get(r0);	 Catch:{ Throwable -> 0x0021 }
        r1 = (sun.misc.Unsafe) r1;	 Catch:{ Throwable -> 0x0021 }
        r0 = r1;
    L_0x0021:
        UNSAFE = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.unsafe.UnsafeAccess.<clinit>():void");
    }

    private UnsafeAccess() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean isUnsafeAvailable() {
        return (UNSAFE == null || DISABLED_BY_USER) ? false : true;
    }

    public static int getAndIncrementInt(Object obj, long j) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, intVolatile + 1));
        return intVolatile;
    }

    public static int getAndAddInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    public static int getAndSetInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, i));
        return intVolatile;
    }

    public static boolean compareAndSwapInt(Object obj, long j, int i, int i2) {
        return UNSAFE.compareAndSwapInt(obj, j, i, i2);
    }

    public static long addressOf(Class<?> cls, String str) {
        try {
            return UNSAFE.objectFieldOffset(cls.getDeclaredField(str));
        } catch (Class<?> cls2) {
            str = new InternalError();
            str.initCause(cls2);
            throw str;
        }
    }
}
