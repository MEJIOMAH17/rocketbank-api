package kotlin.io;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Utils.kt */
class FilesKt__UtilsKt extends FilesKt__FileTreeWalkKt {
    public static /* synthetic */ File createTempDir$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != null) {
            str = "tmp";
        }
        if ((i & 2) != null) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempDir(str, str2, file);
    }

    public static final File createTempDir(String str, String str2, File file) {
        Intrinsics.checkParameterIsNotNull(str, "prefix");
        str = File.createTempFile(str, str2, file);
        str.delete();
        if (str.mkdir() != null) {
            Intrinsics.checkExpressionValueIsNotNull(str, "dir");
            return str;
        }
        file = new StringBuilder("Unable to create temporary directory ");
        file.append(str);
        file.append('.');
        throw ((Throwable) new IOException(file.toString()));
    }

    public static /* synthetic */ File createTempFile$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != null) {
            str = "tmp";
        }
        if ((i & 2) != null) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempFile(str, str2, file);
    }

    public static final File createTempFile(String str, String str2, File file) {
        Intrinsics.checkParameterIsNotNull(str, "prefix");
        str = File.createTempFile(str, str2, file);
        Intrinsics.checkExpressionValueIsNotNull(str, "File.createTempFile(prefix, suffix, directory)");
        return str;
    }

    public static final String getExtension(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        file = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(file, "name");
        return StringsKt__StringsKt.substringAfterLast((String) file, '.', "");
    }

    public static final String getInvariantSeparatorsPath(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        if (File.separatorChar != '/') {
            String path = file.getPath();
            Intrinsics.checkExpressionValueIsNotNull(path, "path");
            return StringsKt__StringsJVMKt.replace$default(path, File.separatorChar, '/', false, 4, null);
        }
        file = file.getPath();
        Intrinsics.checkExpressionValueIsNotNull(file, "path");
        return file;
    }

    public static final String getNameWithoutExtension(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        file = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(file, "name");
        return StringsKt__StringsKt.substringBeforeLast$default((String) file, ".", null, 2, null);
    }

    public static final String toRelativeString(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "base");
        String toRelativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        if (toRelativeStringOrNull$FilesKt__UtilsKt != null) {
            return toRelativeStringOrNull$FilesKt__UtilsKt;
        }
        StringBuilder stringBuilder = new StringBuilder("this and base files have different roots: ");
        stringBuilder.append(file);
        stringBuilder.append(" and ");
        stringBuilder.append(file2);
        stringBuilder.append('.');
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public static final File relativeTo(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "base");
        return new File(toRelativeString(file, file2));
    }

    public static final File relativeToOrSelf(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "base");
        file2 = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        return file2 != null ? new File(file2) : file;
    }

    public static final File relativeToOrNull(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "base");
        file = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        return file != null ? new File(file) : null;
    }

    private static final String toRelativeStringOrNull$FilesKt__UtilsKt(File file, File file2) {
        file = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file));
        file2 = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file2));
        if ((Intrinsics.areEqual(file.getRoot(), file2.getRoot()) ^ 1) != 0) {
            return null;
        }
        int size = file2.getSize();
        int size2 = file.getSize();
        int i = 0;
        int min = Math.min(size2, size);
        while (i < min && Intrinsics.areEqual((File) file.getSegments().get(i), (File) file2.getSegments().get(i))) {
            i++;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i2 = size - 1;
        if (i2 >= i) {
            while (!Intrinsics.areEqual(((File) file2.getSegments().get(i2)).getName(), "..")) {
                stringBuilder.append("..");
                if (i2 != i) {
                    stringBuilder.append(File.separatorChar);
                }
                if (i2 != i) {
                    i2--;
                }
            }
            return null;
        }
        if (i < size2) {
            if (i < size) {
                stringBuilder.append(File.separatorChar);
            }
            Iterable drop = CollectionsKt___CollectionsKt.drop(file.getSegments(), i);
            Appendable appendable = stringBuilder;
            String str = File.separator;
            Intrinsics.checkExpressionValueIsNotNull(str, "File.separator");
            CollectionsKt___CollectionsKt.joinTo$default$1296cf06$70ef4b96(drop, appendable, str);
        }
        return stringBuilder.toString();
    }

    public static /* synthetic */ File copyTo$default(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != null) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        return copyTo(file, file2, z, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.io.File copyTo(java.io.File r8, java.io.File r9, boolean r10, int r11) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r8, r0);
        r0 = "target";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0);
        r0 = r8.exists();
        if (r0 != 0) goto L_0x001f;
    L_0x0010:
        r9 = new kotlin.io.NoSuchFileException;
        r3 = 0;
        r4 = "The source file doesn't exist.";
        r5 = 2;
        r6 = 0;
        r1 = r9;
        r2 = r8;
        r1.<init>(r2, r3, r4, r5, r6);
        r9 = (java.lang.Throwable) r9;
        throw r9;
    L_0x001f:
        r0 = r9.exists();
        if (r0 == 0) goto L_0x003d;
    L_0x0025:
        r0 = 1;
        if (r10 != 0) goto L_0x0029;
    L_0x0028:
        goto L_0x0031;
    L_0x0029:
        r10 = r9.delete();
        if (r10 != 0) goto L_0x0030;
    L_0x002f:
        goto L_0x0031;
    L_0x0030:
        r0 = 0;
    L_0x0031:
        if (r0 == 0) goto L_0x003d;
    L_0x0033:
        r10 = new kotlin.io.FileAlreadyExistsException;
        r11 = "The destination file already exists.";
        r10.<init>(r8, r9, r11);
        r10 = (java.lang.Throwable) r10;
        throw r10;
    L_0x003d:
        r10 = r8.isDirectory();
        if (r10 == 0) goto L_0x0053;
    L_0x0043:
        r10 = r9.mkdirs();
        if (r10 != 0) goto L_0x007e;
    L_0x0049:
        r10 = new kotlin.io.FileSystemException;
        r11 = "Failed to create target directory.";
        r10.<init>(r8, r9, r11);
        r10 = (java.lang.Throwable) r10;
        throw r10;
    L_0x0053:
        r10 = r9.getParentFile();
        if (r10 == 0) goto L_0x005c;
    L_0x0059:
        r10.mkdirs();
    L_0x005c:
        r10 = new java.io.FileInputStream;
        r10.<init>(r8);
        r10 = (java.io.Closeable) r10;
        r8 = 0;
        r0 = r10;
        r0 = (java.io.FileInputStream) r0;	 Catch:{ Throwable -> 0x008e }
        r1 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x008e }
        r1.<init>(r9);	 Catch:{ Throwable -> 0x008e }
        r1 = (java.io.Closeable) r1;	 Catch:{ Throwable -> 0x008e }
        r2 = r1;
        r2 = (java.io.FileOutputStream) r2;	 Catch:{ Throwable -> 0x0082, all -> 0x007f }
        r0 = (java.io.InputStream) r0;	 Catch:{ Throwable -> 0x0082, all -> 0x007f }
        r2 = (java.io.OutputStream) r2;	 Catch:{ Throwable -> 0x0082, all -> 0x007f }
        kotlin.io.ByteStreamsKt.copyTo(r0, r2, r11);	 Catch:{ Throwable -> 0x0082, all -> 0x007f }
        kotlin.io.CloseableKt.closeFinally(r1, r8);	 Catch:{ Throwable -> 0x008e }
        kotlin.io.CloseableKt.closeFinally(r10, r8);
    L_0x007e:
        return r9;
    L_0x007f:
        r9 = move-exception;
        r11 = r8;
        goto L_0x0088;
    L_0x0082:
        r9 = move-exception;
        throw r9;	 Catch:{ all -> 0x0084 }
    L_0x0084:
        r11 = move-exception;
        r7 = r11;
        r11 = r9;
        r9 = r7;
    L_0x0088:
        kotlin.io.CloseableKt.closeFinally(r1, r11);	 Catch:{ Throwable -> 0x008e }
        throw r9;	 Catch:{ Throwable -> 0x008e }
    L_0x008c:
        r9 = move-exception;
        goto L_0x0090;
    L_0x008e:
        r8 = move-exception;
        throw r8;	 Catch:{ all -> 0x008c }
    L_0x0090:
        kotlin.io.CloseableKt.closeFinally(r10, r8);
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__UtilsKt.copyTo(java.io.File, java.io.File, boolean, int):java.io.File");
    }

    public static /* synthetic */ boolean copyRecursively$default(File file, File file2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 2) != null) {
            z = false;
        }
        if ((i & 4) != 0) {
            function2 = FilesKt__UtilsKt$copyRecursively$1.INSTANCE;
        }
        return copyRecursively(file, file2, z, function2);
    }

    public static final boolean copyRecursively(java.io.File r11, java.io.File r12, boolean r13, kotlin.jvm.functions.Function2<? super java.io.File, ? super java.io.IOException, ? extends kotlin.io.OnErrorAction> r14) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r11, r0);
        r0 = "target";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r12, r0);
        r0 = "onError";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r14, r0);
        r0 = r11.exists();
        r1 = 1;
        r2 = 0;
        if (r0 != 0) goto L_0x002f;
    L_0x0017:
        r12 = new kotlin.io.NoSuchFileException;
        r5 = 0;
        r6 = "The source file doesn't exist.";
        r7 = 2;
        r8 = 0;
        r3 = r12;
        r4 = r11;
        r3.<init>(r4, r5, r6, r7, r8);
        r11 = r14.invoke(r11, r12);
        r11 = (kotlin.io.OnErrorAction) r11;
        r12 = kotlin.io.OnErrorAction.TERMINATE;
        if (r11 == r12) goto L_0x002e;
    L_0x002d:
        return r1;
    L_0x002e:
        return r2;
    L_0x002f:
        r0 = kotlin.io.FilesKt__FileTreeWalkKt.walkTopDown(r11);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = new kotlin.io.FilesKt__UtilsKt$copyRecursively$2;	 Catch:{ TerminateException -> 0x00e6 }
        r3.<init>(r14);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = (kotlin.jvm.functions.Function2) r3;	 Catch:{ TerminateException -> 0x00e6 }
        r0 = r0.onFail(r3);	 Catch:{ TerminateException -> 0x00e6 }
        r0 = r0.iterator();	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0042:
        r3 = r0.hasNext();	 Catch:{ TerminateException -> 0x00e6 }
        if (r3 == 0) goto L_0x00e5;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0048:
        r3 = r0.next();	 Catch:{ TerminateException -> 0x00e6 }
        r3 = (java.io.File) r3;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = r3.exists();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 != 0) goto L_0x006b;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0054:
        r10 = new kotlin.io.NoSuchFileException;	 Catch:{ TerminateException -> 0x00e6 }
        r6 = 0;	 Catch:{ TerminateException -> 0x00e6 }
        r7 = "The source file doesn't exist.";	 Catch:{ TerminateException -> 0x00e6 }
        r8 = 2;	 Catch:{ TerminateException -> 0x00e6 }
        r9 = 0;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = r10;	 Catch:{ TerminateException -> 0x00e6 }
        r5 = r3;	 Catch:{ TerminateException -> 0x00e6 }
        r4.<init>(r5, r6, r7, r8, r9);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = r14.invoke(r3, r10);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = (kotlin.io.OnErrorAction) r3;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = kotlin.io.OnErrorAction.TERMINATE;	 Catch:{ TerminateException -> 0x00e6 }
        if (r3 != r4) goto L_0x0042;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x006a:
        return r2;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x006b:
        r4 = toRelativeString(r3, r11);	 Catch:{ TerminateException -> 0x00e6 }
        r5 = new java.io.File;	 Catch:{ TerminateException -> 0x00e6 }
        r5.<init>(r12, r4);	 Catch:{ TerminateException -> 0x00e6 }
        r4 = r5.exists();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 == 0) goto L_0x00b4;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x007a:
        r4 = r3.isDirectory();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 == 0) goto L_0x0086;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0080:
        r4 = r5.isDirectory();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 != 0) goto L_0x00b4;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0086:
        if (r13 != 0) goto L_0x008a;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0088:
        r4 = r1;	 Catch:{ TerminateException -> 0x00e6 }
        goto L_0x00a0;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x008a:
        r4 = r5.isDirectory();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 == 0) goto L_0x0099;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0090:
        r4 = deleteRecursively(r5);	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 != 0) goto L_0x0097;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0096:
        goto L_0x0088;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0097:
        r4 = r2;	 Catch:{ TerminateException -> 0x00e6 }
        goto L_0x00a0;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x0099:
        r4 = r5.delete();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 != 0) goto L_0x0097;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x009f:
        goto L_0x0088;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00a0:
        if (r4 == 0) goto L_0x00b4;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00a2:
        r4 = new kotlin.io.FileAlreadyExistsException;	 Catch:{ TerminateException -> 0x00e6 }
        r6 = "The destination file already exists.";	 Catch:{ TerminateException -> 0x00e6 }
        r4.<init>(r3, r5, r6);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = r14.invoke(r5, r4);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = (kotlin.io.OnErrorAction) r3;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = kotlin.io.OnErrorAction.TERMINATE;	 Catch:{ TerminateException -> 0x00e6 }
        if (r3 != r4) goto L_0x0042;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00b3:
        return r2;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00b4:
        r4 = r3.isDirectory();	 Catch:{ TerminateException -> 0x00e6 }
        if (r4 == 0) goto L_0x00be;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00ba:
        r5.mkdirs();	 Catch:{ TerminateException -> 0x00e6 }
        goto L_0x0042;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00be:
        r7 = 0;	 Catch:{ TerminateException -> 0x00e6 }
        r8 = 4;	 Catch:{ TerminateException -> 0x00e6 }
        r9 = 0;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = r3;	 Catch:{ TerminateException -> 0x00e6 }
        r6 = r13;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = copyTo$default(r4, r5, r6, r7, r8, r9);	 Catch:{ TerminateException -> 0x00e6 }
        r4 = r4.length();	 Catch:{ TerminateException -> 0x00e6 }
        r6 = r3.length();	 Catch:{ TerminateException -> 0x00e6 }
        r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));	 Catch:{ TerminateException -> 0x00e6 }
        if (r8 == 0) goto L_0x0042;	 Catch:{ TerminateException -> 0x00e6 }
    L_0x00d3:
        r4 = new java.io.IOException;	 Catch:{ TerminateException -> 0x00e6 }
        r5 = "Source file wasn't copied completely, length of destination file differs.";	 Catch:{ TerminateException -> 0x00e6 }
        r4.<init>(r5);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = r14.invoke(r3, r4);	 Catch:{ TerminateException -> 0x00e6 }
        r3 = (kotlin.io.OnErrorAction) r3;	 Catch:{ TerminateException -> 0x00e6 }
        r4 = kotlin.io.OnErrorAction.TERMINATE;	 Catch:{ TerminateException -> 0x00e6 }
        if (r3 != r4) goto L_0x0042;
    L_0x00e4:
        return r2;
    L_0x00e5:
        return r1;
    L_0x00e6:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__UtilsKt.copyRecursively(java.io.File, java.io.File, boolean, kotlin.jvm.functions.Function2):boolean");
    }

    public static final boolean deleteRecursively(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        while (true) {
            boolean z = true;
            for (File file2 : FilesKt__FileTreeWalkKt.walkBottomUp(file)) {
                if ((!file2.delete() && file2.exists()) || !z) {
                    z = false;
                }
            }
            return z;
        }
    }

    public static final boolean startsWith(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, FacebookRequestErrorClassification.KEY_OTHER);
        file = FilesKt__FilePathComponentsKt.toComponents(file);
        file2 = FilesKt__FilePathComponentsKt.toComponents(file2);
        if ((Intrinsics.areEqual(file.getRoot(), file2.getRoot()) ^ 1) == 0 && file.getSize() >= file2.getSize()) {
            return file.getSegments().subList(0, file2.getSize()).equals(file2.getSegments());
        }
        return false;
    }

    public static final boolean startsWith(File file, String str) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, FacebookRequestErrorClassification.KEY_OTHER);
        return startsWith(file, new File(str));
    }

    public static final boolean endsWith(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, FacebookRequestErrorClassification.KEY_OTHER);
        FilePathComponents toComponents = FilesKt__FilePathComponentsKt.toComponents(file);
        FilePathComponents toComponents2 = FilesKt__FilePathComponentsKt.toComponents(file2);
        if (toComponents2.isRooted()) {
            return Intrinsics.areEqual(file, file2);
        }
        file = toComponents.getSize() - toComponents2.getSize();
        if (file < null) {
            return null;
        }
        return toComponents.getSegments().subList(file, toComponents.getSize()).equals(toComponents2.getSegments());
    }

    public static final boolean endsWith(File file, String str) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, FacebookRequestErrorClassification.KEY_OTHER);
        return endsWith(file, new File(str));
    }

    public static final File normalize(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        file = FilesKt__FilePathComponentsKt.toComponents(file);
        File root = file.getRoot();
        Iterable normalize$FilesKt__UtilsKt = normalize$FilesKt__UtilsKt(file.getSegments());
        file = File.separator;
        Intrinsics.checkExpressionValueIsNotNull(file, "File.separator");
        return resolve(root, (String) CollectionsKt___CollectionsKt.joinToString$default$1494b5c(normalize$FilesKt__UtilsKt, (CharSequence) file, null, null, 0, null, null, 62));
    }

    private static final FilePathComponents normalize$FilesKt__UtilsKt(FilePathComponents filePathComponents) {
        return new FilePathComponents(filePathComponents.getRoot(), normalize$FilesKt__UtilsKt(filePathComponents.getSegments()));
    }

    private static final List<File> normalize$FilesKt__UtilsKt(List<? extends File> list) {
        List<File> arrayList = new ArrayList(list.size());
        for (File file : list) {
            String name = file.getName();
            if (name != null) {
                int hashCode = name.hashCode();
                if (hashCode != 46) {
                    if (hashCode == 1472) {
                        if (name.equals("..")) {
                            if (arrayList.isEmpty() || (Intrinsics.areEqual(((File) CollectionsKt___CollectionsKt.last((List) arrayList)).getName(), "..") ^ 1) == 0) {
                                arrayList.add(file);
                            } else {
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                } else if (name.equals(".")) {
                }
            }
            arrayList.add(file);
        }
        return arrayList;
    }

    public static final File resolve(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "relative");
        if (FilesKt__FilePathComponentsKt.isRooted(file2)) {
            return file2;
        }
        StringBuilder stringBuilder;
        file = file.toString();
        Intrinsics.checkExpressionValueIsNotNull(file, "baseName");
        CharSequence charSequence = (CharSequence) file;
        if (!(charSequence.length() == 0)) {
            if (!StringsKt__StringsKt.endsWith$default(charSequence, File.separatorChar, false, 2, null)) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(file);
                stringBuilder.append(File.separatorChar);
                stringBuilder.append(file2);
                return new File(stringBuilder.toString());
            }
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(file);
        stringBuilder.append(file2);
        return new File(stringBuilder.toString());
    }

    public static final File resolve(File file, String str) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, "relative");
        return resolve(file, new File(str));
    }

    public static final File resolveSibling(File file, File file2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(file2, "relative");
        file = FilesKt__FilePathComponentsKt.toComponents(file);
        return resolve(resolve(file.getRoot(), file.getSize() == 0 ? new File("..") : file.subPath(0, file.getSize() - 1)), file2);
    }

    public static final File resolveSibling(File file, String str) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, "relative");
        return resolveSibling(file, new File(str));
    }
}
