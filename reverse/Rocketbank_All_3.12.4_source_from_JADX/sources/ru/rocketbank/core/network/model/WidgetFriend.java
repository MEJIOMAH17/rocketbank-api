package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: WidgetFriend.kt */
public final class WidgetFriend {
    @SerializedName("first_name")
    private String firstName;
    private int id;
    @SerializedName("last_name")
    private String lastName;
    @SerializedName("userpic_url")
    private String userpicUrl;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final void setFirstName(String str) {
        this.firstName = str;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final void setLastName(String str) {
        this.lastName = str;
    }

    public final String getUserpicUrl() {
        return this.userpicUrl;
    }

    public final void setUserpicUrl(String str) {
        this.userpicUrl = str;
    }
}
