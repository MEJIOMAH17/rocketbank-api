package ru.rocketbank.core.model.message;

/* compiled from: StickerAttachment.kt */
public final class StickerAttachment extends Attachment {
    private Sticker sticker;

    public final Sticker getSticker() {
        return this.sticker;
    }

    public final void setSticker(Sticker sticker) {
        this.sticker = sticker;
    }
}
