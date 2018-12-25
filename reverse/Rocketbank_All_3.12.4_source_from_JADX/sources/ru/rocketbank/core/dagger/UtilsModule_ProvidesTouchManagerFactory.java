package ru.rocketbank.core.dagger;

import android.content.Context;
import com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.security.TouchManagerImpl;
import ru.rocketbank.core.network.api.RocketAPI;

public final class UtilsModule_ProvidesTouchManagerFactory implements Provider<TouchManager> {
    private final Provider<Context> contextProvider;
    private final Builder module$7fc98512;
    private final Provider<RocketAPI> rocketAPIProvider;

    public UtilsModule_ProvidesTouchManagerFactory(Builder builder, Provider<RocketAPI> provider, Provider<Context> provider2) {
        this.module$7fc98512 = builder;
        this.rocketAPIProvider = provider;
        this.contextProvider = provider2;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
        Context context = (Context) this.contextProvider.get();
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new TouchManagerImpl(rocketAPI, context);
    }
}
