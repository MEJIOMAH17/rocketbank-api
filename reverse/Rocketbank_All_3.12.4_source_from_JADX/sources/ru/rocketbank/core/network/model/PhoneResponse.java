package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.ResponseModel;
import ru.rocketbank.core.model.ValidationModel;

/* compiled from: PhoneResponse.kt */
public final class PhoneResponse {
    private ResponseModel response;
    @SerializedName("sms_verification")
    private ValidationModel smsVerification;

    public final ResponseModel getResponse() {
        return this.response;
    }

    public final void setResponse(ResponseModel responseModel) {
        this.response = responseModel;
    }

    public final ValidationModel getSmsVerification() {
        return this.smsVerification;
    }

    public final void setSmsVerification(ValidationModel validationModel) {
        this.smsVerification = validationModel;
    }
}
