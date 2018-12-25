package ru.rocketbank.core.network;

import java.util.Map.Entry;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request.Builder;
import okhttp3.Response;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.realm.UserData;

/* compiled from: RocketNoAuthInterceptor.kt */
public final class RocketWidgetInterceptor implements Interceptor {
    private final HeaderManager headerManager;

    public RocketWidgetInterceptor(HeaderManager headerManager) {
        Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
        this.headerManager = headerManager;
    }

    public final HeaderManager getHeaderManager() {
        return this.headerManager;
    }

    public final Response intercept(Chain chain) {
        if (chain == null) {
            return null;
        }
        Builder newBuilder = chain.request().newBuilder();
        UserData state = this.headerManager.getAuthStorage().getState();
        for (Entry entry : this.headerManager.getHeaders().entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (StringsKt__StringsJVMKt.equals(str, "Authorization", true)) {
                str2 = state.realmGet$widgetToken();
                if (str2 != null) {
                    newBuilder.addHeader("Authorization", "Token token=".concat(String.valueOf(str2)));
                }
            } else {
                newBuilder.addHeader(str, str2);
            }
        }
        return chain.proceed(newBuilder.build());
    }
}
