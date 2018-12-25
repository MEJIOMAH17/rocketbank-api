package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$2 extends Lambda implements Function2<Boolean, PendingMessagesEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$2(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, PendingMessagesEvent pendingMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(pendingMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Pending update");
        bool = this.this$0.messages.addPending(pendingMessagesEvent.getUpdate());
        pendingMessagesEvent = ChatAdapter.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("inserted at 0, count = ");
        stringBuilder.append(((Number) bool.getSecond()).intValue());
        Log.v(pendingMessagesEvent, stringBuilder.toString());
        this.this$0.notifyItemRangeInserted(((Number) bool.getFirst()).intValue(), ((Number) bool.getSecond()).intValue());
        return true;
    }
}
