package com.scottyab.rootbeer.util;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public final class QLog {
    public static int LOGGING_LEVEL = 5;

    private static String getTrace() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String methodName = stackTrace[2].getMethodName();
        String className = stackTrace[2].getClassName();
        int lineNumber = stackTrace[2].getLineNumber();
        String substring = className.substring(className.lastIndexOf(46) + 1);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(substring);
        stringBuilder.append(": ");
        stringBuilder.append(methodName);
        stringBuilder.append("() [");
        stringBuilder.append(lineNumber);
        stringBuilder.append("] - ");
        return stringBuilder.toString();
    }

    /* renamed from: e */
    public static void m354e(Object obj, Throwable th) {
        if ((LOGGING_LEVEL > 0 ? 1 : null) != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(obj));
            Log.e("RootBeer", stringBuilder.toString());
            Writer stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            Log.e("RootBeer", stringWriter.toString());
            stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(obj));
            Log.e("QLog", stringBuilder.toString());
            Writer stringWriter2 = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter2));
            Log.e("QLog", stringWriter2.toString());
        }
    }

    /* renamed from: e */
    public static void m353e(Object obj) {
        if ((LOGGING_LEVEL > 0 ? 1 : null) != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(obj));
            Log.e("RootBeer", stringBuilder.toString());
            stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(obj));
            Log.e("QLog", stringBuilder.toString());
        }
    }

    /* renamed from: v */
    public static void m355v(Object obj) {
        if ((LOGGING_LEVEL > 4 ? 1 : null) != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(obj));
            Log.v("RootBeer", stringBuilder.toString());
        }
    }

    static {
        String str = "Log class reloaded";
        if ((LOGGING_LEVEL > 2 ? 1 : null) != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getTrace());
            stringBuilder.append(String.valueOf(str));
            Log.i("RootBeer", stringBuilder.toString());
        }
    }
}
