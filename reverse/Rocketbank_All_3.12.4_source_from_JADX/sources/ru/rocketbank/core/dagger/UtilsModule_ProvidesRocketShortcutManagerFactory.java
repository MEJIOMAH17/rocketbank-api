package ru.rocketbank.core.dagger;

import android.content.Context;
import com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.RocketShortcutManager;

public final class UtilsModule_ProvidesRocketShortcutManagerFactory implements Provider<RocketShortcutManager> {
    private final Provider<Context> contextProvider;
    private final Builder module$7fc98512;

    public UtilsModule_ProvidesRocketShortcutManagerFactory(Builder builder, Provider<Context> provider) {
        this.module$7fc98512 = builder;
        this.contextProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Context context = (Context) this.contextProvider.get();
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new RocketShortcutManager(context);
    }
}
