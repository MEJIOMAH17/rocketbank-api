package ru.rocketbank.core.model.response;

import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.dto.ResponseData;

public class DepositResponse {
    private DepositModel depositModel;
    private ResponseData response;

    public ResponseData getResponse() {
        return this.response;
    }

    public void setResponse(ResponseData responseData) {
        this.response = responseData;
    }

    public DepositModel getDeposit() {
        return this.depositModel;
    }

    public void setDeposit(DepositModel depositModel) {
        this.depositModel = depositModel;
    }
}
