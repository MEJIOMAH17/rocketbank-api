package ru.rocketbank.r2d2.root.card.binding;

import android.util.Log;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.facade.Account;
import rx.Subscriber;

/* compiled from: CardPresenter.kt */
public final class CardPresenter$onResume$3 extends Subscriber<Triple<? extends Account, ? extends ApCheckResult, ? extends SpCheckResult>> {
    final /* synthetic */ CardPresenter this$0;

    public final void onCompleted() {
    }

    CardPresenter$onResume$3(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
    }

    public final void onNext(Triple<Account, ApCheckResult, SpCheckResult> triple) {
        Intrinsics.checkParameterIsNotNull(triple, "results");
        Account account = (Account) triple.component1();
        ApCheckResult apCheckResult = (ApCheckResult) triple.component2();
        SpCheckResult spCheckResult = (SpCheckResult) triple.component3();
        if (account != null) {
            AccountModel accountModel = account.getAccountModel();
            if (accountModel != null) {
                this.this$0.lastAccountModel = accountModel;
                this.this$0.onAccount(accountModel, apCheckResult, spCheckResult);
            }
        }
        triple = this.this$0.view;
        if (triple != null) {
            triple.hideLoader();
        }
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("CardPresenter", th.getMessage(), th);
        th = this.this$0.view;
        if (th != null) {
            th.hideLoader();
        }
    }
}
