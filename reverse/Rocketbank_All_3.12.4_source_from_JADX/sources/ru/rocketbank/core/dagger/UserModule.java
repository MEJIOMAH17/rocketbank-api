package ru.rocketbank.core.dagger;

import android.content.Context;
import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.manager.BankAccountManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.WidgetManager;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.api.WidgetApi;
import ru.rocketbank.core.user.AppInformationStorage;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.AuthorizationStorage;
import ru.rocketbank.core.user.WidgetStorage;
import ru.rocketbank.core.user.impl.RealmAppInformationStorage;
import ru.rocketbank.core.user.impl.RealmAuthStorage;
import ru.rocketbank.core.user.impl.RealmWidgetStorage;
import ru.rocketbank.core.utils.MoneyFormatter;

/* compiled from: UserModule.kt */
public final class UserModule {
    public static final Companion Companion = new Companion();
    private static final String TAG = "UserModule";

    /* compiled from: UserModule.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public UserModule() {
        Log.v(TAG, TAG);
    }

    public static AppInformationStorage provideAppInfoStorage(KeyManager keyManager) {
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        Log.v(TAG, "Creating app info stoage");
        return new RealmAppInformationStorage(keyManager);
    }

    public static AppInfoManager provideAppInfoManager(Context context, AppInformationStorage appInformationStorage) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appInformationStorage, "appInformationStorage");
        Log.v(TAG, "Creating app info manager");
        return new AppInfoManager(context, appInformationStorage);
    }

    public static WidgetStorage provideWidgetStorage() {
        Log.v(TAG, "Creating widget stoage");
        return new RealmWidgetStorage();
    }

    public static WidgetManager provideWidgetManager(Context context, Authorization authorization, WidgetStorage widgetStorage, MoneyFormatter moneyFormatter, WidgetApi widgetApi) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(widgetStorage, "widgetStorage");
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "moneyFormatter");
        Intrinsics.checkParameterIsNotNull(widgetApi, "widgetApi");
        Log.v(TAG, "Creating widget manager");
        return new WidgetManager(context, authorization, moneyFormatter, widgetStorage, widgetApi);
    }

    public static AuthorizationStorage provideAuthStorage(KeyManager keyManager) {
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        Log.v(TAG, "Creating auth storage");
        return new RealmAuthStorage(keyManager);
    }

    public static BankAccountManager provideBankAccountManager() {
        Log.v(TAG, "Creating BankAccountManager");
        return new BankAccountManager();
    }

    public static Authorization provideAuthorization(Context context, UserApi userApi, AuthorizationStorage authorizationStorage, DataManager dataManager, AnalyticsManager analyticsManager, BankAccountManager bankAccountManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(userApi, "userApi");
        Intrinsics.checkParameterIsNotNull(authorizationStorage, "authorizationStorage");
        Intrinsics.checkParameterIsNotNull(dataManager, "dataManager");
        Intrinsics.checkParameterIsNotNull(analyticsManager, "analyticsManager");
        Intrinsics.checkParameterIsNotNull(bankAccountManager, "bankAccountManager");
        Log.v(TAG, "Creating Authorization");
        return new Authorization(context, userApi, authorizationStorage, dataManager, analyticsManager, bankAccountManager);
    }

    public static CartStorage provideCartStorage() {
        return new CartStorage();
    }
}
