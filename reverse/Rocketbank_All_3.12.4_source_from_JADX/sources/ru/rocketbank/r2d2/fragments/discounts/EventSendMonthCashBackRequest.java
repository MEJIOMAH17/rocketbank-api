package ru.rocketbank.r2d2.fragments.discounts;

import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;

/* compiled from: EventSendMonthCashBackRequest.kt */
public final class EventSendMonthCashBackRequest {
    private MonthCashBack monthCashBack;

    public EventSendMonthCashBackRequest() {
        this(null, 1, null);
    }

    public EventSendMonthCashBackRequest(MonthCashBack monthCashBack) {
        this.monthCashBack = monthCashBack;
    }

    public /* synthetic */ EventSendMonthCashBackRequest(MonthCashBack monthCashBack, int i, Ref ref) {
        if ((i & 1) != 0) {
            monthCashBack = null;
        }
        this(monthCashBack);
    }

    public final MonthCashBack getMonthCashBack() {
        return this.monthCashBack;
    }

    public final void setMonthCashBack(MonthCashBack monthCashBack) {
        this.monthCashBack = monthCashBack;
    }
}
