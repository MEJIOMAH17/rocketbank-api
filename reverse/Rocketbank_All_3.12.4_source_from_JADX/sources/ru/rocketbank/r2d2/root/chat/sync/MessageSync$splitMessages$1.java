package ru.rocketbank.r2d2.root.chat.sync;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: MessageSync.kt */
final class MessageSync$splitMessages$1 extends Lambda implements Function1<MessageIn, List<? extends MessageIn>> {
    final /* synthetic */ int $time;
    final /* synthetic */ MessageSync this$0;

    MessageSync$splitMessages$1(MessageSync messageSync, int i) {
        this.this$0 = messageSync;
        this.$time = i;
        super(1);
    }

    public final List<MessageIn> invoke(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "x");
        return this.this$0.splitMessage(this.$time, messageIn);
    }
}
