package ru.rocketbank.r2d2.root.feed.viewholder;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: APViewHolder.kt */
final class APViewHolder$auth$2 extends Lambda implements Function0<Authorization> {
    public static final APViewHolder$auth$2 INSTANCE = new APViewHolder$auth$2();

    APViewHolder$auth$2() {
        super(0);
    }

    public final Authorization invoke() {
        return RocketApplication.Companion.getInjector().getAuthorization();
    }
}
