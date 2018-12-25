package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$1 extends Lambda implements Function2<Boolean, HeadMessagesEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$1(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, HeadMessagesEvent headMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(headMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Head update");
        bool = this.this$0.messages.insertReal(headMessagesEvent.getUpdate());
        if (((Number) bool.getSecond()).intValue() > null) {
            headMessagesEvent = ChatAdapter.Companion.getTAG();
            StringBuilder stringBuilder = new StringBuilder("inserted at ");
            stringBuilder.append(((Number) bool.getFirst()).intValue());
            stringBuilder.append(" , count = ");
            stringBuilder.append(((Number) bool.getSecond()).intValue());
            Log.v(headMessagesEvent, stringBuilder.toString());
            this.this$0.notifyItemRangeInserted(((Number) bool.getFirst()).intValue(), ((Number) bool.getSecond()).intValue());
        }
        return true;
    }
}
