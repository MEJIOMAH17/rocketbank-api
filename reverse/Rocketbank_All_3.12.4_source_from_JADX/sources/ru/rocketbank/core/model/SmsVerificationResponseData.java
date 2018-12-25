package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.ResponseData;

public class SmsVerificationResponseData {
    @SerializedName("delivery_scheduled")
    private DeliveryScheduledData deliveryScheduled;
    private String email;
    @SerializedName("fill_form")
    private FillFormData fillForm;
    private FormData form;
    private boolean interesting;
    private ResponseData response;
    private String status;
    private String token;
    private UserModel user;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public ResponseData getResponse() {
        return this.response;
    }

    public void setResponse(ResponseData responseData) {
        this.response = responseData;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public boolean getInteresting() {
        return this.interesting;
    }

    public void setInteresting(boolean z) {
        this.interesting = z;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public FillFormData getFillForm() {
        return this.fillForm;
    }

    public void setFillForm(FillFormData fillFormData) {
        this.fillForm = fillFormData;
    }

    public FormData getForm() {
        return this.form;
    }

    public void setForm(FormData formData) {
        this.form = formData;
    }

    public DeliveryScheduledData getDeliveryScheduled() {
        return this.deliveryScheduled;
    }

    public void setDeliveryScheduled(DeliveryScheduledData deliveryScheduledData) {
        this.deliveryScheduled = deliveryScheduledData;
    }
}
