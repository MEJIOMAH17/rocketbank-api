package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageErrorEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$5 extends Lambda implements Function2<Integer, PublishedMessageErrorEvent, Integer> {
    public static final ChatAdapter$updateSize$5 INSTANCE = new ChatAdapter$updateSize$5();

    ChatAdapter$updateSize$5() {
        super(2);
    }

    public final int invoke(Integer num, PublishedMessageErrorEvent publishedMessageErrorEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageErrorEvent, NotificationCompat.CATEGORY_EVENT);
        return num != null ? num.intValue() : null;
    }
}
