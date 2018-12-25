package ru.rocketbank.r2d2.root.chat.sync.notification;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypingNotification.kt */
public final class TypingNotification {
    private final boolean typing;
    private final NotificationUser user;

    public static /* bridge */ /* synthetic */ TypingNotification copy$default(TypingNotification typingNotification, boolean z, NotificationUser notificationUser, int i, Object obj) {
        if ((i & 1) != 0) {
            z = typingNotification.typing;
        }
        if ((i & 2) != 0) {
            notificationUser = typingNotification.user;
        }
        return typingNotification.copy(z, notificationUser);
    }

    public final boolean component1() {
        return this.typing;
    }

    public final NotificationUser component2() {
        return this.user;
    }

    public final TypingNotification copy(boolean z, NotificationUser notificationUser) {
        return new TypingNotification(z, notificationUser);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TypingNotification) {
            TypingNotification typingNotification = (TypingNotification) obj;
            return (this.typing == typingNotification.typing) && Intrinsics.areEqual(this.user, typingNotification.user);
        }
    }

    public final int hashCode() {
        int i = this.typing;
        if (i != 0) {
            i = 1;
        }
        i *= 31;
        NotificationUser notificationUser = this.user;
        return i + (notificationUser != null ? notificationUser.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TypingNotification(typing=");
        stringBuilder.append(this.typing);
        stringBuilder.append(", user=");
        stringBuilder.append(this.user);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TypingNotification(boolean z, NotificationUser notificationUser) {
        this.typing = z;
        this.user = notificationUser;
    }

    public final boolean getTyping() {
        return this.typing;
    }

    public final NotificationUser getUser() {
        return this.user;
    }
}
