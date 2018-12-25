package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$6 extends Lambda implements Function2<Long, PublishedMessageEvent, Long> {
    public static final ChatAdapter$queryLastRead$6 INSTANCE = new ChatAdapter$queryLastRead$6();

    ChatAdapter$queryLastRead$6() {
        super(2);
    }

    public final long invoke(Long l, PublishedMessageEvent publishedMessageEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageEvent, NotificationCompat.CATEGORY_EVENT);
        return Math.max(((long) publishedMessageEvent.getMessage().getReadAt()) * 1000, l != null ? l.longValue() : 0);
    }
}
