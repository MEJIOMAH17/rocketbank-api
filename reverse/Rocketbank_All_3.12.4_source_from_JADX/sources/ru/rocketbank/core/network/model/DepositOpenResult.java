package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.DepositModel;

/* compiled from: DepositOpenResult.kt */
public final class DepositOpenResult {
    @SerializedName(alternate = {"account_card"}, value = "deposit")
    private DepositModel deposit;
    private DepositOpenData response;

    /* compiled from: DepositOpenResult.kt */
    public static final class DepositOpenData {
        private String description;
        private int status;

        public final int getStatus() {
            return this.status;
        }

        public final void setStatus(int i) {
            this.status = i;
        }

        public final String getDescription() {
            return this.description;
        }

        public final void setDescription(String str) {
            this.description = str;
        }
    }

    public final DepositOpenData getResponse() {
        return this.response;
    }

    public final void setResponse(DepositOpenData depositOpenData) {
        this.response = depositOpenData;
    }

    public final DepositModel getDeposit() {
        return this.deposit;
    }

    public final void setDeposit(DepositModel depositModel) {
        this.deposit = depositModel;
    }
}
