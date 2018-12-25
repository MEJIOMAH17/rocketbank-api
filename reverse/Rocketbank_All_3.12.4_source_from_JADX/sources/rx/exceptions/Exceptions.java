package rx.exceptions;

import java.util.Collection;
import java.util.List;
import rx.Observer;
import rx.SingleSubscriber;
import rx.annotations.Beta;

public final class Exceptions {
    private static final int MAX_DEPTH = 25;

    private Exceptions() {
        throw new IllegalStateException("No instances!");
    }

    public static RuntimeException propagate(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new RuntimeException(th);
        }
    }

    public static void throwIfFatal(Throwable th) {
        if (th instanceof OnErrorNotImplementedException) {
            throw ((OnErrorNotImplementedException) th);
        } else if (th instanceof OnErrorFailedException) {
            throw ((OnErrorFailedException) th);
        } else if (th instanceof OnCompletedFailedException) {
            throw ((OnCompletedFailedException) th);
        } else if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static void addCause(java.lang.Throwable r4, java.lang.Throwable r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r0 = new java.util.HashSet;
        r0.<init>();
        r1 = 0;
    L_0x0006:
        r2 = r4.getCause();
        if (r2 == 0) goto L_0x002a;
    L_0x000c:
        r2 = r1 + 1;
        r3 = 25;
        if (r1 < r3) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        r4 = r4.getCause();
        r1 = r4.getCause();
        r1 = r0.contains(r1);
        if (r1 != 0) goto L_0x002a;
    L_0x0021:
        r1 = r4.getCause();
        r0.add(r1);
        r1 = r2;
        goto L_0x0006;
    L_0x002a:
        r4.initCause(r5);	 Catch:{ Throwable -> 0x002e }
        return;
    L_0x002e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.exceptions.Exceptions.addCause(java.lang.Throwable, java.lang.Throwable):void");
    }

    public static Throwable getFinalCause(Throwable th) {
        int i = 0;
        while (th.getCause() != null) {
            int i2 = i + 1;
            if (i >= 25) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th = th.getCause();
            i = i2;
        }
        return th;
    }

    public static void throwIfAny(List<? extends Throwable> list) {
        if (list != null && !list.isEmpty()) {
            if (list.size() == 1) {
                Throwable th = (Throwable) list.get(0);
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                } else if (th instanceof Error) {
                    throw ((Error) th);
                } else {
                    throw new RuntimeException(th);
                }
            }
            throw new CompositeException((Collection) list);
        }
    }

    @Beta
    public static void throwOrReport(Throwable th, Observer<?> observer, Object obj) {
        throwIfFatal(th);
        observer.onError(OnErrorThrowable.addValueAsLastCause(th, obj));
    }

    @Beta
    public static void throwOrReport(Throwable th, SingleSubscriber<?> singleSubscriber, Object obj) {
        throwIfFatal(th);
        singleSubscriber.onError(OnErrorThrowable.addValueAsLastCause(th, obj));
    }

    @Beta
    public static void throwOrReport(Throwable th, Observer<?> observer) {
        throwIfFatal(th);
        observer.onError(th);
    }

    @Beta
    public static void throwOrReport(Throwable th, SingleSubscriber<?> singleSubscriber) {
        throwIfFatal(th);
        singleSubscriber.onError(th);
    }
}
