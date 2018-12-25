package ru.rocketbank.r2d2.root.devidepayment.sp;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.pay.samsung.RxSPay;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: SPAddCardPresenter.kt */
final class SPAddCardPresenter$spay$2 extends Lambda implements Function0<RxSPay> {
    public static final SPAddCardPresenter$spay$2 INSTANCE = new SPAddCardPresenter$spay$2();

    SPAddCardPresenter$spay$2() {
        super(0);
    }

    public final RxSPay invoke() {
        return RocketApplication.Companion.getInjector().getRxSPay();
    }
}
