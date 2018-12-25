package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastDelivered$6 extends Lambda implements Function2<Long, PublishedMessageEvent, Long> {
    public static final ChatAdapter$queryLastDelivered$6 INSTANCE = new ChatAdapter$queryLastDelivered$6();

    ChatAdapter$queryLastDelivered$6() {
        super(2);
    }

    public final long invoke(Long l, PublishedMessageEvent publishedMessageEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageEvent, NotificationCompat.CATEGORY_EVENT);
        return Math.max(((long) publishedMessageEvent.getMessage().getDeliveredAt()) * 1000, l != null ? l.longValue() : 0);
    }
}
