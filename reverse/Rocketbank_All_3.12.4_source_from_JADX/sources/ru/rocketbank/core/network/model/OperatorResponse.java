package ru.rocketbank.core.network.model;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;

/* compiled from: OperatorResponse.kt */
public final class OperatorResponse extends GenericRequestResponseData {
    private long provider_id;

    public final long getProvider_id() {
        return this.provider_id;
    }

    public final void setProvider_id(long j) {
        this.provider_id = j;
    }
}
