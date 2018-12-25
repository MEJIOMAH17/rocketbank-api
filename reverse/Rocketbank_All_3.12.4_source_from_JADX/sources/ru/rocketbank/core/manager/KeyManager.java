package ru.rocketbank.core.manager;

import javax.crypto.SecretKey;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.user.AuthorizationStorage;

/* compiled from: KeyManager.kt */
public interface KeyManager {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: KeyManager.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final String TAG = "KeyManager";

        private Companion() {
        }

        public static String getTAG() {
            return TAG;
        }
    }

    /* compiled from: KeyManager.kt */
    public static final class DefaultImpls implements Provider<AuthorizationStorage> {
        private final Provider<KeyManager> keyManagerProvider;
        private final UserModule module;

        public DefaultImpls(UserModule userModule, Provider<KeyManager> provider) {
            this.module = userModule;
            this.keyManagerProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return UserModule.provideAuthStorage((KeyManager) this.keyManagerProvider.get());
        }
    }

    SecretKey generateKey();

    SecretKey getKey(String str);

    SecretKey getOrCreateKey(String str);

    void storeKey(String str, SecretKey secretKey);
}
