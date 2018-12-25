package rx.exceptions;

import java.util.HashSet;
import java.util.Set;
import rx.annotations.Experimental;

@Experimental
public final class AssemblyStackTraceException extends RuntimeException {
    private static final long serialVersionUID = 2038859767182585852L;

    public AssemblyStackTraceException(String str) {
        super(str);
    }

    public final synchronized Throwable fillInStackTrace() {
        return this;
    }

    public final void attachTo(java.lang.Throwable r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r2 = this;
        r0 = new java.util.HashSet;
        r0.<init>();
    L_0x0005:
        r1 = r3.getCause();
        if (r1 != 0) goto L_0x001a;
    L_0x000b:
        r3.initCause(r2);	 Catch:{ IllegalStateException -> 0x000f }
        return;
    L_0x000f:
        r0 = new java.lang.RuntimeException;
        r1 = "Received an exception with a cause set to null, instead of being unset. To fix this, look down the chain of causes. The last exception had a cause explicitly set to null. It should be unset instead.";
        r0.<init>(r1, r3);
        rx.plugins.RxJavaHooks.onError(r0);
        return;
    L_0x001a:
        r3 = r3.getCause();
        r1 = r0.add(r3);
        if (r1 != 0) goto L_0x0005;
    L_0x0024:
        rx.plugins.RxJavaHooks.onError(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.exceptions.AssemblyStackTraceException.attachTo(java.lang.Throwable):void");
    }

    public static AssemblyStackTraceException find(Throwable th) {
        Set hashSet = new HashSet();
        while (!(th instanceof AssemblyStackTraceException)) {
            if (th != null) {
                if (th.getCause() != null) {
                    th = th.getCause();
                    if (!hashSet.add(th)) {
                        return null;
                    }
                }
            }
            return null;
        }
        return (AssemblyStackTraceException) th;
    }
}
