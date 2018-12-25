package ru.rocketbank.r2d2.root.feed;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: FeedAdapter.kt */
final class FeedAdapter$operationFormatter$2 extends Lambda implements Function0<MoneyFormatter> {
    public static final FeedAdapter$operationFormatter$2 INSTANCE = new FeedAdapter$operationFormatter$2();

    FeedAdapter$operationFormatter$2() {
        super(0);
    }

    public final MoneyFormatter invoke() {
        return new MoneyFormatter(RocketApplication.Companion.getContext(), RocketApplication.Companion.getInjector().getAuthorization(), RocketApplication.Companion.getInjector().getCurrencyManager());
    }
}
