package ru.rocketbank.r2d2.activities.card;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PlasticLimits;
import rx.Subscriber;

/* compiled from: CardLimitActivity.kt */
public final class CardLimitActivity$updateLimits$1 extends Subscriber<PlasticLimits> {
    final /* synthetic */ Function0 $onFail;
    final /* synthetic */ CardLimitActivity this$0;

    public final void onCompleted() {
    }

    CardLimitActivity$updateLimits$1(CardLimitActivity cardLimitActivity, Function0 function0) {
        this.this$0 = cardLimitActivity;
        this.$onFail = function0;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.$onFail.invoke();
        this.this$0.hideProgressDialog();
    }

    public final void onNext(PlasticLimits plasticLimits) {
        if (plasticLimits != null) {
            plasticLimits = plasticLimits.getPlastic();
            if (plasticLimits != null) {
                plasticLimits = plasticLimits.getLimits();
                if (plasticLimits != null) {
                    this.this$0.setCashOperation(plasticLimits.getAtm());
                    this.this$0.setCashAbroadOperation(plasticLimits.getAtm_abroad());
                    this.this$0.setCardOperation(plasticLimits.getPos());
                    this.this$0.setInternetOperation(plasticLimits.getInternet());
                    this.this$0.setCurrentLimits(plasticLimits);
                }
            }
        }
        this.this$0.hideProgressDialog();
    }
}
