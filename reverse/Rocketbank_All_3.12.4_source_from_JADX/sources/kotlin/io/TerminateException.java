package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Utils.kt */
final class TerminateException extends FileSystemException {
    public TerminateException(File file) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        super(file, null, null, 6, null);
    }
}
