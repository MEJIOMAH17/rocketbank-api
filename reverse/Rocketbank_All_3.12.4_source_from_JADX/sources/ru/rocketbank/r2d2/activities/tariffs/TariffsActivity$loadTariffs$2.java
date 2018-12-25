package ru.rocketbank.r2d2.activities.tariffs;

import ru.rocketbank.core.network.model.tariffs.TariffsResp;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: TariffsActivity.kt */
final class TariffsActivity$loadTariffs$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ String $currency;
    final /* synthetic */ TariffsActivity this$0;

    TariffsActivity$loadTariffs$2(TariffsActivity tariffsActivity, String str) {
        this.this$0 = tariffsActivity;
        this.$currency = str;
    }

    public final Observable<TariffsResp> call(Boolean bool) {
        return this.this$0.getTariffsApi().getTariffsList(this.$currency);
    }
}
