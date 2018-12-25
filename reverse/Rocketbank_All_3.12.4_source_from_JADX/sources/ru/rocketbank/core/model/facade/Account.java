package ru.rocketbank.core.model.facade;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountDetailsModel;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;

/* compiled from: Account.kt */
public final class Account {
    private AccountModel accountModel;
    private SafeAccount safeAccount;

    public final AccountModel getAccountModel() {
        return this.accountModel;
    }

    public final void setAccountModel(AccountModel accountModel) {
        this.accountModel = accountModel;
    }

    public final SafeAccount getSafeAccount() {
        return this.safeAccount;
    }

    public final void setSafeAccount(SafeAccount safeAccount) {
        this.safeAccount = safeAccount;
    }

    public final boolean isSafeAccount() {
        return this.safeAccount != null;
    }

    public Account(AccountModel accountModel) {
        Intrinsics.checkParameterIsNotNull(accountModel, "accountModel");
        this.accountModel = accountModel;
    }

    public Account(SafeAccount safeAccount) {
        Intrinsics.checkParameterIsNotNull(safeAccount, "safeAccount");
        this.safeAccount = safeAccount;
    }

    public final String getToken() {
        String token;
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            token = accountModel.getToken();
            if (token == null) {
                Intrinsics.throwNpe();
            }
            return token;
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        token = safeAccount.getToken();
        Intrinsics.checkExpressionValueIsNotNull(token, "safeAccount!!.token");
        return token;
    }

    public final String getTitle() {
        if (this.accountModel != null) {
            String title;
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            title = accountModel.getTitle();
            if (title == null) {
                Intrinsics.throwNpe();
            }
            return title;
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        title = safeAccount.getTitle();
        Intrinsics.checkExpressionValueIsNotNull(title, "safeAccount!!.title");
        return title;
    }

    public final double getBalance() {
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            return accountModel.getBalance();
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        return safeAccount.getBalance();
    }

    public final BigDecimal getBigDecimalBalance() {
        BigDecimal valueOf = BigDecimal.valueOf(getBalance());
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "BigDecimal.valueOf(balance)");
        return valueOf;
    }

    public final Status getStatus() {
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            return accountModel.getStatusValue();
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        Status status = safeAccount.getStatus();
        Intrinsics.checkExpressionValueIsNotNull(status, "safeAccount!!.status");
        return status;
    }

    public final AccountDetailsModel getAccountDetails() {
        AccountDetailsModel accountDetails;
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            accountDetails = accountModel.getAccountDetails();
            if (accountDetails == null) {
                Intrinsics.throwNpe();
            }
            return accountDetails;
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        accountDetails = safeAccount.getAccountDetails();
        Intrinsics.checkExpressionValueIsNotNull(accountDetails, "safeAccount!!.accountDetails");
        return accountDetails;
    }

    public final Currency getCurrency() {
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            return accountModel.getCurrency();
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        Currency currency = safeAccount.getCurrency();
        Intrinsics.checkExpressionValueIsNotNull(currency, "safeAccount!!.currency");
        return currency;
    }

    public final String getCurrencyCode() {
        String currencyCode;
        if (this.accountModel != null) {
            AccountModel accountModel = this.accountModel;
            if (accountModel == null) {
                Intrinsics.throwNpe();
            }
            currencyCode = accountModel.getCurrencyCode();
            if (currencyCode == null) {
                Intrinsics.throwNpe();
            }
            return currencyCode;
        }
        SafeAccount safeAccount = this.safeAccount;
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        currencyCode = safeAccount.getCurrencyCode();
        Intrinsics.checkExpressionValueIsNotNull(currencyCode, "safeAccount!!.currencyCode");
        return currencyCode;
    }
}
