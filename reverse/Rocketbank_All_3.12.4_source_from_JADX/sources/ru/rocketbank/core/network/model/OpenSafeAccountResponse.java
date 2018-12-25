package ru.rocketbank.core.network.model;

import ru.rocketbank.core.model.SafeAccount;

/* compiled from: OpenSafeAccountResponse.kt */
public final class OpenSafeAccountResponse {
    private SafeAccount account;

    public final SafeAccount getAccount() {
        return this.account;
    }

    public final void setAccount(SafeAccount safeAccount) {
        this.account = safeAccount;
    }
}
