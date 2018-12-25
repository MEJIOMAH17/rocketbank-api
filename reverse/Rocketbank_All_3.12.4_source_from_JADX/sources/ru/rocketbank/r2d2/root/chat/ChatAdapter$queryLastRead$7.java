package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ReadEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$7 extends Lambda implements Function2<Long, ReadEvent, Long> {
    public static final ChatAdapter$queryLastRead$7 INSTANCE = new ChatAdapter$queryLastRead$7();

    ChatAdapter$queryLastRead$7() {
        super(2);
    }

    public final long invoke(Long l, ReadEvent readEvent) {
        Intrinsics.checkParameterIsNotNull(readEvent, NotificationCompat.CATEGORY_EVENT);
        return l != null ? l.longValue() : null;
    }
}
