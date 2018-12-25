package ru.rocketbank.r2d2.activities.card;

import ru.rocketbank.r2d2.C0859R;

/* compiled from: CardLimitData.kt */
public final class CardLimits {
    public static final CardLimits INSTANCE = new CardLimits();
    private static final CardLimitData card = new CardLimitData(C0859R.string.limit_card_payment, C0859R.string.subtext_limit_pay_can, C0859R.string.subtext_limit_pay_cant, C0859R.drawable.ic_limits_pay, null, 16, null);
    private static final CardLimitData cash = new CardLimitData(C0859R.string.limit_cash_operation, C0859R.string.subtext_limit_cash_can, C0859R.string.subtext_limit_cash_cant, C0859R.drawable.ic_limits_cash, null, 16, null);
    private static final CardLimitData cashAbroad = new CardLimitData(C0859R.string.limit_cash_abroad_operation, C0859R.string.subtext_limit_cash_abroad_can, C0859R.string.subtext_limit_cash_abroad_cant, C0859R.drawable.ic_limits_fly, null, 16, null);
    private static final CardLimitData internet = new CardLimitData(C0859R.string.limit_internet_operation, C0859R.string.subtext_limit_internet_can, C0859R.string.subtext_limit_internet_cant, C0859R.drawable.ic_limits_internet, null, 16, null);

    private CardLimits() {
    }

    public final CardLimitData getCash() {
        return cash;
    }

    public final CardLimitData getCashAbroad() {
        return cashAbroad;
    }

    public final CardLimitData getInternet() {
        return internet;
    }

    public final CardLimitData getCard() {
        return card;
    }
}
