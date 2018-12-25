package ru.rocketbank.r2d2.activities.c2c;

import android.os.Bundle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.card.Card2CardRefillResponseData;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.network.model.CardBody;
import ru.rocketbank.core.utils.presenter.RxPresenter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: RefillPresenter.kt */
public final class RefillPresenter extends RxPresenter<CardRefillActivity> {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_INSTANCE_ID = 101;
    public Card2CardApi card2CardApi;

    /* compiled from: RefillPresenter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final Card2CardApi getCard2CardApi() {
        Card2CardApi card2CardApi = this.card2CardApi;
        if (card2CardApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("card2CardApi");
        }
        return card2CardApi;
    }

    public final void setCard2CardApi(Card2CardApi card2CardApi) {
        Intrinsics.checkParameterIsNotNull(card2CardApi, "<set-?>");
        this.card2CardApi = card2CardApi;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.card2CardApi = RocketApplication.Companion.getInjector().getCard2CardApi();
    }

    public final void resetAskMoney() {
        removeInstance(REQUEST_INSTANCE_ID);
    }

    public final void askMoney(double d, CardBody cardBody, Function2<? super CardRefillActivity, ? super Card2CardRefillResponseData, Unit> function2, Function2<? super CardRefillActivity, ? super Throwable, Unit> function22, Function2<? super CardRefillActivity, ? super Card2CardRefillResponseData, Unit> function23) {
        Intrinsics.checkParameterIsNotNull(cardBody, "cardBody");
        singleCallOrReplay(REQUEST_INSTANCE_ID, new RefillPresenter$askMoney$1(this, d, cardBody), function2, function22, function23);
    }
}
