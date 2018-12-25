package kotlin;

import java.io.Serializable;

/* compiled from: Lazy.kt */
final class InitializedLazyImpl<T> implements Serializable, Lazy<T> {
    private final T value;

    public final boolean isInitialized() {
        return true;
    }

    public InitializedLazyImpl(T t) {
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }

    public final String toString() {
        return String.valueOf(getValue());
    }
}
