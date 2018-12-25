package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Lazy.kt */
public final class UnsafeLazyImpl<T> implements Serializable, Lazy<T> {
    private Object _value = UNINITIALIZED_VALUE.INSTANCE;
    private Function0<? extends T> initializer;

    public UnsafeLazyImpl(Function0<? extends T> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "initializer");
        this.initializer = function0;
    }

    public final T getValue() {
        if (this._value == UNINITIALIZED_VALUE.INSTANCE) {
            Function0 function0 = this.initializer;
            if (function0 == null) {
                Intrinsics.throwNpe();
            }
            this._value = function0.invoke();
            this.initializer = null;
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
