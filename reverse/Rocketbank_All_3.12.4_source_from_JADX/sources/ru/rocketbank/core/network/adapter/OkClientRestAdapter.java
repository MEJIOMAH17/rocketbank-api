package ru.rocketbank.core.network.adapter;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit.Builder;
import retrofit2.converter.gson.GsonConverterFactory;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.network.Request;
import ru.rocketbank.core.network.RocketInterceptor;
import ru.rocketbank.core.network.rx.RxJavaCallAdapterFactory;
import ru.rocketbank.core.tls.Tls12SocketFactory;
import rx.schedulers.Schedulers;

/* compiled from: OkClientRestAdapter.kt */
public final class OkClientRestAdapter {
    private final HeaderManager headerManager;

    public OkClientRestAdapter(HeaderManager headerManager) {
        Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
        this.headerManager = headerManager;
    }

    public final HeaderManager getHeaderManager() {
        return this.headerManager;
    }

    public final Builder create() {
        OkHttpClient.Builder writeTimeout$7cf445d6 = new OkHttpClient.Builder().connectTimeout$7cf445d6(TimeUnit.SECONDS).readTimeout$7cf445d6(TimeUnit.SECONDS).writeTimeout$7cf445d6(TimeUnit.SECONDS);
        writeTimeout$7cf445d6.addInterceptor(new RocketInterceptor(this.headerManager));
        RxJavaCallAdapterFactory createWithScheduler = RxJavaCallAdapterFactory.createWithScheduler(Schedulers.io());
        BaseRocketApplication context = BaseRocketApplication.getContext();
        Builder client = new Builder().baseUrl(Request.LINK_API).addConverterFactory(GsonConverterFactory.create(context != null ? context.getGson() : null)).addCallAdapterFactory(createWithScheduler).client(Tls12SocketFactory.enableTls12OnPreLollipop(writeTimeout$7cf445d6).build());
        Intrinsics.checkExpressionValueIsNotNull(client, "Retrofit.Builder()\n     …p(clientBuilder).build())");
        return client;
    }
}
