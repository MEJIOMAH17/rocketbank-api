package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.TailMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$3 extends Lambda implements Function2<Integer, TailMessagesEvent, Integer> {
    public static final ChatAdapter$updateSize$3 INSTANCE = new ChatAdapter$updateSize$3();

    ChatAdapter$updateSize$3() {
        super(2);
    }

    public final int invoke(Integer num, TailMessagesEvent tailMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(tailMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        return tailMessagesEvent.getUpdate().size() + (num != null ? num.intValue() : null);
    }
}
