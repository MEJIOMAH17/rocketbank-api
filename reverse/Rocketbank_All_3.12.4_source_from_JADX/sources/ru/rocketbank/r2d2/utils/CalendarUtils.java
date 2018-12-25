package ru.rocketbank.r2d2.utils;

import android.content.Context;
import java.security.InvalidParameterException;
import java.util.Calendar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CalendarUtils.kt */
public final class CalendarUtils {
    public static final Calendar clearTime(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        calendar.set(10, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar;
    }

    public static final int monthsInterval(Calendar calendar, Calendar calendar2) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        Intrinsics.checkParameterIsNotNull(calendar2, ProviderField.DATE);
        return ((calendar2.get(1) * 12) + calendar2.get(2)) - ((calendar.get(1) * 12) + calendar.get(2));
    }

    public static final Calendar copy(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        calendar = calendar.clone();
        if (calendar != null) {
            return calendar;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.util.Calendar");
    }

    public static final int month(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        return calendar.get(2);
    }

    public static final int year(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        return calendar.get(1);
    }

    public static final int dayOfMonth(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        return calendar.get(5);
    }

    public static final String monthNameShort(Calendar calendar, Context context) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        Intrinsics.checkParameterIsNotNull(context, "context");
        calendar = calendar.get(2) + 1;
        switch (calendar) {
            case 1:
                calendar = context.getString(C0859R.string.month_jan);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_jan)");
                return calendar;
            case 2:
                calendar = context.getString(C0859R.string.month_feb);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_feb)");
                return calendar;
            case 3:
                calendar = context.getString(C0859R.string.month_mar);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_mar)");
                return calendar;
            case 4:
                calendar = context.getString(C0859R.string.month_apr);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_apr)");
                return calendar;
            case 5:
                calendar = context.getString(C0859R.string.month_may);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_may)");
                return calendar;
            case 6:
                calendar = context.getString(C0859R.string.month_jun);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_jun)");
                return calendar;
            case 7:
                calendar = context.getString(C0859R.string.month_jul);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_jul)");
                return calendar;
            case 8:
                calendar = context.getString(C0859R.string.month_aug);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_aug)");
                return calendar;
            case 9:
                calendar = context.getString(C0859R.string.month_set);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_set)");
                return calendar;
            case 10:
                calendar = context.getString(C0859R.string.month_oct);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_oct)");
                return calendar;
            case 11:
                calendar = context.getString(C0859R.string.month_nov);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_nov)");
                return calendar;
            case 12:
                calendar = context.getString(C0859R.string.month_dec);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.month_dec)");
                return calendar;
            default:
                throw ((Throwable) new InvalidParameterException("Invalid month ".concat(String.valueOf(calendar))));
        }
    }

    public static final String forMonthString(Calendar calendar, Context context) {
        Intrinsics.checkParameterIsNotNull(calendar, "$receiver");
        Intrinsics.checkParameterIsNotNull(context, "context");
        calendar = calendar.get(2) + 1;
        switch (calendar) {
            case 1:
                calendar = context.getString(C0859R.string.for_month_jan);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_jan)");
                return calendar;
            case 2:
                calendar = context.getString(C0859R.string.for_month_feb);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_feb)");
                return calendar;
            case 3:
                calendar = context.getString(C0859R.string.for_month_mar);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_mar)");
                return calendar;
            case 4:
                calendar = context.getString(C0859R.string.for_month_apr);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_apr)");
                return calendar;
            case 5:
                calendar = context.getString(C0859R.string.for_month_may);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_may)");
                return calendar;
            case 6:
                calendar = context.getString(C0859R.string.for_month_jun);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_jun)");
                return calendar;
            case 7:
                calendar = context.getString(C0859R.string.for_month_jul);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_jul)");
                return calendar;
            case 8:
                calendar = context.getString(C0859R.string.for_month_aug);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_aug)");
                return calendar;
            case 9:
                calendar = context.getString(C0859R.string.for_month_set);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_set)");
                return calendar;
            case 10:
                calendar = context.getString(C0859R.string.for_month_oct);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_oct)");
                return calendar;
            case 11:
                calendar = context.getString(C0859R.string.for_month_nov);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_nov)");
                return calendar;
            case 12:
                calendar = context.getString(C0859R.string.for_month_dec);
                Intrinsics.checkExpressionValueIsNotNull(calendar, "context.getString(R.string.for_month_dec)");
                return calendar;
            default:
                throw ((Throwable) new InvalidParameterException("Invalid month ".concat(String.valueOf(calendar))));
        }
    }
}
