package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;

public class Intrinsics {
    private Intrinsics() {
    }

    public static void throwNpe() {
        throw ((KotlinNullPointerException) sanitizeStackTrace(new KotlinNullPointerException(), Intrinsics.class.getName()));
    }

    public static void throwUninitializedPropertyAccessException(String str) {
        StringBuilder stringBuilder = new StringBuilder("lateinit property ");
        stringBuilder.append(str);
        stringBuilder.append(" has not been initialized");
        throw ((UninitializedPropertyAccessException) sanitizeStackTrace(new UninitializedPropertyAccessException(stringBuilder.toString())));
    }

    public static void checkExpressionValueIsNotNull(Object obj, String str) {
        if (obj == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(" must not be null");
            throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException(stringBuilder.toString())));
        }
    }

    public static boolean areEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null ? true : null;
        } else {
            return obj.equals(obj2);
        }
    }

    public static boolean areEqual$3bd129e3(Double d) {
        return (d == null || d.doubleValue() != 0.0d) ? null : true;
    }

    private static <T extends Throwable> T sanitizeStackTrace(T t) {
        return sanitizeStackTrace(t, Intrinsics.class.getName());
    }

    static <T extends Throwable> T sanitizeStackTrace(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int i = -1;
        int length = stackTrace.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        str = Arrays.asList(stackTrace).subList(i + 1, length);
        t.setStackTrace((StackTraceElement[]) str.toArray(new StackTraceElement[str.size()]));
        return t;
    }

    public static void checkParameterIsNotNull(Object obj, String str) {
        if (obj == null) {
            obj = Thread.currentThread().getStackTrace()[3];
            String className = obj.getClassName();
            obj = obj.getMethodName();
            StringBuilder stringBuilder = new StringBuilder("Parameter specified as non-null is null: method ");
            stringBuilder.append(className);
            stringBuilder.append(".");
            stringBuilder.append(obj);
            stringBuilder.append(", parameter ");
            stringBuilder.append(str);
            throw ((IllegalArgumentException) sanitizeStackTrace(new IllegalArgumentException(stringBuilder.toString())));
        }
    }

    public static void reifiedOperationMarker$4f708078() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }
}
