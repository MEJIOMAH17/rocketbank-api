package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.core.utils.presenter.Presenter;

/* compiled from: APAbstractPresenter.kt */
public abstract class APAbstractPresenter extends Presenter {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(APAbstractPresenter.class), "androidPayApi", "getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;"))};
    private final Lazy androidPayApi$delegate = ExceptionsKt__ExceptionsKt.lazy(APAbstractPresenter$androidPayApi$2.INSTANCE);

    protected final AndroidPayApi getAndroidPayApi() {
        return (AndroidPayApi) this.androidPayApi$delegate.getValue();
    }
}
