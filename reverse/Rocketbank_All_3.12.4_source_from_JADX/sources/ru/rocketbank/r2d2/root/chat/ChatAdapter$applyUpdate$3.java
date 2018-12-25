package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.TailMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$3 extends Lambda implements Function2<Boolean, TailMessagesEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$3(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, TailMessagesEvent tailMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(tailMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Tail update");
        bool = this.this$0.messages.addTail(tailMessagesEvent.getUpdate());
        this.this$0.notifyItemRangeInserted(((Number) bool.getFirst()).intValue(), ((Number) bool.getSecond()).intValue());
        return true;
    }
}
