package com.jakewharton.rxbinding.internal;

import rx.functions.Func0;
import rx.functions.Func1;

public final class Functions {
    private static final Always<Boolean> ALWAYS_TRUE;
    public static final Func0<Boolean> FUNC0_ALWAYS_TRUE;
    public static final Func1<Object, Boolean> FUNC1_ALWAYS_TRUE = ALWAYS_TRUE;

    static final class Always<T> implements Func0<T>, Func1<Object, T> {
        private final T value;

        Always(T t) {
            this.value = t;
        }

        public final T call(Object obj) {
            return this.value;
        }

        public final T call() {
            return this.value;
        }
    }

    static {
        Func0 always = new Always(Boolean.TRUE);
        ALWAYS_TRUE = always;
        FUNC0_ALWAYS_TRUE = always;
    }
}
