package ru.rocketbank.core.exceptions;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: NoAccountException.kt */
public final class NoAccountException extends RuntimeException {
    public NoAccountException(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        super(str);
    }
}
