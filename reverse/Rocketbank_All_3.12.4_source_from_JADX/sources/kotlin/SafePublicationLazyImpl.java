package kotlin;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Lazy.kt */
final class SafePublicationLazyImpl<T> implements Serializable, Lazy<T> {
    public static final Companion Companion = new Companion();
    private static final AtomicReferenceFieldUpdater<SafePublicationLazyImpl<?>, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "_value");
    private volatile Object _value = UNINITIALIZED_VALUE.INSTANCE;
    /* renamed from: final */
    private final Object f720final = UNINITIALIZED_VALUE.INSTANCE;
    private volatile Function0<? extends T> initializer;

    /* compiled from: Lazy.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public SafePublicationLazyImpl(Function0<? extends T> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "initializer");
        this.initializer = function0;
    }

    public final T getValue() {
        T t = this._value;
        if (t != UNINITIALIZED_VALUE.INSTANCE) {
            return t;
        }
        Function0 function0 = this.initializer;
        if (function0 != null) {
            t = function0.invoke();
            if (valueUpdater.compareAndSet(this, UNINITIALIZED_VALUE.INSTANCE, t)) {
                this.initializer = null;
                return t;
            }
        }
        return this._value;
    }

    public final boolean isInitialized() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE;
    }

    public final String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }
}
