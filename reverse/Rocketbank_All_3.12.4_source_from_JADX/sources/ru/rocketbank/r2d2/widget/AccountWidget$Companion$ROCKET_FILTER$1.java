package ru.rocketbank.r2d2.widget;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.facade.Account;

/* compiled from: AccountWidget.kt */
final class AccountWidget$Companion$ROCKET_FILTER$1 extends Lambda implements Function1<UserModel, Function1<? super Account, ? extends Boolean>> {
    public static final AccountWidget$Companion$ROCKET_FILTER$1 INSTANCE = new AccountWidget$Companion$ROCKET_FILTER$1();

    AccountWidget$Companion$ROCKET_FILTER$1() {
        super(1);
    }

    public final Function1<Account, Boolean> invoke(final UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        return new Function1<Account, Boolean>() {
            public final boolean invoke(Account account) {
                Intrinsics.checkParameterIsNotNull(account, "account");
                String token = account.getToken();
                AccountModel currentAccountOrLocked = userModel.getCurrentAccountOrLocked();
                String str = null;
                if (!Intrinsics.areEqual(token, currentAccountOrLocked != null ? currentAccountOrLocked.getToken() : null)) {
                    if (account.isSafeAccount() && account.getCurrency() == Currency.ROUBLE) {
                        account = account.getSafeAccount();
                        if (account != null) {
                            str = account.getBank();
                        }
                        if (StringsKt.equals(str, "rocket", true) != null) {
                        }
                    }
                    return null;
                }
                return true;
            }
        };
    }
}
