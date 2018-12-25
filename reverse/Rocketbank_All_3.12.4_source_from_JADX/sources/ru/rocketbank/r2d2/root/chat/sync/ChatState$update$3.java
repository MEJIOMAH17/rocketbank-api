package ru.rocketbank.r2d2.root.chat.sync;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import rx.subjects.Subject;

/* compiled from: ChatState.kt */
final class ChatState$update$3 extends Lambda implements Function1<MessageEvent, Unit> {
    final /* synthetic */ Subject $event;

    ChatState$update$3(Subject subject) {
        this.$event = subject;
        super(1);
    }

    public final void invoke(MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(messageEvent, "it");
        this.$event.onNext(messageEvent);
    }
}
