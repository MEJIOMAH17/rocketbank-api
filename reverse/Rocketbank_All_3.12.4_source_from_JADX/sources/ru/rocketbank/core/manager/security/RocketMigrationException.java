package ru.rocketbank.core.manager.security;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketMigrationException.kt */
public final class RocketMigrationException extends Exception {
    public static final Companion Companion = new Companion();
    private static final long serialVersionUID = 6911829698873359514L;

    /* compiled from: RocketMigrationException.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RocketMigrationException(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "t");
        super(th);
    }
}
