package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.jvm.internal.Intrinsics;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: APAddCardPresenter.kt */
public final class APAddCardPresenter extends APAbstractPresenter {
    public static final Companion Companion = new Companion();
    public static final String TAG = "APAddCardPresenter";
    private Subscription getOpcSubscription = Subscriptions.empty();
    private APAddCardView view;

    /* compiled from: APAddCardPresenter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final void onAttach(APAddCardView aPAddCardView) {
        Intrinsics.checkParameterIsNotNull(aPAddCardView, "v");
        this.view = aPAddCardView;
    }

    public final void onDetach() {
        this.view = null;
    }

    public final void getCardData(String str, Boolean bool) {
        Intrinsics.checkParameterIsNotNull(str, "cardToken");
        this.getOpcSubscription = getAndroidPayApi().getOpcAndAddress(str, bool).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new APAddCardPresenter$getCardData$1(this), (Action1) new APAddCardPresenter$getCardData$2(this));
    }

    public final void onDestroy() {
        this.view = null;
        super.onDestroy();
    }
}
