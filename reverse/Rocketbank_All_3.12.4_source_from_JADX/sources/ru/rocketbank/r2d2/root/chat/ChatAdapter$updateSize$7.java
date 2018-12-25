package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ReadEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$7 extends Lambda implements Function2<Integer, ReadEvent, Integer> {
    public static final ChatAdapter$updateSize$7 INSTANCE = new ChatAdapter$updateSize$7();

    ChatAdapter$updateSize$7() {
        super(2);
    }

    public final int invoke(Integer num, ReadEvent readEvent) {
        Intrinsics.checkParameterIsNotNull(readEvent, NotificationCompat.CATEGORY_EVENT);
        return num != null ? num.intValue() : null;
    }
}
