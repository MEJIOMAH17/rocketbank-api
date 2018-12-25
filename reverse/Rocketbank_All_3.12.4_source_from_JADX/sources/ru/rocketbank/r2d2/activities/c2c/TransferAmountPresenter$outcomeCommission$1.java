package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: TransferAmountPresenter.kt */
final class TransferAmountPresenter$outcomeCommission$1 extends Lambda implements Function0<Observable<CommissionStringResponse>> {
    final /* synthetic */ double $amount;
    final /* synthetic */ String $cardNumber;
    final /* synthetic */ String $token;
    final /* synthetic */ TransferAmountPresenter this$0;

    TransferAmountPresenter$outcomeCommission$1(TransferAmountPresenter transferAmountPresenter, double d, String str, String str2) {
        this.this$0 = transferAmountPresenter;
        this.$amount = d;
        this.$cardNumber = str;
        this.$token = str2;
        super(0);
    }

    public final Observable<CommissionStringResponse> invoke() {
        Observable<CommissionStringResponse> observeOn = this.this$0.getCard2CardApi().getOutComeCommission(this.$amount, this.$cardNumber, this.$token).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "card2CardApi.getOutComeC…dSchedulers.mainThread())");
        return observeOn;
    }
}
