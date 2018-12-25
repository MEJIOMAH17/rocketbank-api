package ru.rocketbank.core.utils;

import android.view.View;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.manager.BankAccountManager;

/* compiled from: ButtonHandler.kt */
public interface ButtonHandler {

    /* compiled from: ButtonHandler.kt */
    public static final class DefaultImpls implements Provider<BankAccountManager> {
        private final UserModule module;

        public static void handle$60364d8e(View view, Function0<Unit> function0) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(function0, "func");
            view.setEnabled(false);
            function0.invoke();
            view.setEnabled(true);
        }

        public DefaultImpls(UserModule userModule) {
            this.module = userModule;
        }

        public BankAccountManager get() {
            return UserModule.provideBankAccountManager();
        }

        public static DefaultImpls create$5d82f649(UserModule userModule) {
            return new DefaultImpls(userModule);
        }
    }

    void handle(View view, Function0<Unit> function0);
}
