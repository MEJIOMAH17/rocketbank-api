package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ResponseModel;

/* compiled from: CardBlockResponse.kt */
public final class CardBlockResponse {
    @SerializedName("response")
    private final ResponseModel response;

    public static /* bridge */ /* synthetic */ CardBlockResponse copy$default(CardBlockResponse cardBlockResponse, ResponseModel responseModel, int i, Object obj) {
        if ((i & 1) != 0) {
            responseModel = cardBlockResponse.response;
        }
        return cardBlockResponse.copy(responseModel);
    }

    public final ResponseModel component1() {
        return this.response;
    }

    public final CardBlockResponse copy(ResponseModel responseModel) {
        return new CardBlockResponse(responseModel);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CardBlockResponse) {
                if (Intrinsics.areEqual(this.response, ((CardBlockResponse) obj).response)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ResponseModel responseModel = this.response;
        return responseModel != null ? responseModel.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CardBlockResponse(response=");
        stringBuilder.append(this.response);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CardBlockResponse(ResponseModel responseModel) {
        this.response = responseModel;
    }

    public final ResponseModel getResponse() {
        return this.response;
    }
}
