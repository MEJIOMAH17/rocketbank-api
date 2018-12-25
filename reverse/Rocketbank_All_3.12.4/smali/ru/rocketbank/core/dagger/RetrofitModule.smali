.class public final Lru/rocketbank/core/dagger/RetrofitModule;
.super Ljava/lang/Object;
.source "RetrofitModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetrofitModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitModule.kt\nru/rocketbank/core/dagger/RetrofitModule\n*L\n1#1,145:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideRetorofitAdapterWidget(Lru/rocketbank/core/manager/HeaderManager;)Lretrofit2/Retrofit;
    .locals 4

    const-string v0, "headerManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 107
    new-instance v1, Lru/rocketbank/core/dagger/RetrofitModule$provideRetorofitAdapterWidget$gson$1;

    invoke-direct {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetorofitAdapterWidget$gson$1;-><init>()V

    invoke-virtual {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetorofitAdapterWidget$gson$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/adapter/LimitDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/LimitDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 108
    const-class v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/FeedDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FeedDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 109
    const-class v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 110
    const-class v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 111
    const-class v1, Lru/rocketbank/core/model/migration/Migration$CityList;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;

    invoke-direct {v2}, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 116
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 117
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 118
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 119
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 123
    new-instance v2, Lru/rocketbank/core/network/RocketWidgetInterceptor;

    invoke-direct {v2, p0}, Lru/rocketbank/core/network/RocketWidgetInterceptor;-><init>(Lru/rocketbank/core/manager/HeaderManager;)V

    .line 124
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p0

    invoke-static {p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    move-result-object p0

    .line 136
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    .line 137
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 138
    sget-object v3, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 139
    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 140
    check-cast p0, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 141
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string v0, "Retrofit.Builder()\n     \u2026\n                .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static provideRetrofitAdapterNoAuth(Lru/rocketbank/core/manager/HeaderManager;)Lretrofit2/Retrofit;
    .locals 4

    const-string v0, "headerManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 73
    new-instance v1, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitAdapterNoAuth$gson$1;

    invoke-direct {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitAdapterNoAuth$gson$1;-><init>()V

    invoke-virtual {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitAdapterNoAuth$gson$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/adapter/LimitDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/LimitDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 74
    const-class v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/FeedDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FeedDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 75
    const-class v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 76
    const-class v1, Lru/rocketbank/core/model/migration/Migration$CityList;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;

    invoke-direct {v2}, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 79
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 82
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lru/rocketbank/core/network/RocketNoAuthInterceptor;

    invoke-direct {v3, p0}, Lru/rocketbank/core/network/RocketNoAuthInterceptor;-><init>(Lru/rocketbank/core/manager/HeaderManager;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p0

    invoke-static {p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    move-result-object p0

    .line 94
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    .line 95
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 96
    sget-object v3, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 97
    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 98
    check-cast p0, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string v0, "Retrofit.Builder()\n     \u2026\n                .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static provideRetrofitForYandex()Lretrofit2/Retrofit;
    .locals 5

    .line 50
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 51
    new-instance v1, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitForYandex$gson$1;

    invoke-direct {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitForYandex$gson$1;-><init>()V

    invoke-virtual {v1}, Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitForYandex$gson$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/adapter/GeoObjectListAdapterDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/GeoObjectListAdapterDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 54
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 55
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 56
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 57
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 59
    invoke-static {}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->create()Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    move-result-object v2

    .line 60
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    .line 61
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v4, "https://geocode-maps.yandex.ru/"

    .line 62
    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 63
    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {v3, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 64
    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Retrofit.Builder()\n     \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
