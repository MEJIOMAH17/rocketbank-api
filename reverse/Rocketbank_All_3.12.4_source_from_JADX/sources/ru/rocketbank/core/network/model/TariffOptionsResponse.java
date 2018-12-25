package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.OptionModel;
import ru.rocketbank.core.model.ResponseModel;

public final class TariffOptionsResponse {
    @SerializedName("response")
    private ResponseModel response;
    @SerializedName("tariff_option")
    private OptionModel tariffOption;

    public final ResponseModel getResponse() {
        return this.response;
    }

    public final OptionModel getTariffOption() {
        return this.tariffOption;
    }
}
