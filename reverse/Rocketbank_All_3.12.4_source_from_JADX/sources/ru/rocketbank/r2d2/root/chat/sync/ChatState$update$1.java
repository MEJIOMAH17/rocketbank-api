package ru.rocketbank.r2d2.root.chat.sync;

import java.util.List;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;

/* compiled from: ChatState.kt */
final class ChatState$update$1 extends Lambda implements Function3<Integer, List<? extends MessageIn>, MessageEvent, MessageEvent> {
    final /* synthetic */ ChatState this$0;

    ChatState$update$1(ChatState chatState) {
        this.this$0 = chatState;
        super(3);
    }

    public final MessageEvent invoke(int i, List<MessageIn> list, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(list, "b");
        return this.this$0.onHeadUpdate(i, list, messageEvent);
    }
}
