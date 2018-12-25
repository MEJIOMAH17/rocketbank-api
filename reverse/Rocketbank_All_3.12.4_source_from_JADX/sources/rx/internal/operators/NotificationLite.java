package rx.internal.operators;

import java.io.Serializable;
import rx.Observer;

public final class NotificationLite {
    private static final Object ON_COMPLETED_SENTINEL = new C16511();
    private static final Object ON_NEXT_NULL_SENTINEL = new C16522();

    /* renamed from: rx.internal.operators.NotificationLite$1 */
    static class C16511 implements Serializable {
        private static final long serialVersionUID = 1;

        public final String toString() {
            return "Notification=>Completed";
        }

        C16511() {
        }
    }

    /* renamed from: rx.internal.operators.NotificationLite$2 */
    static class C16522 implements Serializable {
        private static final long serialVersionUID = 2;

        public final String toString() {
            return "Notification=>NULL";
        }

        C16522() {
        }
    }

    static final class OnErrorSentinel implements Serializable {
        private static final long serialVersionUID = 3;
        /* renamed from: e */
        final Throwable f754e;

        public OnErrorSentinel(Throwable th) {
            this.f754e = th;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("Notification=>Error:");
            stringBuilder.append(this.f754e);
            return stringBuilder.toString();
        }
    }

    private NotificationLite() {
    }

    public static <T> Object next(T t) {
        return t == null ? ON_NEXT_NULL_SENTINEL : t;
    }

    public static Object completed() {
        return ON_COMPLETED_SENTINEL;
    }

    public static Object error(Throwable th) {
        return new OnErrorSentinel(th);
    }

    public static <T> boolean accept(Observer<? super T> observer, Object obj) {
        if (obj == ON_COMPLETED_SENTINEL) {
            observer.onCompleted();
            return true;
        } else if (obj == ON_NEXT_NULL_SENTINEL) {
            observer.onNext(null);
            return false;
        } else if (obj == null) {
            throw new IllegalArgumentException("The lite notification can not be null");
        } else if (obj.getClass() == OnErrorSentinel.class) {
            observer.onError(((OnErrorSentinel) obj).f754e);
            return true;
        } else {
            observer.onNext(obj);
            return false;
        }
    }

    public static boolean isCompleted(Object obj) {
        return obj == ON_COMPLETED_SENTINEL ? true : null;
    }

    public static boolean isError(Object obj) {
        return obj instanceof OnErrorSentinel;
    }

    public static boolean isNull(Object obj) {
        return obj == ON_NEXT_NULL_SENTINEL ? true : null;
    }

    public static boolean isNext(Object obj) {
        return (obj == null || isError(obj) || isCompleted(obj) != null) ? null : true;
    }

    public static <T> T getValue(Object obj) {
        return obj == ON_NEXT_NULL_SENTINEL ? null : obj;
    }

    public static Throwable getError(Object obj) {
        return ((OnErrorSentinel) obj).f754e;
    }
}
