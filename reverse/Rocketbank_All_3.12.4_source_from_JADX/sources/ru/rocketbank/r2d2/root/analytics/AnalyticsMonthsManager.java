package ru.rocketbank.r2d2.root.analytics;

import java.util.Arrays;
import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.api.AnalyticsApi;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.r2d2.utils.CalendarUtils;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

/* compiled from: AnalyticsMonthsManager.kt */
public final class AnalyticsMonthsManager {
    public static final Companion Companion = new Companion();
    private static AnalyticsMonthsManager analyticsMonthsManager;
    private final int intervalInMonths = CalendarUtils.monthsInterval(this.periodBegin, this.periodEnd);
    private final int[] jointIds;
    private final Calendar periodBegin;
    private final Calendar periodEnd;

    /* compiled from: AnalyticsMonthsManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ Observable getAnalyticsManager$default(Companion companion, AnalyticsApi analyticsApi, int[] iArr, Calendar calendar, int i, Object obj) {
            if ((i & 4) != 0) {
                calendar = null;
            }
            return companion.getAnalyticsManager(analyticsApi, iArr, calendar);
        }

        public final Observable<AnalyticsMonthsManager> getAnalyticsManager(AnalyticsApi analyticsApi, int[] iArr, Calendar calendar) {
            Intrinsics.checkParameterIsNotNull(analyticsApi, "analyticsApi");
            if (calendar != null) {
                AnalyticsMonthsManager.analyticsMonthsManager = new AnalyticsMonthsManager(iArr, calendar);
            }
            if (isAnalyticsMonthManagerActual(iArr, calendar) == null) {
                calendar = Calendar.getInstance();
                Intrinsics.checkExpressionValueIsNotNull(calendar, ProviderField.DATE);
                Calendar copy = CalendarUtils.copy(calendar);
                copy.set(5, copy.getActualMinimum(5));
                calendar = CalendarUtils.copy(calendar);
                calendar.set(5, copy.getActualMaximum(5));
                analyticsApi = analyticsApi.analyticsSummary(AnalyticsGroupFragment.Companion.getDATE_FORMAT().format(copy.getTime()), AnalyticsGroupFragment.Companion.getDATE_FORMAT().format(calendar.getTime()), iArr).map((Func1) new AnalyticsMonthsManager$Companion$getAnalyticsManager$1(iArr)).doOnNext((Action1) AnalyticsMonthsManager$Companion$getAnalyticsManager$2.INSTANCE).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
                Intrinsics.checkExpressionValueIsNotNull(analyticsApi, "analyticsApi.analyticsSu…dSchedulers.mainThread())");
                return analyticsApi;
            }
            analyticsApi = Observable.just(AnalyticsMonthsManager.analyticsMonthsManager);
            Intrinsics.checkExpressionValueIsNotNull(analyticsApi, "Observable.just(analyticsMonthsManager)");
            return analyticsApi;
        }

        private final boolean isAnalyticsMonthManagerActual(int[] iArr, Calendar calendar) {
            if (AnalyticsMonthsManager.analyticsMonthsManager != null) {
                AnalyticsMonthsManager access$getAnalyticsMonthsManager$cp = AnalyticsMonthsManager.analyticsMonthsManager;
                if ((access$getAnalyticsMonthsManager$cp != null ? access$getAnalyticsMonthsManager$cp.isActual(iArr, calendar) : null) != null) {
                    return 1;
                }
            }
            return false;
        }

        public final AnalyticsMonthsManager createAnalyticsMonthManager(int[] iArr, Calendar calendar) {
            return calendar != null ? new AnalyticsMonthsManager(iArr, calendar) : null;
        }
    }

    public AnalyticsMonthsManager(int[] iArr, Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "firstOperationDate");
        this.jointIds = iArr;
        this.periodBegin = CalendarUtils.clearTime(CalendarUtils.copy(calendar));
        this.periodBegin.set(5, this.periodBegin.getActualMinimum(5));
        iArr = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(iArr, "Calendar.getInstance()");
        this.periodEnd = CalendarUtils.clearTime(iArr);
        this.periodEnd.set(5, this.periodEnd.getActualMaximum(5));
    }

    public final int[] getJointIds() {
        return this.jointIds;
    }

    public final int getIntervalInMonths() {
        return this.intervalInMonths;
    }

    public final Calendar getPeriodBegin() {
        return CalendarUtils.copy(this.periodBegin);
    }

    public final Calendar getPeriodEnd() {
        return CalendarUtils.copy(this.periodEnd);
    }

    public final boolean isBeginPeriod(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        return (CalendarUtils.year(calendar) == CalendarUtils.year(this.periodBegin) && CalendarUtils.month(calendar) == CalendarUtils.month(this.periodBegin)) ? true : null;
    }

    public final boolean isEndPeriod(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        return (CalendarUtils.year(calendar) == CalendarUtils.year(this.periodEnd) && CalendarUtils.month(calendar) == CalendarUtils.month(this.periodEnd)) ? true : null;
    }

    public final Calendar nextPeriod(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        Calendar copy = CalendarUtils.copy(calendar);
        if (isEndPeriod(copy)) {
            return calendar;
        }
        copy.add(2, 1);
        return copy;
    }

    public final Calendar prevPeriod(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        Calendar copy = CalendarUtils.copy(calendar);
        if (isBeginPeriod(copy)) {
            return calendar;
        }
        copy.add(2, -1);
        return copy;
    }

    public final Calendar getDateTimeByIndex(int i) {
        Calendar copy = CalendarUtils.copy(this.periodBegin);
        copy.add(2, i);
        return copy;
    }

    public final String getMonthNameByIndex(int i) {
        return MonthNames.INSTANCE.getNAMES()[getMonthNumberByIndex(i)];
    }

    private final int getMonthNumberByIndex(int i) {
        return getDateTimeByIndex(i).get(2);
    }

    private final boolean isActual(int[] iArr, Calendar calendar) {
        if (Arrays.equals(this.jointIds, iArr) != null) {
            iArr = CalendarUtils.month(this.periodBegin);
            if (calendar != null && iArr == CalendarUtils.month(calendar) && CalendarUtils.year(this.periodBegin) == CalendarUtils.year(calendar) && CalendarUtils.dayOfMonth(this.periodBegin) == CalendarUtils.dayOfMonth(calendar)) {
                return 1;
            }
        }
        return null;
    }
}
