package ru.rocketbank.core.model.message;

import android.net.Uri;

/* compiled from: ImageAttachment.kt */
public final class ImageAttachment extends Attachment {
    private String ext;
    private int height;
    private Uri imagePath;
    private boolean uploading;
    private int width;

    public final boolean getUploading() {
        return this.uploading;
    }

    public final void setUploading(boolean z) {
        this.uploading = z;
    }

    public final String getExt() {
        return this.ext;
    }

    public final void setExt(String str) {
        this.ext = str;
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

    public final Uri getImagePath() {
        return this.imagePath;
    }

    public final void setImagePath(Uri uri) {
        this.imagePath = uri;
    }

    public final String getImage() {
        return getAsImage(false);
    }

    public final String getImageThumb() {
        return getAsImage(true);
    }

    private final String getAsImage(boolean z) {
        return getLink(z, "images");
    }
}
