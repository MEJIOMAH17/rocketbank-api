package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.TypingEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$8 extends Lambda implements Function2<Integer, TypingEvent, Integer> {
    public static final ChatAdapter$updateSize$8 INSTANCE = new ChatAdapter$updateSize$8();

    ChatAdapter$updateSize$8() {
        super(2);
    }

    public final int invoke(Integer num, TypingEvent typingEvent) {
        Intrinsics.checkParameterIsNotNull(typingEvent, NotificationCompat.CATEGORY_EVENT);
        return num != null ? num.intValue() : null;
    }
}
