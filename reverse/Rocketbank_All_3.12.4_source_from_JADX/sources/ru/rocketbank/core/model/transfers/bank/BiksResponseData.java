package ru.rocketbank.core.model.transfers.bank;

import java.io.Serializable;

public class BiksResponseData implements Serializable {
    private BankData bik;

    public BankData getBik() {
        return this.bik;
    }

    public void setBik(BankData bankData) {
        this.bik = bankData;
    }
}
