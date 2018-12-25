package ru.rocketbank.core.utils;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Interactor.kt */
final class Interactor$execute$1 extends Lambda implements Function1<Throwable, Unit> {
    public static final Interactor$execute$1 INSTANCE = new Interactor$execute$1();

    Interactor$execute$1() {
        super(1);
    }

    public final void invoke(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "it");
    }
}
