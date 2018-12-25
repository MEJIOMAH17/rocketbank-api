package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.TypingEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$6 extends Lambda implements Function2<Boolean, TypingEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$6(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, TypingEvent typingEvent) {
        Intrinsics.checkParameterIsNotNull(typingEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Typing message");
        this.this$0.showTyping(typingEvent);
        return true;
    }
}
