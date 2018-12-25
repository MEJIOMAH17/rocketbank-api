package ru.rocketbank.r2d2.root.chat.sync;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.user.Authorization;

/* compiled from: MessageNotifier.kt */
final class MessageNotifier$authorization$2 extends Lambda implements Function0<Authorization> {
    public static final MessageNotifier$authorization$2 INSTANCE = new MessageNotifier$authorization$2();

    MessageNotifier$authorization$2() {
        super(0);
    }

    public final Authorization invoke() {
        return BaseRocketApplication.getRocketComponent().getAuthorization();
    }
}
