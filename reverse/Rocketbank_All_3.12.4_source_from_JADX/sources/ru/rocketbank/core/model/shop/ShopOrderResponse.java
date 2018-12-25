package ru.rocketbank.core.model.shop;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;

/* compiled from: ShopOrderResponse.kt */
public final class ShopOrderResponse extends GenericRequestResponseData {
    private String error;
    private String status;

    public ShopOrderResponse(String str, String str2) {
        this.status = str;
        this.error = str2;
    }

    public final String getError() {
        return this.error;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setError(String str) {
        this.error = str;
    }

    public final void setStatus(String str) {
        this.status = str;
    }
}
