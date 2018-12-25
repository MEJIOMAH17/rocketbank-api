package ru.rocketbank.r2d2.root.chat.sync;

import rx.functions.Func1;

/* compiled from: MessageSync.kt */
final class MessageSync$page$1<T, R> implements Func1<Throwable, Boolean> {
    final /* synthetic */ MessageSync this$0;

    MessageSync$page$1(MessageSync messageSync) {
        this.this$0 = messageSync;
    }

    public final boolean call(Throwable th) {
        return this.this$0.managerState.get() != MessageNotifier.Companion.getSTOPPED() ? true : null;
    }
}
