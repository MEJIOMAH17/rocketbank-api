package ru.rocketbank.r2d2.root.feed;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: FeedFragment.kt */
final class FeedFragment$feedManager$2 extends Lambda implements Function0<FeedManager> {
    public static final FeedFragment$feedManager$2 INSTANCE = new FeedFragment$feedManager$2();

    FeedFragment$feedManager$2() {
        super(0);
    }

    public final FeedManager invoke() {
        return RocketApplication.Companion.getInjector().getFeedManager();
    }
}
