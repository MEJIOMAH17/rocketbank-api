package ru.rocketbank.r2d2.fragments.deposit;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.r2d2.fragments.deposit.strategy.DepositStrategy;
import ru.rocketbank.r2d2.fragments.deposit.strategy.TochkaStrategy;

/* compiled from: DepositStrategyManager.kt */
public final class DepositStrategyManager {
    public static final DepositStrategyManager INSTANCE = new DepositStrategyManager();

    private DepositStrategyManager() {
    }

    public static final DepositStrategy getStrategy(DepositModel depositModel) {
        Intrinsics.checkParameterIsNotNull(depositModel, "depositModel");
        return new TochkaStrategy(depositModel);
    }
}
