package ru.rocketbank.core.model;

import ru.rocketbank.core.model.dto.ResponseData;

public class LoginResponseData {
    private ResponseData response;
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
}
