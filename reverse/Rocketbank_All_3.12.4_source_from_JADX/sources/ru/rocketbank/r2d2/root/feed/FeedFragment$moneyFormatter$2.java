package ru.rocketbank.r2d2.root.feed;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: FeedFragment.kt */
final class FeedFragment$moneyFormatter$2 extends Lambda implements Function0<MoneyFormatter> {
    public static final FeedFragment$moneyFormatter$2 INSTANCE = new FeedFragment$moneyFormatter$2();

    FeedFragment$moneyFormatter$2() {
        super(0);
    }

    public final MoneyFormatter invoke() {
        CurrencyManager currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
        Context context = RocketApplication.Companion.getContext();
        Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, currencyManager);
        moneyFormatter.setFloorAmount(true);
        return moneyFormatter;
    }
}
