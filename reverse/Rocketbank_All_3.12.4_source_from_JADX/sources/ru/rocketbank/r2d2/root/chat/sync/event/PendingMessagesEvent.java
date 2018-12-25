package ru.rocketbank.r2d2.root.chat.sync.event;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: PendingMessagesEvent.kt */
public final class PendingMessagesEvent extends MessageEvent {
    private final List<MessageIn> update;

    public final List<MessageIn> getUpdate() {
        return this.update;
    }

    public /* synthetic */ PendingMessagesEvent(List list, MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 2) != 0) {
            messageEvent = null;
        }
        this(list, messageEvent);
    }

    public PendingMessagesEvent(List<MessageIn> list, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(list, "update");
        super(messageEvent);
        this.update = list;
    }
}
