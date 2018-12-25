package ru.rocketbank.core.model;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: RocketDepositModel.kt */
final class RocketDepositModel$colorValue$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ RocketDepositModel this$0;

    RocketDepositModel$colorValue$2(RocketDepositModel rocketDepositModel) {
        this.this$0 = rocketDepositModel;
        super(0);
    }

    public final int invoke() {
        return this.this$0.parseColor();
    }
}
