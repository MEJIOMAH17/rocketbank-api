package com.crashlytics.android.core;

final class MiddleOutStrategy implements StackTraceTrimmingStrategy {
    private final int trimmedSize = 1024;

    public final StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        Object obj = new StackTraceElement[1024];
        System.arraycopy(stackTraceElementArr, 0, obj, 0, 512);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - 512, obj, 512, 512);
        return obj;
    }
}
