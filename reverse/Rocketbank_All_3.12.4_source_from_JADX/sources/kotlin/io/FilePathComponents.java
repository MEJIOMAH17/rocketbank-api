package kotlin.io;

import java.io.File;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FilePathComponents.kt */
public final class FilePathComponents {
    private final File root;
    private final List<File> segments;

    public static /* synthetic */ FilePathComponents copy$default(FilePathComponents filePathComponents, File file, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            file = filePathComponents.root;
        }
        if ((i & 2) != 0) {
            list = filePathComponents.segments;
        }
        return filePathComponents.copy(file, list);
    }

    public final File component1() {
        return this.root;
    }

    public final List<File> component2() {
        return this.segments;
    }

    public final FilePathComponents copy(File file, List<? extends File> list) {
        Intrinsics.checkParameterIsNotNull(file, "root");
        Intrinsics.checkParameterIsNotNull(list, "segments");
        return new FilePathComponents(file, list);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof FilePathComponents) {
                FilePathComponents filePathComponents = (FilePathComponents) obj;
                if (Intrinsics.areEqual(this.root, filePathComponents.root) && Intrinsics.areEqual(this.segments, filePathComponents.segments)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        File file = this.root;
        int i = 0;
        int hashCode = (file != null ? file.hashCode() : 0) * 31;
        List list = this.segments;
        if (list != null) {
            i = list.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("FilePathComponents(root=");
        stringBuilder.append(this.root);
        stringBuilder.append(", segments=");
        stringBuilder.append(this.segments);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public FilePathComponents(File file, List<? extends File> list) {
        Intrinsics.checkParameterIsNotNull(file, "root");
        Intrinsics.checkParameterIsNotNull(list, "segments");
        this.root = file;
        this.segments = list;
    }

    public final File getRoot() {
        return this.root;
    }

    public final List<File> getSegments() {
        return this.segments;
    }

    public final String getRootName() {
        String path = this.root.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "root.path");
        return path;
    }

    public final boolean isRooted() {
        String path = this.root.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "root.path");
        return ((CharSequence) path).length() > 0;
    }

    public final int getSize() {
        return this.segments.size();
    }

    public final File subPath(int i, int i2) {
        if (i >= 0 && i <= i2) {
            if (i2 <= getSize()) {
                Iterable subList = this.segments.subList(i, i2);
                i = File.separator;
                Intrinsics.checkExpressionValueIsNotNull(i, "File.separator");
                return new File(CollectionsKt___CollectionsKt.joinToString$default$1494b5c(subList, (CharSequence) i, null, null, 0, null, null, 62));
            }
        }
        throw ((Throwable) new IllegalArgumentException());
    }
}
