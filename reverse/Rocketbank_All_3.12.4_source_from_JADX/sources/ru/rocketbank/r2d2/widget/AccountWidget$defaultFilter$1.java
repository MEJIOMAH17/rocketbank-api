package ru.rocketbank.r2d2.widget;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.facade.Account;

/* compiled from: AccountWidget.kt */
final class AccountWidget$defaultFilter$1 extends Lambda implements Function1<UserModel, Function1<? super Account, ? extends Boolean>> {
    final /* synthetic */ AccountWidget this$0;

    AccountWidget$defaultFilter$1(AccountWidget accountWidget) {
        this.this$0 = accountWidget;
        super(1);
    }

    public final Function1<Account, Boolean> invoke(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "<anonymous parameter 0>");
        return (Function1) new Function1<Account, Boolean>() {
            public final boolean invoke(Account account) {
                Intrinsics.checkParameterIsNotNull(account, "account");
                if (account.getCurrency() != Currency.ROUBLE) {
                    if (this.this$0.currencies.contains(account.getCurrency()) == null) {
                        return null;
                    }
                }
                return true;
            }
        };
    }
}
