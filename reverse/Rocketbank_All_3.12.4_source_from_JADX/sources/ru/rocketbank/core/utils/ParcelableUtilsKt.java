package ru.rocketbank.core.utils;

import android.content.Context;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.manager.WidgetManager;
import ru.rocketbank.core.network.api.WidgetApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.WidgetStorage;

/* compiled from: ParcelableUtils.kt */
public class ParcelableUtilsKt implements Provider<WidgetManager> {
    private final Provider<Authorization> authorizationProvider;
    private final Provider<Context> contextProvider;
    private final UserModule module;
    private final Provider<MoneyFormatter> moneyFormatterProvider;
    private final Provider<WidgetApi> widgetApiProvider;
    private final Provider<WidgetStorage> widgetStorageProvider;

    public ParcelableUtilsKt(UserModule userModule, Provider<Context> provider, Provider<Authorization> provider2, Provider<WidgetStorage> provider3, Provider<MoneyFormatter> provider4, Provider<WidgetApi> provider5) {
        this.module = userModule;
        this.contextProvider = provider;
        this.authorizationProvider = provider2;
        this.widgetStorageProvider = provider3;
        this.moneyFormatterProvider = provider4;
        this.widgetApiProvider = provider5;
    }

    public WidgetManager get() {
        return UserModule.provideWidgetManager((Context) this.contextProvider.get(), (Authorization) this.authorizationProvider.get(), (WidgetStorage) this.widgetStorageProvider.get(), (MoneyFormatter) this.moneyFormatterProvider.get(), (WidgetApi) this.widgetApiProvider.get());
    }

    public static ParcelableUtilsKt create$430d575d(UserModule userModule, Provider<Context> provider, Provider<Authorization> provider2, Provider<WidgetStorage> provider3, Provider<MoneyFormatter> provider4, Provider<WidgetApi> provider5) {
        return new ParcelableUtilsKt(userModule, provider, provider2, provider3, provider4, provider5);
    }
}
