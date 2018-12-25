package ru.rocketbank.r2d2.root.feed;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: FeedFragment.kt */
final class FeedFragment$authorization$2 extends Lambda implements Function0<Authorization> {
    public static final FeedFragment$authorization$2 INSTANCE = new FeedFragment$authorization$2();

    FeedFragment$authorization$2() {
        super(0);
    }

    public final Authorization invoke() {
        return RocketApplication.Companion.getInjector().getAuthorization();
    }
}
