package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileTreeWalk.kt */
class FilesKt__FileTreeWalkKt extends FilesKt__FileReadWriteKt {
    public static /* synthetic */ FileTreeWalk walk$default(File file, FileWalkDirection fileWalkDirection, int i, Object obj) {
        if ((i & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return walk(file, fileWalkDirection);
    }

    public static final FileTreeWalk walk(File file, FileWalkDirection fileWalkDirection) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(fileWalkDirection, "direction");
        return new FileTreeWalk(file, fileWalkDirection);
    }

    public static final FileTreeWalk walkTopDown(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        return walk(file, FileWalkDirection.TOP_DOWN);
    }

    public static final FileTreeWalk walkBottomUp(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        return walk(file, FileWalkDirection.BOTTOM_UP);
    }
}
