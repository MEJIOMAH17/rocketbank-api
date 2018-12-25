package ru.rocketbank.r2d2.root.chat.sync.notification;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypingNotification.kt */
public final class NotificationUserInfo {
    private final String avatar;
    private final String name;
    private final String permalink;

    public NotificationUserInfo(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "avatar");
        Intrinsics.checkParameterIsNotNull(str3, "permalink");
        this.name = str;
        this.avatar = str2;
        this.permalink = str3;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getPermalink() {
        return this.permalink;
    }
}
