package ru.rocketbank.r2d2.root.chat.outgoing;

import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: RetryMessageListener.kt */
public interface RetryMessageListener {
    void retry(MessageIn messageIn);
}
