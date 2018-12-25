package ru.rocketbank.r2d2.fragments.profile;

import java.util.Map;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request.Builder;
import okhttp3.Response;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$Companion$authInterceptor$1 implements Interceptor {
    public static final ProfileFragment$Companion$authInterceptor$1 INSTANCE = new ProfileFragment$Companion$authInterceptor$1();

    ProfileFragment$Companion$authInterceptor$1() {
    }

    public final Response intercept(Chain chain) {
        Builder newBuilder = chain.request().newBuilder();
        Map headers = RocketApplication.Companion.getInjector().getHeaderManager().getHeaders();
        for (String str : headers.keySet()) {
            newBuilder.addHeader(str, (String) headers.get(str));
        }
        return chain.proceed(newBuilder.build());
    }
}
