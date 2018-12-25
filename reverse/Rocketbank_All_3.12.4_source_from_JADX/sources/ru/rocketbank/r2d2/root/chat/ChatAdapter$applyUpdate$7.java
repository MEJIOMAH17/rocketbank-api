package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.ReadEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$applyUpdate$7 extends Lambda implements Function2<Boolean, ReadEvent, Boolean> {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$applyUpdate$7(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
        super(2);
    }

    public final boolean invoke(Boolean bool, ReadEvent readEvent) {
        Intrinsics.checkParameterIsNotNull(readEvent, NotificationCompat.CATEGORY_EVENT);
        this.this$0.lastReadId = readEvent.getId();
        this.this$0.lastRead = readEvent.getTime();
        this.this$0.messages.updateReadTime(readEvent.getId(), readEvent.getTime());
        this.this$0.notifyDataSetChanged();
        return true;
    }
}
