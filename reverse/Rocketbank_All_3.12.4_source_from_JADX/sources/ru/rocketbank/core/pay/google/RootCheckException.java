package ru.rocketbank.core.pay.google;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPayUtils.kt */
public final class RootCheckException extends RuntimeException {
    public RootCheckException(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "t");
        super(th);
    }
}
