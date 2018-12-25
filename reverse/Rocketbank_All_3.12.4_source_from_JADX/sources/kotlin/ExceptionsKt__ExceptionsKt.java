package kotlin;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Exceptions.kt */
public final class ExceptionsKt__ExceptionsKt {
    public static <T> Lazy<T> lazyOf(T t) {
        return new InitializedLazyImpl(t);
    }

    public static <T> Lazy<T> lazy(Function0<? extends T> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "initializer");
        return new SynchronizedLazyImpl(function0, null, 2, null);
    }
}
