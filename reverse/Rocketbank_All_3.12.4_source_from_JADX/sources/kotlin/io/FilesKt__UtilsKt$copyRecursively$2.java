package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Utils.kt */
final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements Function2<File, IOException, Unit> {
    final /* synthetic */ Function2 $onError;

    FilesKt__UtilsKt$copyRecursively$2(Function2 function2) {
        this.$onError = function2;
        super(2);
    }

    public final void invoke(File file, IOException iOException) {
        Intrinsics.checkParameterIsNotNull(file, "f");
        Intrinsics.checkParameterIsNotNull(iOException, "e");
        if (((OnErrorAction) this.$onError.invoke(file, iOException)) == OnErrorAction.TERMINATE) {
            throw new TerminateException(file);
        }
    }
}
