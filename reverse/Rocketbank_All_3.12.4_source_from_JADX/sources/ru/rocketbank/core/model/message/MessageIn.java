package ru.rocketbank.core.model.message;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageIn.kt */
public final class MessageIn {
    public static final Companion Companion = new Companion();
    private static final String TAG = "MessageIn";
    private String abstractId;
    @SerializedName("admin_permalink")
    private String adminPermalink;
    private List<Attachment> attachments;
    private String author;
    private String avatar;
    private String body;
    @SerializedName("created_at")
    private int createdAt;
    @SerializedName("delivered_at")
    private int deliveredAt;
    private transient int groupTime;
    private long id;
    @SerializedName("admin")
    private boolean isAdmin;
    private transient boolean isFailed;
    private transient boolean isUploading;
    @SerializedName("read_at")
    private int readAt;

    /* compiled from: MessageIn.kt */
    public static final class Companion {
        public static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }

        public final String getTAG() {
            return MessageIn.TAG;
        }

        public final MessageIn create(MessageIn messageIn, Attachment attachment) {
            Intrinsics.checkParameterIsNotNull(messageIn, "messageIn");
            MessageIn messageIn2 = new MessageIn();
            messageIn2.setAdmin(messageIn.isAdmin());
            messageIn2.setAdminPermalink(messageIn.getAdminPermalink());
            messageIn2.setAttachments(new ArrayList());
            messageIn2.setAuthor(messageIn.getAuthor());
            messageIn2.setAvatar(messageIn.getAvatar());
            messageIn2.setCreatedAt(messageIn.getCreatedAt());
            messageIn2.setDeliveredAt(messageIn.getDeliveredAt());
            messageIn2.setId(messageIn.getId());
            messageIn2.setReadAt(messageIn.getReadAt());
            if (attachment == null) {
                attachment = new StringBuilder();
                attachment.append(String.valueOf(messageIn.getId()));
                attachment.append("-text");
                messageIn2.abstractId = attachment.toString();
                messageIn2.setBody(messageIn.getBody());
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(String.valueOf(messageIn.getId()));
                stringBuilder.append("-");
                stringBuilder.append(attachment.getType());
                messageIn2.abstractId = stringBuilder.toString();
                messageIn = messageIn2.getAttachments();
                if (messageIn == null) {
                    Intrinsics.throwNpe();
                }
                messageIn.add(attachment);
            }
            return messageIn2;
        }
    }

    public static final String getTAG() {
        return TAG;
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final boolean isFailed() {
        return this.isFailed;
    }

    public final void setFailed(boolean z) {
        this.isFailed = z;
    }

    public final boolean isUploading() {
        return this.isUploading;
    }

    public final void setUploading(boolean z) {
        this.isUploading = z;
    }

    public final boolean isAdmin() {
        return this.isAdmin;
    }

    public final void setAdmin(boolean z) {
        this.isAdmin = z;
    }

    public final int getGroupTime() {
        return this.groupTime;
    }

    public final void setGroupTime(int i) {
        this.groupTime = i;
    }

    public final int getCreatedAt() {
        return this.createdAt;
    }

    public final void setCreatedAt(int i) {
        this.createdAt = i;
    }

    public final int getDeliveredAt() {
        return this.deliveredAt;
    }

    public final void setDeliveredAt(int i) {
        this.deliveredAt = i;
    }

    public final int getReadAt() {
        return this.readAt;
    }

    public final void setReadAt(int i) {
        this.readAt = i;
    }

    public final List<Attachment> getAttachments() {
        return this.attachments;
    }

    public final void setAttachments(List<Attachment> list) {
        this.attachments = list;
    }

    public final String getAdminPermalink() {
        return this.adminPermalink;
    }

    public final void setAdminPermalink(String str) {
        this.adminPermalink = str;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final void setAuthor(String str) {
        this.author = str;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final String getBody() {
        return this.body;
    }

    public final void setBody(String str) {
        this.body = str;
    }

    public final Attachment getAttachment() {
        List list = this.attachments;
        if (list == null || (list.isEmpty() ^ 1) == 0) {
            return null;
        }
        return (Attachment) list.get(0);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof MessageIn) && ((MessageIn) obj).id == this.id;
    }

    public final int hashCode() {
        return Long.valueOf(this.id).hashCode();
    }
}
