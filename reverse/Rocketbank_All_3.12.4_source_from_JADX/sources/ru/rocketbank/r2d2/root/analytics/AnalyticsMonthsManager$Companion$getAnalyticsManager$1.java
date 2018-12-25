package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData;
import ru.rocketbank.r2d2.root.analytics.AnalyticsMonthsManager.Companion;
import rx.functions.Func1;

/* compiled from: AnalyticsMonthsManager.kt */
final class AnalyticsMonthsManager$Companion$getAnalyticsManager$1<T, R> implements Func1<T, R> {
    final /* synthetic */ int[] $jointIds;

    AnalyticsMonthsManager$Companion$getAnalyticsManager$1(int[] iArr) {
        this.$jointIds = iArr;
    }

    public final AnalyticsMonthsManager call(AnalyticsResponseData analyticsResponseData) {
        Companion companion = AnalyticsMonthsManager.Companion;
        int[] iArr = this.$jointIds;
        Intrinsics.checkExpressionValueIsNotNull(analyticsResponseData, "it");
        return companion.createAnalyticsMonthManager(iArr, analyticsResponseData.getFirstOperationDate());
    }
}
