package ru.rocketbank.core.model.transfers.bank;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;

public class RemittanceResponseData extends GenericRequestResponseData {
    private RemittanceIncoming remittance;

    public RemittanceIncoming getRemittance() {
        return this.remittance;
    }
}
