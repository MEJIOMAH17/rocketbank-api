package rx.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicReference;
import rx.exceptions.CompositeException;

public enum ExceptionsUtils {
    ;
    
    private static final Throwable TERMINATED = null;

    static {
        TERMINATED = new Throwable("Terminated");
    }

    public static boolean addThrowable(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        Object obj;
        do {
            th2 = (Throwable) atomicReference.get();
            if (th2 == TERMINATED) {
                return false;
            }
            if (th2 == null) {
                obj = th;
            } else if (th2 instanceof CompositeException) {
                Collection arrayList = new ArrayList(((CompositeException) th2).getExceptions());
                arrayList.add(th);
                obj = new CompositeException(arrayList);
            } else {
                obj = new CompositeException(th2, th);
            }
        } while (!atomicReference.compareAndSet(th2, obj));
        return true;
    }

    public static Throwable terminate(AtomicReference<Throwable> atomicReference) {
        Throwable th = (Throwable) atomicReference.get();
        return th != TERMINATED ? (Throwable) atomicReference.getAndSet(TERMINATED) : th;
    }

    public static boolean isTerminated(AtomicReference<Throwable> atomicReference) {
        return isTerminated((Throwable) atomicReference.get());
    }

    public static boolean isTerminated(Throwable th) {
        return th == TERMINATED ? true : null;
    }
}
