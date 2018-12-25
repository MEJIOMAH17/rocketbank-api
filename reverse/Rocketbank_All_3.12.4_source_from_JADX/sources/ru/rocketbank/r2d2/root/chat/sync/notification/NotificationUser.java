package ru.rocketbank.r2d2.root.chat.sync.notification;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypingNotification.kt */
public final class NotificationUser {
    private final int id;
    private final NotificationUserInfo info;

    public static /* bridge */ /* synthetic */ NotificationUser copy$default(NotificationUser notificationUser, int i, NotificationUserInfo notificationUserInfo, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = notificationUser.id;
        }
        if ((i2 & 2) != 0) {
            notificationUserInfo = notificationUser.info;
        }
        return notificationUser.copy(i, notificationUserInfo);
    }

    public final int component1() {
        return this.id;
    }

    public final NotificationUserInfo component2() {
        return this.info;
    }

    public final NotificationUser copy(int i, NotificationUserInfo notificationUserInfo) {
        return new NotificationUser(i, notificationUserInfo);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationUser) {
            NotificationUser notificationUser = (NotificationUser) obj;
            return (this.id == notificationUser.id) && Intrinsics.areEqual(this.info, notificationUser.info);
        }
    }

    public final int hashCode() {
        int i = this.id * 31;
        NotificationUserInfo notificationUserInfo = this.info;
        return i + (notificationUserInfo != null ? notificationUserInfo.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("NotificationUser(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", info=");
        stringBuilder.append(this.info);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public NotificationUser(int i, NotificationUserInfo notificationUserInfo) {
        this.id = i;
        this.info = notificationUserInfo;
    }

    public final int getId() {
        return this.id;
    }

    public final NotificationUserInfo getInfo() {
        return this.info;
    }
}
