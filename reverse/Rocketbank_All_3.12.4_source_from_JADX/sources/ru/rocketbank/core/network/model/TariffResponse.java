package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.dto.ResponseData;

/* compiled from: TariffResponse.kt */
public final class TariffResponse {
    @SerializedName("next_tariff")
    private final TariffModel nextTariff;
    private final ResponseData response;

    public static /* bridge */ /* synthetic */ TariffResponse copy$default(TariffResponse tariffResponse, ResponseData responseData, TariffModel tariffModel, int i, Object obj) {
        if ((i & 1) != 0) {
            responseData = tariffResponse.response;
        }
        if ((i & 2) != 0) {
            tariffModel = tariffResponse.nextTariff;
        }
        return tariffResponse.copy(responseData, tariffModel);
    }

    public final ResponseData component1() {
        return this.response;
    }

    public final TariffModel component2() {
        return this.nextTariff;
    }

    public final TariffResponse copy(ResponseData responseData, TariffModel tariffModel) {
        return new TariffResponse(responseData, tariffModel);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TariffResponse) {
                TariffResponse tariffResponse = (TariffResponse) obj;
                if (Intrinsics.areEqual(this.response, tariffResponse.response) && Intrinsics.areEqual(this.nextTariff, tariffResponse.nextTariff)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ResponseData responseData = this.response;
        int i = 0;
        int hashCode = (responseData != null ? responseData.hashCode() : 0) * 31;
        TariffModel tariffModel = this.nextTariff;
        if (tariffModel != null) {
            i = tariffModel.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TariffResponse(response=");
        stringBuilder.append(this.response);
        stringBuilder.append(", nextTariff=");
        stringBuilder.append(this.nextTariff);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TariffResponse(ResponseData responseData, TariffModel tariffModel) {
        this.response = responseData;
        this.nextTariff = tariffModel;
    }

    public final ResponseData getResponse() {
        return this.response;
    }

    public final TariffModel getNextTariff() {
        return this.nextTariff;
    }
}
