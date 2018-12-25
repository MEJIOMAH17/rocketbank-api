package ru.rocketbank.core.model;

import java.io.Serializable;

/* compiled from: AccountsCurrency.kt */
public final class AccountsCurrency implements Serializable {
    private final ResponseModel response;
    private final String status;

    public final ResponseModel getResponse() {
        return this.response;
    }

    public final String getStatus() {
        return this.status;
    }
}
