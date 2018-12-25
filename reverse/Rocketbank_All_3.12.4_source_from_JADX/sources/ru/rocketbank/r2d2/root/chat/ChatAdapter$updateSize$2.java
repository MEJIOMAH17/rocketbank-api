package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$2 extends Lambda implements Function2<Integer, PendingMessagesEvent, Integer> {
    public static final ChatAdapter$updateSize$2 INSTANCE = new ChatAdapter$updateSize$2();

    ChatAdapter$updateSize$2() {
        super(2);
    }

    public final int invoke(Integer num, PendingMessagesEvent pendingMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(pendingMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        return pendingMessagesEvent.getUpdate().size() + (num != null ? num.intValue() : null);
    }
}
