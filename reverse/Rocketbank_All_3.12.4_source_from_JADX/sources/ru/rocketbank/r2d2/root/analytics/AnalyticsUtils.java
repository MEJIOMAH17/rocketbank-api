package ru.rocketbank.r2d2.root.analytics;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.view.animation.AccelerateInterpolator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: AnalyticsUtils.kt */
public final class AnalyticsUtils {
    public static final ValueAnimator amountAnimation(RocketTextView rocketTextView, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(rocketTextView, "textView");
        CurrencyManager currencyManager = new CurrencyManager();
        Context context = RocketApplication.Companion.getContext();
        Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, currencyManager);
        moneyFormatter.setFloorAmount(true);
        Function1 analyticsUtils$amountAnimation$format$1 = new AnalyticsUtils$amountAnimation$format$1(currencyManager, moneyFormatter);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{i, i2});
        valueAnimator.setInterpolator((TimeInterpolator) new AccelerateInterpolator());
        valueAnimator.setDuration(300);
        valueAnimator.addUpdateListener((AnimatorUpdateListener) new AnalyticsUtils$amountAnimation$1(rocketTextView, analyticsUtils$amountAnimation$format$1));
        return valueAnimator;
    }
}
