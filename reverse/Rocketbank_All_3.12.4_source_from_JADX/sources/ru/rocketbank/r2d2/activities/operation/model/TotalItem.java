package ru.rocketbank.r2d2.activities.operation.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TotalItem.kt */
public final class TotalItem {
    private String amount = "";
    private String rocketRouble = "";

    public final String getRocketRouble() {
        return this.rocketRouble;
    }

    public final void setRocketRouble(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.rocketRouble = str;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final void setAmount(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.amount = str;
    }
}
