package ru.rocketbank.core.model.dto;

/* compiled from: GenericRequestResponseData.kt */
public class GenericRequestResponseData {
    private String errors;
    private final ResponseData response;

    public final String getErrors() {
        return this.errors;
    }

    public final void setErrors(String str) {
        this.errors = str;
    }

    public final ResponseData getResponse() {
        return this.response;
    }
}
