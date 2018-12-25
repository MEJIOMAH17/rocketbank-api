package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$5 extends Lambda implements Function2<Boolean, PublishedMessageEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$5(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, PublishedMessageEvent publishedMessageEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Publish event");
        this.this$0.notifyDataSetChanged();
        bool = this.this$0.messages.movePendingToStable(publishedMessageEvent.getMessage());
        if (((Number) bool.getFirst()).intValue() == ((Number) bool.getSecond()).intValue()) {
            bool = this.this$0.messages.indexOf(publishedMessageEvent.getMessage());
            if (bool >= null) {
                this.this$0.notifyItemChanged(bool);
            }
        } else {
            this.this$0.notifyItemMoved(((Number) bool.getFirst()).intValue(), ((Number) bool.getSecond()).intValue());
        }
        return true;
    }
}
