package ru.rocketbank.r2d2.root.chat.sync.queue;

import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: MessageOutQueue.kt */
public interface MessageOutQueue {
    void sendMessage(MessageIn messageIn);
}
