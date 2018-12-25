package ru.rocketbank.core.dagger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient.Builder;
import retrofit2.CallAdapter.Factory;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.model.migration.Migration.CityList;
import ru.rocketbank.core.model.migration.Migration.CityList.Deserializer;
import ru.rocketbank.core.network.Request;
import ru.rocketbank.core.network.RocketNoAuthInterceptor;
import ru.rocketbank.core.network.RocketWidgetInterceptor;
import ru.rocketbank.core.network.adapter.FeedDeserializer;
import ru.rocketbank.core.network.adapter.FriendsTypeDeserializer;
import ru.rocketbank.core.network.adapter.GeoObjectListAdapterDeserializer;
import ru.rocketbank.core.network.adapter.LimitDeserializer;
import ru.rocketbank.core.network.adapter.OperationTypeContextDeserializer;
import ru.rocketbank.core.network.model.NanoFeedResult.Feed;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.network.rx.RxJavaCallAdapterFactory;
import rx.schedulers.Schedulers;

/* compiled from: RetrofitModule.kt */
public final class RetrofitModule {
    public static Retrofit provideRetrofitForYandex() {
        Gson create = new GsonBuilder().registerTypeAdapter(new RetrofitModule$provideRetrofitForYandex$gson$1().getType(), new GeoObjectListAdapterDeserializer()).create();
        Builder writeTimeout$7cf445d6 = new Builder().connectTimeout$7cf445d6(TimeUnit.SECONDS).readTimeout$7cf445d6(TimeUnit.SECONDS).writeTimeout$7cf445d6(TimeUnit.SECONDS);
        RxJavaCallAdapterFactory create2 = RxJavaCallAdapterFactory.create();
        Retrofit build = new Retrofit.Builder().baseUrl(Request.LINK__GEO_YANDEX_API).addConverterFactory(GsonConverterFactory.create(create)).addCallAdapterFactory(create2).client(writeTimeout$7cf445d6.build()).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "Retrofit.Builder()\n     …\n                .build()");
        return build;
    }

    public static Retrofit provideRetrofitAdapterNoAuth(HeaderManager headerManager) {
        Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
        Gson create = new GsonBuilder().registerTypeAdapter(new RetrofitModule$provideRetrofitAdapterNoAuth$gson$1().getType(), new LimitDeserializer()).registerTypeAdapter(Feed.class, new FeedDeserializer()).registerTypeAdapter(FriendRequestType.class, new FriendsTypeDeserializer()).registerTypeAdapter(CityList.class, new Deserializer()).create();
        Builder writeTimeout$7cf445d6 = new Builder().connectTimeout$7cf445d6(TimeUnit.SECONDS).readTimeout$7cf445d6(TimeUnit.SECONDS).writeTimeout$7cf445d6(TimeUnit.SECONDS);
        writeTimeout$7cf445d6.networkInterceptors().add(new RocketNoAuthInterceptor(headerManager));
        headerManager = RxJavaCallAdapterFactory.createWithScheduler(Schedulers.io());
        headerManager = new Retrofit.Builder().baseUrl(Request.LINK_API).addConverterFactory(GsonConverterFactory.create(create)).addCallAdapterFactory((Factory) headerManager).client(writeTimeout$7cf445d6.build()).build();
        Intrinsics.checkExpressionValueIsNotNull(headerManager, "Retrofit.Builder()\n     …\n                .build()");
        return headerManager;
    }

    public static Retrofit provideRetorofitAdapterWidget(HeaderManager headerManager) {
        Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
        Gson create = new GsonBuilder().registerTypeAdapter(new RetrofitModule$provideRetorofitAdapterWidget$gson$1().getType(), new LimitDeserializer()).registerTypeAdapter(Feed.class, new FeedDeserializer()).registerTypeAdapter(FriendRequestType.class, new FriendsTypeDeserializer()).registerTypeAdapter(OperationContextType.class, new OperationTypeContextDeserializer()).registerTypeAdapter(CityList.class, new Deserializer()).create();
        Builder writeTimeout$7cf445d6 = new Builder().connectTimeout$7cf445d6(TimeUnit.SECONDS).readTimeout$7cf445d6(TimeUnit.SECONDS).writeTimeout$7cf445d6(TimeUnit.SECONDS);
        writeTimeout$7cf445d6.networkInterceptors().add(new RocketWidgetInterceptor(headerManager));
        headerManager = RxJavaCallAdapterFactory.createWithScheduler(Schedulers.io());
        headerManager = new Retrofit.Builder().baseUrl(Request.LINK_API).addConverterFactory(GsonConverterFactory.create(create)).addCallAdapterFactory((Factory) headerManager).client(writeTimeout$7cf445d6.build()).build();
        Intrinsics.checkExpressionValueIsNotNull(headerManager, "Retrofit.Builder()\n     …\n                .build()");
        return headerManager;
    }
}
