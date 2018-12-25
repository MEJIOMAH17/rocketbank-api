package ru.rocketbank.core.utils;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MonthNames.kt */
public final class MonthNames {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(MonthNames.class), "NAMES", "getNAMES()[Ljava/lang/String;"))};
    public static final MonthNames INSTANCE = new MonthNames();
    private static final Lazy NAMES$delegate = ExceptionsKt__ExceptionsKt.lazy(MonthNames$NAMES$2.INSTANCE);

    public final String[] getNAMES() {
        return (String[]) NAMES$delegate.getValue();
    }

    private MonthNames() {
    }
}
