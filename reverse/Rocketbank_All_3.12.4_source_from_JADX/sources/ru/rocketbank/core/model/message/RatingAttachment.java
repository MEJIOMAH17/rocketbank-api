package ru.rocketbank.core.model.message;

import ru.rocketbank.core.network.model.Rating;

/* compiled from: RatingAttachment.kt */
public final class RatingAttachment extends Attachment {
    private Admin admin;
    private String comment;
    private float rate;

    public final String getComment() {
        return this.comment;
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final float getRate() {
        return this.rate;
    }

    public final void setRate(float f) {
        this.rate = f;
    }

    public final Admin getAdmin() {
        return this.admin;
    }

    public final void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public final Rating getRating() {
        Admin admin = this.admin;
        return admin != null ? new Rating(this.rate, this.comment, admin.getPermalink(), getText()) : null;
    }
}
