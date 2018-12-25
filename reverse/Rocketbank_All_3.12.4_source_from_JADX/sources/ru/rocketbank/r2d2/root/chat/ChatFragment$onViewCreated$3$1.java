package ru.rocketbank.r2d2.root.chat;

import ru.rocketbank.core.manager.AnalyticsManager;
import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$onViewCreated$3$1<T> implements Action1<Throwable> {
    public static final ChatFragment$onViewCreated$3$1 INSTANCE = new ChatFragment$onViewCreated$3$1();

    ChatFragment$onViewCreated$3$1() {
    }

    public final void call(Throwable th) {
        AnalyticsManager.logException(th);
    }
}
