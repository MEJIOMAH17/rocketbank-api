package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ProgressEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$4 extends Lambda implements Function2<Long, ProgressEvent, Long> {
    public static final ChatAdapter$queryLastRead$4 INSTANCE = new ChatAdapter$queryLastRead$4();

    ChatAdapter$queryLastRead$4() {
        super(2);
    }

    public final long invoke(Long l, ProgressEvent progressEvent) {
        Intrinsics.checkParameterIsNotNull(progressEvent, NotificationCompat.CATEGORY_EVENT);
        return l != null ? l.longValue() : null;
    }
}
