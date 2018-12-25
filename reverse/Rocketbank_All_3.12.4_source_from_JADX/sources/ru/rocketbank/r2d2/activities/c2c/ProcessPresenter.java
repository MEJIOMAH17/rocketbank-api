package ru.rocketbank.r2d2.activities.c2c;

import android.os.Bundle;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.network.model.SendMoneyBody;
import ru.rocketbank.core.utils.presenter.RxPresenter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: ProcessPresenter.kt */
public final class ProcessPresenter extends RxPresenter<CardTransferProcessActivity> {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_INSTANCE_ID = 102;
    private static final String TAG = "ProcessPresenter";
    public static final UUID presenterId;
    public Card2CardApi card2CardApi;

    /* compiled from: ProcessPresenter.kt */
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

    public final void resetSendMoney() {
        removeInstance(102);
    }

    public final void sendMoney(SendMoneyBody sendMoneyBody, Function2<? super CardTransferProcessActivity, ? super Card2CardTransferResponseData, Unit> function2, Function2<? super CardTransferProcessActivity, ? super Throwable, Unit> function22, Function2<? super CardTransferProcessActivity, ? super Card2CardTransferResponseData, Unit> function23) {
        Intrinsics.checkParameterIsNotNull(sendMoneyBody, "sendMoneyBody");
        singleCallOrReplay(102, new ProcessPresenter$sendMoney$1(this, sendMoneyBody), function2, function22, function23);
    }

    static {
        UUID fromString = UUID.fromString("9165e691-36fd-40c7-adbd-bb77e88913d3");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"9165e69…-40c7-adbd-bb77e88913d3\")");
        presenterId = fromString;
    }
}
