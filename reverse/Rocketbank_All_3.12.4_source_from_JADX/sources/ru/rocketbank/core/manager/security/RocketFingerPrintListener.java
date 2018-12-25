package ru.rocketbank.core.manager.security;

import android.content.Context;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.BankAccountManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.AuthorizationStorage;

/* compiled from: RocketFingerPrintListener.kt */
public interface RocketFingerPrintListener {

    /* compiled from: RocketFingerPrintListener.kt */
    public static final class DefaultImpls implements Provider<Authorization> {
        private final Provider<AnalyticsManager> analyticsManagerProvider;
        private final Provider<AuthorizationStorage> authorizationStorageProvider;
        private final Provider<BankAccountManager> bankAccountManagerProvider;
        private final Provider<Context> contextProvider;
        private final Provider<DataManager> dataManagerProvider;
        private final UserModule module;
        private final Provider<UserApi> userApiProvider;

        public DefaultImpls(UserModule userModule, Provider<Context> provider, Provider<UserApi> provider2, Provider<AuthorizationStorage> provider3, Provider<DataManager> provider4, Provider<AnalyticsManager> provider5, Provider<BankAccountManager> provider6) {
            this.module = userModule;
            this.contextProvider = provider;
            this.userApiProvider = provider2;
            this.authorizationStorageProvider = provider3;
            this.dataManagerProvider = provider4;
            this.analyticsManagerProvider = provider5;
            this.bankAccountManagerProvider = provider6;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return UserModule.provideAuthorization((Context) this.contextProvider.get(), (UserApi) this.userApiProvider.get(), (AuthorizationStorage) this.authorizationStorageProvider.get(), (DataManager) this.dataManagerProvider.get(), (AnalyticsManager) this.analyticsManagerProvider.get(), (BankAccountManager) this.bankAccountManagerProvider.get());
        }
    }

    void onAuthenticationError(int i, String str);

    void onAuthenticationFailed();

    void onAuthenticationHelp(int i, String str);

    void onAuthenticationSucceeded(String str);

    void onKeyNeedsForUpdate();
}
