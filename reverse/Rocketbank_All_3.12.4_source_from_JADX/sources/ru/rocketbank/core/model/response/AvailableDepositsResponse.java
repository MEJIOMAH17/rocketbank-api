package ru.rocketbank.core.model.response;

import java.util.List;
import ru.rocketbank.core.model.RocketDepositModel;

public class AvailableDepositsResponse {
    private List<RocketDepositModel> deposits;

    public List<RocketDepositModel> getDeposits() {
        return this.deposits;
    }

    public void setDeposits(List<RocketDepositModel> list) {
        this.deposits = list;
    }
}
