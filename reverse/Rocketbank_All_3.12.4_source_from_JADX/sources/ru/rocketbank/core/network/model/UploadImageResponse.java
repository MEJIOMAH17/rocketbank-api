package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ImageModel;

/* compiled from: UploadImageResponse.kt */
public final class UploadImageResponse {
    @SerializedName("image")
    private final ImageModel image;

    public static /* bridge */ /* synthetic */ UploadImageResponse copy$default(UploadImageResponse uploadImageResponse, ImageModel imageModel, int i, Object obj) {
        if ((i & 1) != 0) {
            imageModel = uploadImageResponse.image;
        }
        return uploadImageResponse.copy(imageModel);
    }

    public final ImageModel component1() {
        return this.image;
    }

    public final UploadImageResponse copy(ImageModel imageModel) {
        return new UploadImageResponse(imageModel);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UploadImageResponse) {
                if (Intrinsics.areEqual(this.image, ((UploadImageResponse) obj).image)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ImageModel imageModel = this.image;
        return imageModel != null ? imageModel.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("UploadImageResponse(image=");
        stringBuilder.append(this.image);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public UploadImageResponse(ImageModel imageModel) {
        this.image = imageModel;
    }

    public final ImageModel getImage() {
        return this.image;
    }
}
