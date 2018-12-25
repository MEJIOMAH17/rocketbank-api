package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public final class ImageModel implements Serializable {
    private int height;
    @SerializedName("id")
    private int id;
    private int width;

    public final int getId() {
        return this.id;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setWidth(int i) {
        this.width = i;
    }
}
