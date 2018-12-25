package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.UserModel;

/* compiled from: UserResponse.kt */
public class UserResponse {
    @SerializedName("user")
    private final UserModel user;

    public UserResponse(UserModel userModel) {
        this.user = userModel;
    }

    public final UserModel getUser() {
        return this.user;
    }
}
