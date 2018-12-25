package io.realm.internal;

class TestUtil {
    public static native String getExpectedMessage(long j);

    public static native long getMaxExceptionNumber();

    public static native void testThrowExceptions(long j);

    TestUtil() {
    }
}
