package ru.rocketbank.r2d2.manager;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.r2d2.RocketApplication;

public final class MoneyManager {
    private static MoneyManager moneyManager = new MoneyManager();

    public static MoneyManager getInstance() {
        return moneyManager;
    }

    @Deprecated
    public final String format(double d, Currency currency) {
        return format(d, currency.toString());
    }

    @Deprecated
    public final String format(double d, Currency currency, boolean z) {
        currency = currency.toString();
        return z ? formatBottom(d, currency) : formatTop(d, currency);
    }

    @Deprecated
    public final String get(Currency currency) {
        return get(currency.toString());
    }

    public final String format(double d, String str) {
        DecimalFormat decimalFormat = getDecimalFormat();
        decimalFormat.setMaximumFractionDigits(2);
        return get(decimalFormat.format(d), str);
    }

    public final String formatBottom(double d, String str) {
        return format(true, d, str);
    }

    public final String formatTop(double d, String str) {
        return format(false, d, str);
    }

    public final String get(String str) {
        return RocketApplication.Companion.getInjector().getCurrencyManager().getCurrencySymbol(str);
    }

    private DecimalFormat getDecimalFormat() {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
        decimalFormatSymbols.setDecimalSeparator(',');
        decimalFormatSymbols.setGroupingSeparator(' ');
        decimalFormatSymbols.setMinusSign('-');
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
        decimalFormat.setDecimalSeparatorAlwaysShown(false);
        decimalFormat.setGroupingSize(3);
        decimalFormat.setGroupingUsed(true);
        decimalFormat.setMaximumFractionDigits(2);
        return decimalFormat;
    }

    private String format(boolean z, double d, String str) {
        if (Math.abs(d) < 10.0d) {
            return format(d, str);
        }
        DecimalFormat decimalFormat = getDecimalFormat();
        decimalFormat.setMaximumFractionDigits(0);
        return get(decimalFormat.format(z ? Math.floor(d) : (double) Math.round(d)), str);
    }

    private String get(String str, String str2) {
        str2 = get(str2);
        if (str2 == null) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" ");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }
}
