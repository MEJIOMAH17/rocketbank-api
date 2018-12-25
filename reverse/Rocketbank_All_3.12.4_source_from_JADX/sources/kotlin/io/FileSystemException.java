package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Exceptions.kt */
public class FileSystemException extends IOException {
    private final File file;
    private final File other;
    private final String reason;

    public final File getFile() {
        return this.file;
    }

    public final File getOther() {
        return this.other;
    }

    public /* synthetic */ FileSystemException(File file, File file2, String str, int i, Ref ref) {
        if ((i & 2) != null) {
            file2 = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        this(file, file2, str);
    }

    public final String getReason() {
        return this.reason;
    }

    public FileSystemException(File file, File file2, String str) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        super(ExceptionsKt.constructMessage(file, file2, str));
        this.file = file;
        this.other = file2;
        this.reason = str;
    }
}
