package ru.rocketbank.r2d2.utils;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

public class DateUtils {
    private static final SimpleDateFormat dateFormatFull = new SimpleDateFormat("dd MMMM yyyy");
    private static final SimpleDateFormat dateFormatShort = new SimpleDateFormat("dd MMMM");

    public static String formatDate(long j, String str) {
        return new SimpleDateFormat(str).format(Long.valueOf(j));
    }

    public static String formatForFeed(Calendar calendar) {
        int abs = Math.abs(Calendar.getInstance().get(6) - calendar.get(6));
        if (abs == 0) {
            return "Сегодня";
        }
        if (abs == 1) {
            return "Вчера";
        }
        if (abs < 7) {
            return dateFormatShort.format(Long.valueOf(calendar.getTimeInMillis()));
        }
        return dateFormatFull.format(Long.valueOf(calendar.getTimeInMillis()));
    }

    public static String formatDateTillDayMonthYear(Context context, Date date) {
        context = context.getResources().getStringArray(C0859R.array.months_end);
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        date = instance.get(1);
        int i = instance.get(2);
        int i2 = instance.get(5);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(i2);
        stringBuilder.append(" ");
        stringBuilder.append(context[i]);
        stringBuilder.append(" ");
        stringBuilder.append(date);
        return stringBuilder.toString();
    }

    public static String formatDateDayMonthTime(Context context, Date date) {
        context = context.getResources().getStringArray(C0859R.array.months_end);
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        int i = instance.get(2);
        int i2 = instance.get(5);
        date = new SimpleDateFormat("HH:mm").format(date);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(i2);
        stringBuilder.append(" ");
        stringBuilder.append(context[i]);
        stringBuilder.append(", ");
        stringBuilder.append(date);
        return stringBuilder.toString();
    }

    public static String formatDateDayMonthTime(int i) {
        return formatDateDayMonthTime(new Date(((long) i) * 1000));
    }

    public static String formatDateDayMonthTime(Date date) {
        return formatDateDayMonthTime(RocketApplication.getContext(), date);
    }

    public static String formatHoursMinutes(int i) {
        return new SimpleDateFormat("HH:mm").format(Long.valueOf(((long) i) * 1000));
    }
}
