package ru.rocketbank.r2d2.root.analytics;

import rx.functions.Action1;

/* compiled from: AnalyticsMonthsManager.kt */
final class AnalyticsMonthsManager$Companion$getAnalyticsManager$2<T> implements Action1<AnalyticsMonthsManager> {
    public static final AnalyticsMonthsManager$Companion$getAnalyticsManager$2 INSTANCE = new AnalyticsMonthsManager$Companion$getAnalyticsManager$2();

    AnalyticsMonthsManager$Companion$getAnalyticsManager$2() {
    }

    public final void call(AnalyticsMonthsManager analyticsMonthsManager) {
        AnalyticsMonthsManager.analyticsMonthsManager = analyticsMonthsManager;
    }
}
