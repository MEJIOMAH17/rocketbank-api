package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;
import ru.rocketbank.core.network.model.SendMoneyBody;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ProcessPresenter.kt */
final class ProcessPresenter$sendMoney$1 extends Lambda implements Function0<Observable<Card2CardTransferResponseData>> {
    final /* synthetic */ SendMoneyBody $sendMoneyBody;
    final /* synthetic */ ProcessPresenter this$0;

    ProcessPresenter$sendMoney$1(ProcessPresenter processPresenter, SendMoneyBody sendMoneyBody) {
        this.this$0 = processPresenter;
        this.$sendMoneyBody = sendMoneyBody;
        super(0);
    }

    public final Observable<Card2CardTransferResponseData> invoke() {
        Observable<Card2CardTransferResponseData> observeOn = this.this$0.getCard2CardApi().sendMoney(this.$sendMoneyBody).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "card2CardApi.sendMoney(s…dSchedulers.mainThread())");
        return observeOn;
    }
}
