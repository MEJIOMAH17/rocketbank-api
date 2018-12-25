package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.TypingEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastDelivered$8 extends Lambda implements Function2<Long, TypingEvent, Long> {
    public static final ChatAdapter$queryLastDelivered$8 INSTANCE = new ChatAdapter$queryLastDelivered$8();

    ChatAdapter$queryLastDelivered$8() {
        super(2);
    }

    public final long invoke(Long l, TypingEvent typingEvent) {
        Intrinsics.checkParameterIsNotNull(typingEvent, NotificationCompat.CATEGORY_EVENT);
        return l != null ? l.longValue() : null;
    }
}
