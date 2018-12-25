package ru.rocketbank.r2d2.root.chat.sync.notification;

import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypingNotification.kt */
public final class NotificationRead {
    private final MessageRead message;

    public static /* bridge */ /* synthetic */ NotificationRead copy$default(NotificationRead notificationRead, MessageRead messageRead, int i, Object obj) {
        if ((i & 1) != 0) {
            messageRead = notificationRead.message;
        }
        return notificationRead.copy(messageRead);
    }

    public final MessageRead component1() {
        return this.message;
    }

    public final NotificationRead copy(MessageRead messageRead) {
        Intrinsics.checkParameterIsNotNull(messageRead, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        return new NotificationRead(messageRead);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof NotificationRead) {
                if (Intrinsics.areEqual(this.message, ((NotificationRead) obj).message)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        MessageRead messageRead = this.message;
        return messageRead != null ? messageRead.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("NotificationRead(message=");
        stringBuilder.append(this.message);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public NotificationRead(MessageRead messageRead) {
        Intrinsics.checkParameterIsNotNull(messageRead, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        this.message = messageRead;
    }

    public final MessageRead getMessage() {
        return this.message;
    }
}
