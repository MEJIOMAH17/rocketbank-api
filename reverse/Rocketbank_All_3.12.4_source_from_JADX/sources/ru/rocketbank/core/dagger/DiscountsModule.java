package ru.rocketbank.core.dagger;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;

/* compiled from: DiscountsModule.kt */
public final class DiscountsModule {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(DiscountsModule.class), "discountsCache", "getDiscountsCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;"))};
    private final Lazy discountsCache$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new DiscountCache());

    public final DiscountCache provideDiscountsCache() {
        return (DiscountCache) this.discountsCache$delegate.getValue();
    }
}
