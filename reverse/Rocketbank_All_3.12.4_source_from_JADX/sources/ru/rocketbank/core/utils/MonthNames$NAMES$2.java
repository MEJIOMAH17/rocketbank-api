package ru.rocketbank.core.utils;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: MonthNames.kt */
final class MonthNames$NAMES$2 extends Lambda implements Function0<String[]> {
    public static final MonthNames$NAMES$2 INSTANCE = new MonthNames$NAMES$2();

    MonthNames$NAMES$2() {
        super(0);
    }

    public final String[] invoke() {
        return new String[]{"Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"};
    }
}
