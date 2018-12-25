package ru.rocketbank.r2d2.root.card.binding;

import rx.Observable;
import rx.functions.Func1;

/* compiled from: CardPresenter.kt */
final class CardPresenter$onResume$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$onResume$2(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final rx.Observable<kotlin.Triple<ru.rocketbank.core.model.facade.Account, ru.rocketbank.r2d2.root.card.binding.CardPresenter.ApCheckResult, ru.rocketbank.r2d2.root.card.binding.CardPresenter.SpCheckResult>> call(kotlin.Pair<ru.rocketbank.core.model.facade.Account, ru.rocketbank.r2d2.root.card.binding.CardPresenter.ApCheckResult> r4) {
        /*
        r3 = this;
        r0 = r4.component1();
        r0 = (ru.rocketbank.core.model.facade.Account) r0;
        r4 = r4.component2();
        r4 = (ru.rocketbank.r2d2.root.card.binding.CardPresenter.ApCheckResult) r4;
        r1 = r3.this$0;
        r1 = r1.rxSpay;
        if (r0 == 0) goto L_0x0020;
    L_0x0014:
        r2 = r0.getAccountModel();
        if (r2 == 0) goto L_0x0020;
    L_0x001a:
        r2 = r2.getPan();
        if (r2 != 0) goto L_0x0022;
    L_0x0020:
        r2 = "";
    L_0x0022:
        r1 = r1.checkCard(r2);
        r2 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onResume$2$1;
        r2.<init>(r0, r4);
        r2 = (rx.functions.Func1) r2;
        r1 = r1.map(r2);
        r2 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onResume$2$2;
        r2.<init>(r0, r4);
        r2 = (rx.functions.Func1) r2;
        r4 = r1.onErrorReturn(r2);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.card.binding.CardPresenter$onResume$2.call(kotlin.Pair):rx.Observable<kotlin.Triple<ru.rocketbank.core.model.facade.Account, ru.rocketbank.r2d2.root.card.binding.CardPresenter$ApCheckResult, ru.rocketbank.r2d2.root.card.binding.CardPresenter$SpCheckResult>>");
    }
}
