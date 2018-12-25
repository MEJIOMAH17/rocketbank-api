package ru.rocketbank.core.network;

import com.facebook.internal.NativeProtocol;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request.Builder;
import okhttp3.Response;
import ru.rocketbank.core.manager.HeaderManager;

/* compiled from: RocketInterceptor.kt */
public final class RocketInterceptor implements Interceptor {
    private final HeaderManager headerManager;

    public RocketInterceptor(HeaderManager headerManager) {
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
        Map headers = this.headerManager.getHeaders();
        Function2 rocketInterceptor$intercept$1$1 = new RocketInterceptor$intercept$1$1(newBuilder);
        Intrinsics.checkParameterIsNotNull(headers, "$receiver");
        Intrinsics.checkParameterIsNotNull(rocketInterceptor$intercept$1$1, NativeProtocol.WEB_DIALOG_ACTION);
        for (Entry entry : headers.entrySet()) {
            rocketInterceptor$intercept$1$1.invoke(entry.getKey(), entry.getValue());
        }
        return chain.proceed(newBuilder.build());
    }
}
