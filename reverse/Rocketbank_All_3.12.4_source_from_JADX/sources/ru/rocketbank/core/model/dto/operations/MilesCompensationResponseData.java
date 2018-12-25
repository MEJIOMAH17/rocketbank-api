package ru.rocketbank.core.model.dto.operations;

import ru.rocketbank.core.model.dto.ResponseData;

public class MilesCompensationResponseData {
    private Miles miles;
    private ResponseData response;

    public ResponseData getResponse() {
        return this.response;
    }

    public Miles getMiles() {
        return this.miles;
    }
}
