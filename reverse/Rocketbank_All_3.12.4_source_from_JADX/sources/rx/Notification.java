package rx;

public final class Notification<T> {
    private static final Notification<Void> ON_COMPLETED = new Notification(Kind.OnCompleted, null, null);
    private final Kind kind;
    private final Throwable throwable;
    private final T value;

    public enum Kind {
        OnNext,
        OnError,
        OnCompleted
    }

    public static <T> Notification<T> createOnNext(T t) {
        return new Notification(Kind.OnNext, t, null);
    }

    public static <T> Notification<T> createOnError(Throwable th) {
        return new Notification(Kind.OnError, null, th);
    }

    public static <T> Notification<T> createOnCompleted() {
        return ON_COMPLETED;
    }

    @Deprecated
    public static <T> Notification<T> createOnCompleted(Class<T> cls) {
        return ON_COMPLETED;
    }

    private Notification(Kind kind, T t, Throwable th) {
        this.value = t;
        this.throwable = th;
        this.kind = kind;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final T getValue() {
        return this.value;
    }

    public final boolean hasValue() {
        return isOnNext() && this.value != null;
    }

    public final boolean hasThrowable() {
        return isOnError() && this.throwable != null;
    }

    public final Kind getKind() {
        return this.kind;
    }

    public final boolean isOnError() {
        return getKind() == Kind.OnError;
    }

    public final boolean isOnCompleted() {
        return getKind() == Kind.OnCompleted;
    }

    public final boolean isOnNext() {
        return getKind() == Kind.OnNext;
    }

    public final void accept(Observer<? super T> observer) {
        if (this.kind == Kind.OnNext) {
            observer.onNext(getValue());
        } else if (this.kind == Kind.OnCompleted) {
            observer.onCompleted();
        } else {
            observer.onError(getThrowable());
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append('[');
        stringBuilder.append(super.toString());
        stringBuilder.append(' ');
        stringBuilder.append(getKind());
        if (hasValue()) {
            stringBuilder.append(' ');
            stringBuilder.append(getValue());
        }
        if (hasThrowable()) {
            stringBuilder.append(' ');
            stringBuilder.append(getThrowable().getMessage());
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public final int hashCode() {
        int hashCode = getKind().hashCode();
        if (hasValue()) {
            hashCode = (hashCode * 31) + getValue().hashCode();
        }
        return hasThrowable() ? (hashCode * 31) + getThrowable().hashCode() : hashCode;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        Notification notification = (Notification) obj;
        return notification.getKind() == getKind() && ((this.value == notification.value || (this.value != null && this.value.equals(notification.value))) && (this.throwable == notification.throwable || !(this.throwable == null || this.throwable.equals(notification.throwable) == null)));
    }
}
