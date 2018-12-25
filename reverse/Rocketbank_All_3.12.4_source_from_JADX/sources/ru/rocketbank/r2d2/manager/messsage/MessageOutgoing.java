package ru.rocketbank.r2d2.manager.messsage;

import android.net.Uri;

/* compiled from: MessageOutgoing.kt */
public final class MessageOutgoing {
    private boolean love;
    private long operation;
    private String sourceImage;
    private Uri sourceImageUri;
    private String text;

    public final String getSourceImage() {
        return this.sourceImage;
    }

    public final void setSourceImage(String str) {
        this.sourceImage = str;
    }

    public final Uri getSourceImageUri() {
        return this.sourceImageUri;
    }

    public final void setSourceImageUri(Uri uri) {
        this.sourceImageUri = uri;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final boolean getLove() {
        return this.love;
    }

    public final void setLove(boolean z) {
        this.love = z;
    }

    public final long getOperation() {
        return this.operation;
    }

    public final void setOperation(long j) {
        this.operation = j;
    }
}
