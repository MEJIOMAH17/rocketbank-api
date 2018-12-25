.class public final Lru/rocketbank/core/network/adapter/OkClientRestAdapter;
.super Ljava/lang/Object;
.source "OkClientRestAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkClientRestAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkClientRestAdapter.kt\nru/rocketbank/core/network/adapter/OkClientRestAdapter\n*L\n1#1,51:1\n*E\n"
.end annotation


# instance fields
.field private final headerManager:Lru/rocketbank/core/manager/HeaderManager;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 1

    const-string v0, "headerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method


# virtual methods
.method public final create()Lretrofit2/Retrofit$Builder;
    .locals 5

    .line 21
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 22
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 24
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout$7cf445d6(Ljava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 26
    new-instance v1, Lru/rocketbank/core/network/RocketInterceptor;

    iget-object v2, p0, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-direct {v1, v2}, Lru/rocketbank/core/network/RocketInterceptor;-><init>(Lru/rocketbank/core/manager/HeaderManager;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    move-result-object v1

    .line 36
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/BaseRocketApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    .line 44
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 45
    sget-object v4, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 46
    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v3, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 47
    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 48
    invoke-static {v0}, Lru/rocketbank/core/tls/Tls12SocketFactory;->enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "Retrofit.Builder()\n     \u2026p(clientBuilder).build())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-object v0
.end method
