package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageErrorEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$4 extends Lambda implements Function2<Boolean, PublishedMessageErrorEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$4(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, PublishedMessageErrorEvent publishedMessageErrorEvent) {
        Intrinsics.checkParameterIsNotNull(publishedMessageErrorEvent, NotificationCompat.CATEGORY_EVENT);
        Log.v(ChatAdapter.Companion.getTAG(), "Publish error");
        bool = this.this$0.messages.indexOf(publishedMessageErrorEvent.getMessage());
        if (bool >= null) {
            this.this$0.notifyItemChanged(bool);
        }
        return true;
    }
}
