package kotlin.io;

import java.io.Closeable;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Closeable.kt */
public final class CloseableKt {
    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final <T extends java.io.Closeable, R> R use(T r1, kotlin.jvm.functions.Function1<? super T, ? extends R> r2) {
        /*
        r0 = 0;
        r2 = r2.invoke(r1);	 Catch:{ Throwable -> 0x000e }
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        closeFinally(r1, r0);
        return r2;
    L_0x000c:
        r2 = move-exception;
        goto L_0x0010;
    L_0x000e:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x000c }
    L_0x0010:
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        closeFinally(r1, r0);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.use(java.io.Closeable, kotlin.jvm.functions.Function1):R");
    }

    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Closeable closeable2) {
                Intrinsics.checkParameterIsNotNull(th, "$receiver");
                Intrinsics.checkParameterIsNotNull(closeable2, "exception");
                PlatformImplementationsKt.IMPLEMENTATIONS$287f0623.addSuppressed(th, closeable2);
            }
        }
    }
}
