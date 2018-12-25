package ru.rocketbank.r2d2.root.chat.sync.event;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.r2d2.root.chat.sync.notification.TypingNotification;

/* compiled from: TypingEvent.kt */
public final class TypingEvent extends MessageEvent {
    private final TypingNotification typingNotification;

    public TypingEvent(TypingNotification typingNotification, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(typingNotification, "typingNotification");
        super(messageEvent);
        this.typingNotification = typingNotification;
    }

    public /* synthetic */ TypingEvent(TypingNotification typingNotification, MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 2) != 0) {
            messageEvent = null;
        }
        this(typingNotification, messageEvent);
    }

    public final TypingNotification getTypingNotification() {
        return this.typingNotification;
    }
}
