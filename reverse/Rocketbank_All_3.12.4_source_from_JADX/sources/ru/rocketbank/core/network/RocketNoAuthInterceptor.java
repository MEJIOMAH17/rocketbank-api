package ru.rocketbank.core.network;

import java.util.Map.Entry;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request.Builder;
import okhttp3.Response;
import ru.rocketbank.core.manager.HeaderManager;

/* compiled from: RocketNoAuthInterceptor.kt */
public final class RocketNoAuthInterceptor implements Interceptor {
    private final HeaderManager headerManager;

    public RocketNoAuthInterceptor(HeaderManager headerManager) {
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
        for (Entry entry : this.headerManager.getHeaders().entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (!StringsKt__StringsJVMKt.equals(str, "Authorization", true)) {
                newBuilder.addHeader(str, str2);
            }
        }
        return chain.proceed(newBuilder.build());
    }
}
