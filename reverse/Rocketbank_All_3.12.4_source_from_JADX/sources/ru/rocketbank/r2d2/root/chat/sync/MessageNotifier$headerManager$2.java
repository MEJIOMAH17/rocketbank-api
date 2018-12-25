package ru.rocketbank.r2d2.root.chat.sync;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.HeaderManager;

/* compiled from: MessageNotifier.kt */
final class MessageNotifier$headerManager$2 extends Lambda implements Function0<HeaderManager> {
    public static final MessageNotifier$headerManager$2 INSTANCE = new MessageNotifier$headerManager$2();

    MessageNotifier$headerManager$2() {
        super(0);
    }

    public final HeaderManager invoke() {
        return BaseRocketApplication.getRocketComponent().getHeaderManager();
    }
}
