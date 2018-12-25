package rx.plugins;

import rx.annotations.Beta;

public abstract class RxJavaErrorHandler {
    protected static final String ERROR_IN_RENDERING_SUFFIX = ".errorRendering";

    @Deprecated
    public void handleError(Throwable th) {
    }

    @Beta
    protected String render(Object obj) throws InterruptedException {
        return null;
    }

    @rx.annotations.Beta
    public final java.lang.String handleOnNextValueRendering(java.lang.Object r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r1 = this;
        r0 = r1.render(r2);	 Catch:{ InterruptedException -> 0x000a, Throwable -> 0x0005 }
        return r0;
    L_0x0005:
        r0 = move-exception;
        rx.exceptions.Exceptions.throwIfFatal(r0);
        goto L_0x0011;
    L_0x000a:
        r0 = java.lang.Thread.currentThread();
        r0.interrupt();
    L_0x0011:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = r2.getClass();
        r2 = r2.getName();
        r0.append(r2);
        r2 = ".errorRendering";
        r0.append(r2);
        r2 = r0.toString();
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.plugins.RxJavaErrorHandler.handleOnNextValueRendering(java.lang.Object):java.lang.String");
    }
}
