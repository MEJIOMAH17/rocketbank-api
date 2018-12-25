package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ProgressEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$updateSize$4 extends Lambda implements Function2<Integer, ProgressEvent, Integer> {
    public static final ChatAdapter$updateSize$4 INSTANCE = new ChatAdapter$updateSize$4();

    ChatAdapter$updateSize$4() {
        super(2);
    }

    public final int invoke(Integer num, ProgressEvent progressEvent) {
        Intrinsics.checkParameterIsNotNull(progressEvent, NotificationCompat.CATEGORY_EVENT);
        return num != null ? num.intValue() : null;
    }
}
