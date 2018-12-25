package ru.rocketbank.r2d2.root.devidepayment.sp;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.core.pay.samsung.RxSPay;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: SPAddCardPresenter.kt */
public final class SPAddCardPresenter extends Presenter {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(SPAddCardPresenter.class), "spay", "getSpay()Lru/rocketbank/core/pay/samsung/RxSPay;"))};
    private Subscription addCardSubscription = Subscriptions.empty();
    private final AndroidPayApi androidPayApi = RocketApplication.Companion.getInjector().getAndroidPayApi();
    private final Lazy spay$delegate = ExceptionsKt__ExceptionsKt.lazy(SPAddCardPresenter$spay$2.INSTANCE);
    private SPAddCardView view;

    private final RxSPay getSpay() {
        return (RxSPay) this.spay$delegate.getValue();
    }

    public final void onStart(SPAddCardView sPAddCardView) {
        Intrinsics.checkParameterIsNotNull(sPAddCardView, "v");
        this.view = sPAddCardView;
    }

    public final void onStop() {
        this.view = null;
    }

    public final void addCard(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardToken");
        SPAddCardView sPAddCardView = this.view;
        if (sPAddCardView != null) {
            sPAddCardView.showProgress();
        }
        this.addCardSubscription.unsubscribe();
        this.addCardSubscription = this.androidPayApi.getOpcAndAddress(str, null).subscribeOn(Schedulers.io()).flatMap(new SPAddCardPresenter$addCard$1(this)).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new SPAddCardPresenter$addCard$2(this), (Action1) new SPAddCardPresenter$addCard$3(this));
    }

    public final void onDestroy() {
        super.onDestroy();
        this.addCardSubscription.unsubscribe();
    }
}
