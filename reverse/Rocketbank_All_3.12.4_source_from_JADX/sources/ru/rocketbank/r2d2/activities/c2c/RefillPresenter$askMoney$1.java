package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.card.Card2CardRefillResponseData;
import ru.rocketbank.core.network.model.CardBody;
import rx.Observable;

/* compiled from: RefillPresenter.kt */
final class RefillPresenter$askMoney$1 extends Lambda implements Function0<Observable<Card2CardRefillResponseData>> {
    final /* synthetic */ double $amount;
    final /* synthetic */ CardBody $cardBody;
    final /* synthetic */ RefillPresenter this$0;

    RefillPresenter$askMoney$1(RefillPresenter refillPresenter, double d, CardBody cardBody) {
        this.this$0 = refillPresenter;
        this.$amount = d;
        this.$cardBody = cardBody;
        super(0);
    }

    public final Observable<Card2CardRefillResponseData> invoke() {
        Observable<Card2CardRefillResponseData> refillFromCardMoney = this.this$0.getCard2CardApi().refillFromCardMoney(this.$amount, this.$cardBody);
        Intrinsics.checkExpressionValueIsNotNull(refillFromCardMoney, "card2CardApi.refillFromCardMoney(amount, cardBody)");
        return refillFromCardMoney;
    }
}
