package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: ProfileChange.kt */
public final class ProfileChange {
    @SerializedName("user[short_term_login]")
    private boolean shortTermLogin;

    public final boolean getShortTermLogin() {
        return this.shortTermLogin;
    }

    public final void setShortTermLogin(boolean z) {
        this.shortTermLogin = z;
    }
}
