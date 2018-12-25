.class public final Lru/rocketbank/core/network/RocketWidgetInterceptor;
.super Ljava/lang/Object;
.source "RocketNoAuthInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketNoAuthInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketNoAuthInterceptor.kt\nru/rocketbank/core/network/RocketWidgetInterceptor\n*L\n1#1,46:1\n*E\n"
.end annotation


# instance fields
.field private final headerManager:Lru/rocketbank/core/manager/HeaderManager;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 1

    const-string v0, "headerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/RocketWidgetInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method


# virtual methods
.method public final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/network/RocketWidgetInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-object v0
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lru/rocketbank/core/network/RocketWidgetInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/HeaderManager;->getAuthStorage()Lru/rocketbank/core/user/AuthorizationStorage;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lru/rocketbank/core/network/RocketWidgetInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-virtual {v2}, Lru/rocketbank/core/manager/HeaderManager;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "Authorization"

    const/4 v6, 0x1

    .line 33
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 34
    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$widgetToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Authorization"

    const-string v5, "Token token="

    .line 37
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
