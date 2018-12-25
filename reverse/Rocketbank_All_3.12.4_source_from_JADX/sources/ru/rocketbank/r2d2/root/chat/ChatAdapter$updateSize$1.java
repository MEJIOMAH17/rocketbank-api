package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$1 extends Lambda implements Function2<Integer, HeadMessagesEvent, Integer> {
    public static final ChatAdapter$updateSize$1 INSTANCE = new ChatAdapter$updateSize$1();

    ChatAdapter$updateSize$1() {
        super(2);
    }

    public final int invoke(Integer num, HeadMessagesEvent headMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(headMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        return headMessagesEvent.getUpdate().size() + (num != null ? num.intValue() : null);
    }
}
