package ru.rocketbank.r2d2.activities.operation.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: StatItem.kt */
public final class StatItem {
    private String amount = "";
    private String month = "";

    public final String getMonth() {
        return this.month;
    }

    public final void setMonth(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.month = str;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final void setAmount(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.amount = str;
    }
}
