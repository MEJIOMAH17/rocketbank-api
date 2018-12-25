package ru.rocketbank.r2d2.root.chat.sync.event;

import kotlin.jvm.internal.Ref;

/* compiled from: MessageEvent.kt */
public class MessageEvent {
    private final MessageEvent parent;

    public MessageEvent() {
        this(null, 1, null);
    }

    public MessageEvent(MessageEvent messageEvent) {
        this.parent = messageEvent;
    }

    public /* synthetic */ MessageEvent(MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 1) != 0) {
            messageEvent = null;
        }
        this(messageEvent);
    }

    public final MessageEvent getParent() {
        return this.parent;
    }
}
