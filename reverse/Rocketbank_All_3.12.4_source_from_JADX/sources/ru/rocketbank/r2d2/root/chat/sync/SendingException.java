package ru.rocketbank.r2d2.root.chat.sync;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: SendingException.kt */
public final class SendingException extends RuntimeException {
    private MessageIn messageIn;

    public final MessageIn getMessageIn() {
        return this.messageIn;
    }

    public final void setMessageIn(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "<set-?>");
        this.messageIn = messageIn;
    }

    public SendingException(String str, Throwable th, MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "messageIn");
        super(str, th);
        this.messageIn = messageIn;
    }
}
