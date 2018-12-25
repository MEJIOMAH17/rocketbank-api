package ru.rocketbank.core.dagger;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.CurrencyManager;

/* compiled from: CurrencyModule.kt */
public final class CurrencyModule {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CurrencyModule.class), "currencyManager", "getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;"))};
    private final Lazy currencyManager$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new CurrencyManager());

    public final CurrencyManager getCurrencyManager() {
        return (CurrencyManager) this.currencyManager$delegate.getValue();
    }
}
