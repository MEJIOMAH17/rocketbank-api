package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Utils.kt */
final class FilesKt__UtilsKt$copyRecursively$1 extends Lambda implements Function2 {
    public static final FilesKt__UtilsKt$copyRecursively$1 INSTANCE = new FilesKt__UtilsKt$copyRecursively$1();

    FilesKt__UtilsKt$copyRecursively$1() {
        super(2);
    }

    public final Void invoke(File file, IOException iOException) {
        Intrinsics.checkParameterIsNotNull(file, "<anonymous parameter 0>");
        Intrinsics.checkParameterIsNotNull(iOException, "exception");
        throw iOException;
    }
}
