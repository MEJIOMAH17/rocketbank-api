package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: APAbstractPresenter.kt */
final class APAbstractPresenter$androidPayApi$2 extends Lambda implements Function0<AndroidPayApi> {
    public static final APAbstractPresenter$androidPayApi$2 INSTANCE = new APAbstractPresenter$androidPayApi$2();

    APAbstractPresenter$androidPayApi$2() {
        super(0);
    }

    public final AndroidPayApi invoke() {
        return RocketApplication.Companion.getInjector().getAndroidPayApi();
    }
}
