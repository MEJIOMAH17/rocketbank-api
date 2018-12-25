package ru.rocketbank.r2d2.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ViewModelObservable.kt */
final class ViewModelObservable$putField$2 extends Lambda implements Function1<String, Boolean> {
    public static final ViewModelObservable$putField$2 INSTANCE = new ViewModelObservable$putField$2();

    ViewModelObservable$putField$2() {
        super(1);
    }

    public final boolean invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        return ((CharSequence) str).length() > null ? true : null;
    }
}
