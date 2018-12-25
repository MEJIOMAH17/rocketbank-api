package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.utils.MoneyFormatter;

/* compiled from: AnalyticsUtils.kt */
final class AnalyticsUtils$amountAnimation$format$1 extends Lambda implements Function1<Double, String> {
    final /* synthetic */ CurrencyManager $currencyManager;
    final /* synthetic */ MoneyFormatter $floorMoneyFormatter;

    AnalyticsUtils$amountAnimation$format$1(CurrencyManager currencyManager, MoneyFormatter moneyFormatter) {
        this.$currencyManager = currencyManager;
        this.$floorMoneyFormatter = moneyFormatter;
        super(1);
    }

    public final String invoke(Double d) {
        if (d != null) {
            if (!Intrinsics.areEqual$3bd129e3(d)) {
                return this.$floorMoneyFormatter.format(d.doubleValue(), Currency.ROUBLE, false);
            }
        }
        d = new StringBuilder("0 ");
        d.append(this.$currencyManager.getCurrencySymbol(Currency.ROUBLE.toString()));
        return d.toString();
    }
}
