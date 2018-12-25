package ru.rocketbank.r2d2.fragments.deposit.strategy;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;

/* compiled from: VpbStrategy.kt */
public final class VpbStrategy implements DepositStrategy {
    private final DepositModel depositModel;

    public VpbStrategy(DepositModel depositModel) {
        Intrinsics.checkParameterIsNotNull(depositModel, "depositModel");
        this.depositModel = depositModel;
    }

    public final double balance() {
        return ((double) this.depositModel.getBalance()) - this.depositModel.getPercent();
    }

    public final double percent() {
        return this.depositModel.getPercent();
    }

    public final double totalBalance() {
        return (double) this.depositModel.getBalance();
    }
}
