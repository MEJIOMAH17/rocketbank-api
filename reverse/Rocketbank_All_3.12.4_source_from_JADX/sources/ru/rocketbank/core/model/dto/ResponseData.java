package ru.rocketbank.core.model.dto;

import com.google.gson.annotations.SerializedName;

public class ResponseData {
    private String code;
    private String description;
    @SerializedName("registration_status")
    private String registrationStatus;
    @SerializedName("show_it")
    private boolean showIt;
    private int status;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.description != null) {
            stringBuilder.append(String.format("description: '%s'", new Object[]{this.description}));
        }
        if (this.code != null) {
            stringBuilder.append(String.format(", code: '%s'", new Object[]{this.code}));
        }
        if (this.registrationStatus != null) {
            stringBuilder.append(String.format(", registrationStatus: '%s'", new Object[]{this.registrationStatus}));
        }
        return stringBuilder.toString();
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public boolean getShowIt() {
        return this.showIt;
    }

    public void setShowIt(boolean z) {
        this.showIt = z;
    }

    public String getRegistrationStatus() {
        return this.registrationStatus;
    }

    public void setRegistrationStatus(String str) {
        this.registrationStatus = str;
    }
}
