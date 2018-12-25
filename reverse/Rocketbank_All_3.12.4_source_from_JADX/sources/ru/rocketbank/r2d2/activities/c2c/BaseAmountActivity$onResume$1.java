package ru.rocketbank.r2d2.activities.c2c;

import ru.rocketbank.core.model.facade.Account;
import rx.functions.Action1;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$onResume$1<T> implements Action1<Account> {
    final /* synthetic */ BaseAmountActivity this$0;

    BaseAmountActivity$onResume$1(BaseAmountActivity baseAmountActivity) {
        this.this$0 = baseAmountActivity;
    }

    public final void call(Account account) {
        this.this$0.onSelectAccount(account);
    }
}
