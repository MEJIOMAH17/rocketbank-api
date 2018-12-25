package ru.rocketbank.r2d2.fragments.deposit.strategy;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;

/* compiled from: TochkaStrategy.kt */
public final class TochkaStrategy implements DepositStrategy {
    private final DepositModel depositModel;

    public TochkaStrategy(DepositModel depositModel) {
        Intrinsics.checkParameterIsNotNull(depositModel, "depositModel");
        this.depositModel = depositModel;
    }

    public final double balance() {
        return (double) this.depositModel.getBalance();
    }

    public final double percent() {
        return this.depositModel.getPercent();
    }

    public final double totalBalance() {
        return ((double) this.depositModel.getBalance()) + percent();
    }
}
