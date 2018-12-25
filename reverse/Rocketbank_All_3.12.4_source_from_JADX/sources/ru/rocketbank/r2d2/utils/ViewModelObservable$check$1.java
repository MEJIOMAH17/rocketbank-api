package ru.rocketbank.r2d2.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: ViewModelObservable.kt */
final class ViewModelObservable$check$1 extends Lambda implements Function1<ViewField, Boolean> {
    public static final ViewModelObservable$check$1 INSTANCE = new ViewModelObservable$check$1();

    ViewModelObservable$check$1() {
        super(1);
    }

    public final boolean invoke(ViewField viewField) {
        Intrinsics.checkParameterIsNotNull(viewField, "it");
        return viewField.getValid();
    }
}
