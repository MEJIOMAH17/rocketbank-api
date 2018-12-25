package ru.rocketbank.core.utils;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.user.Authorization;

/* compiled from: MoneyFormatter.kt */
public final class MoneyFormatter {
    private static final String CURRENCY_ROCKET = "RRU";
    public static final Companion Companion = new Companion();
    private final Context context;
    private final CurrencyManager currencyManager;
    private final DecimalFormat decimalFormat = new DecimalFormat();
    private boolean floorAmount;
    private final int loyaltyUnitsResourceId;

    /* compiled from: MoneyFormatter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: MoneyFormatter.kt */
    public static final class FormattedAmount {
        private final String amountString;
        private final String suffix;

        public FormattedAmount(String str, String str2) {
            Intrinsics.checkParameterIsNotNull(str, "amountString");
            Intrinsics.checkParameterIsNotNull(str2, "suffix");
            this.amountString = str;
            this.suffix = str2;
        }

        public final String getAmountString() {
            return this.amountString;
        }

        public final String getSuffix() {
            return this.suffix;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.amountString);
            stringBuilder.append(Typography.nbsp);
            stringBuilder.append(this.suffix);
            return stringBuilder.toString();
        }
    }

    public MoneyFormatter(Context context, Authorization authorization, CurrencyManager currencyManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(currencyManager, "currencyManager");
        this.context = context;
        this.currencyManager = currencyManager;
        context = authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(context, "userData");
        this.loyaltyUnitsResourceId = Cobrand.Companion.fromCobrandName(context.realmGet$cobrandName()).getMoney();
        context = new DecimalFormatSymbols();
        context.setDecimalSeparator(',');
        context.setGroupingSeparator(' ');
        context.setMinusSign('−');
        this.decimalFormat.setDecimalFormatSymbols(context);
        this.decimalFormat.setGroupingUsed(true);
        this.decimalFormat.setGroupingSize(3);
        this.decimalFormat.setDecimalSeparatorAlwaysShown(null);
    }

    public final String format(double d, Currency currency, boolean z) {
        Intrinsics.checkParameterIsNotNull(currency, Param.CURRENCY);
        String currency2 = currency.toString();
        Intrinsics.checkExpressionValueIsNotNull(currency2, "currency.toString()");
        return format(d, currency2, z);
    }

    public final String format(double d, String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "currencyCode");
        return formatAmount(d, str, z).toString();
    }

    public final FormattedAmount formatAmount(double d, String str, boolean z) {
        String currencySymbol;
        Intrinsics.checkParameterIsNotNull(str, "currencyCode");
        int i = 0;
        if (!z) {
            if (Math.abs(d) >= 1.0d || !(Intrinsics.areEqual(str, CURRENCY_ROCKET) ^ 1)) {
                this.decimalFormat.setMaximumFractionDigits(0);
                this.decimalFormat.setMinimumFractionDigits(0);
                i = round(d);
                d = this.decimalFormat.format((long) i);
                Intrinsics.checkExpressionValueIsNotNull(d, "decimalFormat.format(displayingAmount.toLong())");
                if (Intrinsics.areEqual(str, CURRENCY_ROCKET)) {
                    currencySymbol = this.currencyManager.getCurrencySymbol(str);
                    if (currencySymbol == null) {
                        currencySymbol = "";
                    }
                } else {
                    currencySymbol = this.context.getResources().getQuantityString(this.loyaltyUnitsResourceId, Math.abs(i));
                    Intrinsics.checkExpressionValueIsNotNull(currencySymbol, "context.resources.getQua…d, abs(displayingAmount))");
                }
                return new FormattedAmount(d, currencySymbol);
            }
        }
        this.decimalFormat.setMaximumFractionDigits(2);
        this.decimalFormat.setMinimumFractionDigits(2);
        d = this.decimalFormat.format(d);
        Intrinsics.checkExpressionValueIsNotNull(d, "decimalFormat.format(amount)");
        if (Intrinsics.areEqual(str, CURRENCY_ROCKET)) {
            currencySymbol = this.currencyManager.getCurrencySymbol(str);
            if (currencySymbol == null) {
                currencySymbol = "";
            }
        } else {
            currencySymbol = this.context.getResources().getQuantityString(this.loyaltyUnitsResourceId, Math.abs(i));
            Intrinsics.checkExpressionValueIsNotNull(currencySymbol, "context.resources.getQua…d, abs(displayingAmount))");
        }
        return new FormattedAmount(d, currencySymbol);
    }

    public final String formatWithSign(double d, String str, boolean z) {
        String currencySymbol;
        Intrinsics.checkParameterIsNotNull(str, "currencyCode");
        this.decimalFormat.setPositivePrefix("+ ");
        this.decimalFormat.setNegativePrefix("- ");
        int i = 0;
        if (!z) {
            if (Math.abs(d) >= 1.0d || !(Intrinsics.areEqual(str, CURRENCY_ROCKET) ^ 1)) {
                this.decimalFormat.setMaximumFractionDigits(0);
                this.decimalFormat.setMinimumFractionDigits(0);
                i = round(d);
                d = this.decimalFormat.format((long) i);
                Intrinsics.checkExpressionValueIsNotNull(d, "decimalFormat.format(displayingAmount.toLong())");
                StringsKt__StringsJVMKt.replace$default((String) d, " ", " ", false, 4, null);
                if (Intrinsics.areEqual(str, CURRENCY_ROCKET)) {
                    currencySymbol = this.currencyManager.getCurrencySymbol(str);
                    if (currencySymbol == null) {
                        currencySymbol = "";
                    }
                } else {
                    currencySymbol = this.context.getResources().getQuantityString(this.loyaltyUnitsResourceId, Math.abs(i));
                    Intrinsics.checkExpressionValueIsNotNull(currencySymbol, "context.resources.getQua…d, abs(displayingAmount))");
                }
                str = new StringBuilder();
                str.append(d);
                str.append(7.9E-322d);
                str.append(currencySymbol);
                return str.toString();
            }
        }
        this.decimalFormat.setMaximumFractionDigits(2);
        this.decimalFormat.setMinimumFractionDigits(2);
        d = this.decimalFormat.format(d);
        Intrinsics.checkExpressionValueIsNotNull(d, "decimalFormat.format(amount)");
        StringsKt__StringsJVMKt.replace$default((String) d, " ", " ", false, 4, null);
        if (Intrinsics.areEqual(str, CURRENCY_ROCKET)) {
            currencySymbol = this.currencyManager.getCurrencySymbol(str);
            if (currencySymbol == null) {
                currencySymbol = "";
            }
        } else {
            currencySymbol = this.context.getResources().getQuantityString(this.loyaltyUnitsResourceId, Math.abs(i));
            Intrinsics.checkExpressionValueIsNotNull(currencySymbol, "context.resources.getQua…d, abs(displayingAmount))");
        }
        str = new StringBuilder();
        str.append(d);
        str.append(7.9E-322d);
        str.append(currencySymbol);
        return str.toString();
    }

    private final int round(double d) {
        if (!this.floorAmount) {
            return (int) Math.round(d);
        }
        return (int) (d < 0.0d ? Math.ceil(d) : Math.floor(d));
    }

    public final void setFloorAmount(boolean z) {
        this.floorAmount = z;
    }

    public final String getString(int i, Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        i = context.getResources().getQuantityString(this.loyaltyUnitsResourceId, Math.abs(i));
        Intrinsics.checkExpressionValueIsNotNull(i, "context.resources.getQua…sResourceId, abs(amount))");
        return i;
    }
}
