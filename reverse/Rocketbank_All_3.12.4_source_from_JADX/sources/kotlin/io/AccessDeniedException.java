package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Exceptions.kt */
public final class AccessDeniedException extends FileSystemException {
    public AccessDeniedException(File file, File file2, String str) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        super(file, file2, str);
    }

    public /* synthetic */ AccessDeniedException(File file, File file2, String str, int i, Ref ref) {
        if ((i & 2) != null) {
            file2 = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        this(file, file2, str);
    }
}
