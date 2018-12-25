package ru.rocketbank.r2d2.activities.tariffs;

import rx.functions.Func1;

/* compiled from: TariffsActivity.kt */
final class TariffsActivity$loadTariffs$1<T, R> implements Func1<Boolean, Boolean> {
    final /* synthetic */ TariffsActivity this$0;

    TariffsActivity$loadTariffs$1(TariffsActivity tariffsActivity) {
        this.this$0 = tariffsActivity;
    }

    public final Boolean call(Boolean bool) {
        if (!bool.booleanValue()) {
            this.this$0.hideProgressDialog();
        }
        return bool;
    }
}
