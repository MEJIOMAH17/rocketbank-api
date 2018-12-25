package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;

public final class ResponseModel {
    @SerializedName("description")
    private String description;
    @SerializedName("show_it")
    private boolean showIt;
    @SerializedName("status")
    private int status;

    public final boolean isShowIt() {
        return this.showIt;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getDescription() {
        return this.description;
    }
}
