package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$2 extends Lambda implements Function2<Long, PendingMessagesEvent, Long> {
    public static final ChatAdapter$queryLastRead$2 INSTANCE = new ChatAdapter$queryLastRead$2();

    ChatAdapter$queryLastRead$2() {
        super(2);
    }

    public final long invoke(Long l, PendingMessagesEvent pendingMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(pendingMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        return ((long) pendingMessagesEvent.getUpdate().size()) + (l != null ? l.longValue() : 0);
    }
}
