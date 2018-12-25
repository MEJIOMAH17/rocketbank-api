package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ProgressEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$8 extends Lambda implements Function2<Boolean, ProgressEvent, Boolean> {
    public static final ChatAdapter$applyUpdate$8 INSTANCE = new ChatAdapter$applyUpdate$8();

    ChatAdapter$applyUpdate$8() {
        super(2);
    }

    public final boolean invoke(Boolean bool, ProgressEvent progressEvent) {
        Intrinsics.checkParameterIsNotNull(progressEvent, NotificationCompat.CATEGORY_EVENT);
        return false;
    }
}
