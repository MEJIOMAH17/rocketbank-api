package ru.rocketbank.r2d2.root.chat;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$cataEvent$1 extends Lambda implements Function1<MessageEvent, T> {
    final /* synthetic */ Function2 $headUpdate;
    final /* synthetic */ Function2 $pendingUpdate;
    final /* synthetic */ Function2 $progressUpdate;
    final /* synthetic */ Function2 $publishErrorEvent;
    final /* synthetic */ Function2 $publishEvent;
    final /* synthetic */ Function2 $readEvent;
    final /* synthetic */ Function2 $tailUpdate;
    final /* synthetic */ Function2 $typingMessage;
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$cataEvent$1(ChatAdapter chatAdapter, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function2 function25, Function2 function26, Function2 function27, Function2 function28) {
        this.this$0 = chatAdapter;
        this.$headUpdate = function2;
        this.$pendingUpdate = function22;
        this.$tailUpdate = function23;
        this.$publishEvent = function24;
        this.$publishErrorEvent = function25;
        this.$typingMessage = function26;
        this.$readEvent = function27;
        this.$progressUpdate = function28;
        super(1);
    }

    public final T invoke(MessageEvent messageEvent) {
        return this.this$0.cataEvent(messageEvent, this.$headUpdate, this.$pendingUpdate, this.$tailUpdate, this.$publishEvent, this.$publishErrorEvent, this.$typingMessage, this.$readEvent, this.$progressUpdate);
    }
}
