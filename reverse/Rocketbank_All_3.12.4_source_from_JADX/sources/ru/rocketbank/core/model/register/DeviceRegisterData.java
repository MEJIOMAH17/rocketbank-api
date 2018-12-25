package ru.rocketbank.core.model.register;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.ResponseData;

public class DeviceRegisterData {
    private ResponseData response;
    @SerializedName("sms_verification")
    private DeviceRegisterSmsVerification smsVerification;

    public ResponseData getResponse() {
        return this.response;
    }

    public void setResponse(ResponseData responseData) {
        this.response = responseData;
    }

    public DeviceRegisterSmsVerification getSmsVerification() {
        return this.smsVerification;
    }

    public void setSmsVerification(DeviceRegisterSmsVerification deviceRegisterSmsVerification) {
        this.smsVerification = deviceRegisterSmsVerification;
    }
}
