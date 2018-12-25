package ru.rocketbank.core.model.dto;

import ru.rocketbank.core.model.UserModel;

public class ActivationResponse extends GenericRequestResponseData {
    private String token;
    private UserModel user;

    public String getToken() {
        return this.token;
    }

    public UserModel getUser() {
        return this.user;
    }
}
