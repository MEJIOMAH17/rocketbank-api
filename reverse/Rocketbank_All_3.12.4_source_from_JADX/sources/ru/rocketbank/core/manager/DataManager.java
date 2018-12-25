package ru.rocketbank.core.manager;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.ProvidersApi;

/* compiled from: DataManager.kt */
public final class DataManager extends DataManagerImpl {
    public DataManager(CurrencyManager currencyManager, ProvidersApi providersApi) {
        Intrinsics.checkParameterIsNotNull(currencyManager, "currencyManager");
        Intrinsics.checkParameterIsNotNull(providersApi, "providersApi");
        super(providersApi);
    }
}
