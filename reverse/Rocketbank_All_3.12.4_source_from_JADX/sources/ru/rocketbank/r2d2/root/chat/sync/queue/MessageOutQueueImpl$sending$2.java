package ru.rocketbank.r2d2.root.chat.sync.queue;

import kotlin.Pair;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.model.MessageResponse;
import ru.rocketbank.r2d2.root.chat.sync.SendingException;
import rx.functions.Func1;

/* compiled from: MessageOutQueueImpl.kt */
final class MessageOutQueueImpl$sending$2<T, R> implements Func1<Throwable, Pair<? extends MessageIn, ? extends MessageResponse>> {
    final /* synthetic */ MessageIn $messageIn;

    MessageOutQueueImpl$sending$2(MessageIn messageIn) {
        this.$messageIn = messageIn;
    }

    public final Void call(Throwable th) {
        throw new SendingException("Sending has failed", th, this.$messageIn);
    }
}
