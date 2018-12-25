package ru.rocketbank.r2d2.root.chat.sync.queue;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.network.api.MessageApi;

/* compiled from: MessageOutQueueImpl.kt */
final class MessageOutQueueImpl$messageApi$2 extends Lambda implements Function0<MessageApi> {
    public static final MessageOutQueueImpl$messageApi$2 INSTANCE = new MessageOutQueueImpl$messageApi$2();

    MessageOutQueueImpl$messageApi$2() {
        super(0);
    }

    public final MessageApi invoke() {
        return BaseRocketApplication.getRocketComponent().getMessageApi();
    }
}
