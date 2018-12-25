package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$6 extends Lambda implements Function2<Integer, PublishedMessageEvent, Integer> {
    public static final ChatAdapter$updateSize$6 INSTANCE = new ChatAdapter$updateSize$6();

    ChatAdapter$updateSize$6() {
        super(2);
    }

    public final int invoke(Integer num, PublishedMessageEvent publishedMessageEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageEvent, NotificationCompat.CATEGORY_EVENT);
        return num != null ? num.intValue() : null;
    }
}
