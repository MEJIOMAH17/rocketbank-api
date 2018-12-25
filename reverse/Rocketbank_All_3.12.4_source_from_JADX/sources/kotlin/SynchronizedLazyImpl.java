package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Lazy.kt */
final class SynchronizedLazyImpl<T> implements Serializable, Lazy<T> {
    private volatile Object _value;
    private Function0<? extends T> initializer;
    private final Object lock;

    public SynchronizedLazyImpl(Function0<? extends T> function0, Object obj) {
        Intrinsics.checkParameterIsNotNull(function0, "initializer");
        this.initializer = function0;
        this._value = UNINITIALIZED_VALUE.INSTANCE;
        if (obj == null) {
            obj = this;
        }
        this.lock = obj;
    }

    public /* synthetic */ SynchronizedLazyImpl(Function0 function0, Object obj, int i, Ref ref) {
        if ((i & 2) != 0) {
            obj = null;
        }
        this(function0, obj);
    }

    public final T getValue() {
        T t = this._value;
        if (t != UNINITIALIZED_VALUE.INSTANCE) {
            return t;
        }
        T t2;
        synchronized (this.lock) {
            t2 = this._value;
            if (t2 == UNINITIALIZED_VALUE.INSTANCE) {
                Function0 function0 = this.initializer;
                if (function0 == null) {
                    Intrinsics.throwNpe();
                }
                t2 = function0.invoke();
                this._value = t2;
                this.initializer = null;
            }
        }
        return t2;
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
