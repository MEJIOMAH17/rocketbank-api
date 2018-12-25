package kotlin.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FilePathComponents.kt */
class FilesKt__FilePathComponentsKt {
    private static final int getRootLength$FilesKt__FilePathComponentsKt(String str) {
        CharSequence charSequence = str;
        int indexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, File.separatorChar, 0, false, 4, null);
        if (indexOf$default == 0) {
            if (str.length() > 1 && str.charAt(1) == File.separatorChar) {
                indexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, File.separatorChar, 2, false, 4, null);
                if (indexOf$default >= 0) {
                    int i = indexOf$default + 1;
                    indexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, File.separatorChar, i, false, 4, null);
                    if (indexOf$default >= 0) {
                        return indexOf$default + 1;
                    }
                    return str.length();
                }
            }
            return 1;
        } else if (indexOf$default > 0 && str.charAt(indexOf$default - 1) == ':') {
            return indexOf$default + 1;
        } else {
            if (indexOf$default == -1 && StringsKt__StringsKt.endsWith$default(charSequence, ':', false, 2, null)) {
                return str.length();
            }
            return 0;
        }
    }

    public static final String getRootName(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        String path = file.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "path");
        file = file.getPath();
        Intrinsics.checkExpressionValueIsNotNull(file, "path");
        file = getRootLength$FilesKt__FilePathComponentsKt(file);
        if (path == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        file = path.substring(0, file);
        Intrinsics.checkExpressionValueIsNotNull(file, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return file;
    }

    public static final File getRoot(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        return new File(getRootName(file));
    }

    public static final boolean isRooted(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        file = file.getPath();
        Intrinsics.checkExpressionValueIsNotNull(file, "path");
        return getRootLength$FilesKt__FilePathComponentsKt(file) > null ? true : null;
    }

    public static final FilePathComponents toComponents(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        file = file.getPath();
        Intrinsics.checkExpressionValueIsNotNull(file, "path");
        int rootLength$FilesKt__FilePathComponentsKt = getRootLength$FilesKt__FilePathComponentsKt(file);
        String substring = file.substring(0, rootLength$FilesKt__FilePathComponentsKt);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        file = file.substring(rootLength$FilesKt__FilePathComponentsKt);
        Intrinsics.checkExpressionValueIsNotNull(file, "(this as java.lang.String).substring(startIndex)");
        CharSequence charSequence = (CharSequence) file;
        if ((charSequence.length() == null ? 1 : null) != null) {
            file = CollectionsKt__CollectionsKt.emptyList();
        } else {
            Iterable<String> split$default = StringsKt__StringsKt.split$default(charSequence, new char[]{File.separatorChar}, false, 0, 6, null);
            Collection arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(split$default));
            for (String file2 : split$default) {
                arrayList.add(new File(file2));
            }
            file = (List) arrayList;
        }
        return new FilePathComponents(new File(substring), file);
    }

    public static final File subPath(File file, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        return toComponents(file).subPath(i, i2);
    }
}
