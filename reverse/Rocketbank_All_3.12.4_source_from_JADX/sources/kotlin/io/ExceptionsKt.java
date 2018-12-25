package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Exceptions.kt */
public final class ExceptionsKt {
    private static final String constructMessage(File file, File file2, String str) {
        StringBuilder stringBuilder = new StringBuilder(file.toString());
        if (file2 != null) {
            stringBuilder.append(" -> ".concat(String.valueOf(file2)));
        }
        if (str != null) {
            stringBuilder.append(": ".concat(String.valueOf(str)));
        }
        file = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(file, "sb.toString()");
        return file;
    }
}
