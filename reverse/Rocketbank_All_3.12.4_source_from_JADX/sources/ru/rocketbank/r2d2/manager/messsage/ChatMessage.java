package ru.rocketbank.r2d2.manager.messsage;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.Attachment;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: ChatMessage.kt */
public final class ChatMessage {
    public static final Companion Companion = new Companion();
    public static final int SUBTYPE_DOC = 2;
    public static final int SUBTYPE_IMAGE = 1;
    public static final int SUBTYPE_OPERATION = 3;
    public static final int SUBTYPE_RATING = 4;
    public static final int SUBTYPE_STICKER = 5;
    public static final int SUBTYPE_TEXT = 0;
    public static final int TYPE_INCOMING_MESSAGE = 0;
    public static final int TYPE_OUTGOING_MESSAGE = 1;
    public static final int TYPE_TYPING = 2;
    private Attachment attachmentDirect;
    private int chunk;
    private boolean failed;
    private long imageId;
    private String imagePath;
    private Uri imageUri;
    private long internalId;
    private boolean isTyping;
    private boolean loading;
    private MessageIn message;
    private int number;
    private boolean sending;
    private boolean sent;
    private int subType;
    private int time;

    /* compiled from: ChatMessage.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int getSubType() {
        return this.subType;
    }

    public final void setSubType(int i) {
        this.subType = i;
    }

    public final long getInternalId() {
        return this.internalId;
    }

    public final void setInternalId(long j) {
        this.internalId = j;
    }

    public final int getTime() {
        return this.time;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final int getNumber() {
        return this.number;
    }

    public final void setNumber(int i) {
        this.number = i;
    }

    public final int getChunk() {
        return this.chunk;
    }

    public final void setChunk(int i) {
        this.chunk = i;
    }

    public final boolean getSending() {
        return this.sending;
    }

    public final void setSending(boolean z) {
        this.sending = z;
    }

    public final boolean getSent() {
        return this.sent;
    }

    public final void setSent(boolean z) {
        this.sent = z;
    }

    public final long getImageId() {
        return this.imageId;
    }

    public final void setImageId(long j) {
        this.imageId = j;
    }

    public final Uri getImageUri() {
        return this.imageUri;
    }

    public final void setImageUri(Uri uri) {
        this.imageUri = uri;
    }

    public final String getImagePath() {
        return this.imagePath;
    }

    public final void setImagePath(String str) {
        this.imagePath = str;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    public final void setLoading(boolean z) {
        this.loading = z;
    }

    public final MessageIn getMessage() {
        return this.message;
    }

    public final void setMessage(MessageIn messageIn) {
        this.message = messageIn;
    }

    public final Attachment getAttachmentDirect() {
        return this.attachmentDirect;
    }

    public final void setAttachmentDirect(Attachment attachment) {
        this.attachmentDirect = attachment;
    }

    public final boolean getFailed() {
        return this.failed;
    }

    public final void setFailed(boolean z) {
        this.failed = z;
    }

    public final boolean isTyping() {
        return this.isTyping;
    }

    public final void setTyping(boolean z) {
        this.isTyping = z;
    }

    public final int getType() {
        if (this.isTyping) {
            return 2;
        }
        if (this.message == null) {
            return 1;
        }
        MessageIn messageIn = this.message;
        if (messageIn != null ? messageIn.isAdmin() : false) {
            return 0;
        }
        return 1;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof ChatMessage) {
            ChatMessage chatMessage = (ChatMessage) obj;
            if (chatMessage.internalId > 0 && chatMessage.internalId == this.internalId) {
                return true;
            }
            if (!(chatMessage.message == null || this.message == null)) {
                return chatMessage.message == this.message ? this.chunk == chatMessage.chunk : Intrinsics.areEqual(chatMessage.message, this.message) && this.chunk == chatMessage.chunk;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.valueOf(this.internalId).hashCode() * 31;
        MessageIn messageIn = this.message;
        return hashCode + (messageIn != null ? messageIn.hashCode() : 0);
    }
}
