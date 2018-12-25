package ru.rocketbank.core.model;

public class SmsCodeData {
    private String code;

    public SmsCodeData(String str) {
        this.code = str;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }
}
