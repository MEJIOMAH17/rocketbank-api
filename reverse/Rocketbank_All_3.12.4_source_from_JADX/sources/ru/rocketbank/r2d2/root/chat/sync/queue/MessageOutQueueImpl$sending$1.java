package ru.rocketbank.r2d2.root.chat.sync.queue;

import kotlin.Pair;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.model.MessageResponse;
import rx.functions.Func1;

/* compiled from: MessageOutQueueImpl.kt */
final class MessageOutQueueImpl$sending$1<T, R> implements Func1<T, R> {
    final /* synthetic */ MessageIn $messageIn;

    MessageOutQueueImpl$sending$1(MessageIn messageIn) {
        this.$messageIn = messageIn;
    }

    public final Pair<MessageIn, MessageResponse> call(MessageResponse messageResponse) {
        return new Pair(this.$messageIn, messageResponse);
    }
}
