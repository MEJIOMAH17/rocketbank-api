package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageErrorEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$5 extends Lambda implements Function2<Long, PublishedMessageErrorEvent, Long> {
    public static final ChatAdapter$queryLastRead$5 INSTANCE = new ChatAdapter$queryLastRead$5();

    ChatAdapter$queryLastRead$5() {
        super(2);
    }

    public final long invoke(Long l, PublishedMessageErrorEvent publishedMessageErrorEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageErrorEvent, NotificationCompat.CATEGORY_EVENT);
        return Math.max(((long) publishedMessageErrorEvent.getMessage().getReadAt()) * 1000, l != null ? l.longValue() : 0);
    }
}
