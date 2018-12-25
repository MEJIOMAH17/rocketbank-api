package ru.rocketbank.core.manager;

import android.support.v4.util.ArrayMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.facade.Account;

/* compiled from: BankAccountManager.kt */
public final class BankAccountManager {
    private final ArrayMap<String, Account> accounts = new ArrayMap();
    private Account mainAccount;

    public final Account getMainImmediate() {
        return this.mainAccount;
    }

    public final Account getAccountImmediate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        return (Account) this.accounts.get(str);
    }

    public final void updateAccounts(List<AccountModel> list, List<? extends SafeAccount> list2) {
        Intrinsics.checkParameterIsNotNull(list, "accountList");
        Intrinsics.checkParameterIsNotNull(list2, "safeAccountList");
        this.accounts.clear();
        for (AccountModel accountModel : list) {
            Account account = new Account(accountModel);
            if (accountModel.getMain()) {
                this.mainAccount = account;
            }
            this.accounts.put(accountModel.getToken(), account);
        }
        for (SafeAccount safeAccount : list2) {
            this.accounts.put(safeAccount.getToken(), new Account(safeAccount));
        }
    }
}
