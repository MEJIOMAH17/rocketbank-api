package ru.rocketbank.core.network.model;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: MessageResponse.kt */
public final class MessageResponse {
    private final MessageIn message;

    public static /* bridge */ /* synthetic */ MessageResponse copy$default(MessageResponse messageResponse, MessageIn messageIn, int i, Object obj) {
        if ((i & 1) != 0) {
            messageIn = messageResponse.message;
        }
        return messageResponse.copy(messageIn);
    }

    public final MessageIn component1() {
        return this.message;
    }

    public final MessageResponse copy(MessageIn messageIn) {
        return new MessageResponse(messageIn);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MessageResponse) {
                if (Intrinsics.areEqual(this.message, ((MessageResponse) obj).message)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        MessageIn messageIn = this.message;
        return messageIn != null ? messageIn.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MessageResponse(message=");
        stringBuilder.append(this.message);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MessageResponse(MessageIn messageIn) {
        this.message = messageIn;
    }

    public final MessageIn getMessage() {
        return this.message;
    }
}
