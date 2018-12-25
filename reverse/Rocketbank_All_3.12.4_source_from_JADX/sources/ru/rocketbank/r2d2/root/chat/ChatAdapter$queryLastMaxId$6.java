package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastMaxId$6 extends Lambda implements Function2<Long, PublishedMessageEvent, Long> {
    final /* synthetic */ long $maxId;

    ChatAdapter$queryLastMaxId$6(long j) {
        this.$maxId = j;
        super(2);
    }

    public final long invoke(Long l, PublishedMessageEvent publishedMessageEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageEvent, NotificationCompat.CATEGORY_EVENT);
        return Math.max(Math.max(this.$maxId, publishedMessageEvent.getMessage().getId()), l != null ? l.longValue() : 0);
    }
}
