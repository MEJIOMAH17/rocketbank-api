package ru.rocketbank.core.model.card;

import ru.rocketbank.core.model.dto.ResponseData;

public class Card2CardStatusResponseData {
    private double balance;
    private String errors;
    private int id;
    private ResponseData response;
    private String status;

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getErrors() {
        return this.errors;
    }

    public void setErrors(String str) {
        this.errors = str;
    }

    public double getBalance() {
        return this.balance;
    }

    public void setBalance(double d) {
        this.balance = d;
    }

    public ResponseData getResponse() {
        return this.response;
    }

    public void setResponse(ResponseData responseData) {
        this.response = responseData;
    }
}
