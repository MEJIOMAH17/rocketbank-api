package ru.rocketbank.r2d2.activities.c2c;

import android.os.Bundle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.CardManager;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.utils.presenter.RxPresenter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: TransferAmountPresenter.kt */
public final class TransferAmountPresenter extends RxPresenter<BaseAmountActivity> {
    private static final int COMMISSION_OUT = 102;
    public static final Companion Companion = new Companion();
    private static final int INSTANCE_ID = 101;
    public Card2CardApi card2CardApi;
    public CardManager cardManager;

    /* compiled from: TransferAmountPresenter.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getINSTANCE_ID() {
            return TransferAmountPresenter.INSTANCE_ID;
        }

        public final int getCOMMISSION_OUT() {
            return TransferAmountPresenter.COMMISSION_OUT;
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

    public final CardManager getCardManager() {
        CardManager cardManager = this.cardManager;
        if (cardManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardManager");
        }
        return cardManager;
    }

    public final void setCardManager(CardManager cardManager) {
        Intrinsics.checkParameterIsNotNull(cardManager, "<set-?>");
        this.cardManager = cardManager;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.card2CardApi = RocketApplication.Companion.getInjector().getCard2CardApi();
        this.cardManager = RocketApplication.Companion.getInjector().getCardManager();
    }

    public final void binRequest(String str, Function2<? super BaseAmountActivity, ? super BinResponseData, Unit> function2, Function2<? super BaseAmountActivity, ? super Throwable, Unit> function22) {
        Intrinsics.checkParameterIsNotNull(str, "pan");
        singleCallOrRestart(INSTANCE_ID, new TransferAmountPresenter$binRequest$1(this, str), function2, function22, function2);
    }

    public final void outcomeCommission(double d, String str, String str2, Function2<? super BaseAmountActivity, ? super CommissionStringResponse, Unit> function2, Function2<? super BaseAmountActivity, ? super Throwable, Unit> function22) {
        removeInstance(COMMISSION_OUT);
        RxPresenter.singleCallOrRestart$default(this, COMMISSION_OUT, new TransferAmountPresenter$outcomeCommission$1(this, d, str, str2), function2, function22, null, 16, null);
    }

    public final void incomeCommission(double d, String str, String str2, Function2<? super BaseAmountActivity, ? super CommissionStringResponse, Unit> function2, Function2<? super BaseAmountActivity, ? super Throwable, Unit> function22) {
        removeInstance(COMMISSION_OUT);
        RxPresenter.singleCallOrRestart$default(this, COMMISSION_OUT, new TransferAmountPresenter$incomeCommission$1(this, d, str, str2), function2, function22, null, 16, null);
    }
}
