.class public final Lru/rocketbank/core/network/RocketInterceptor;
.super Ljava/lang/Object;
.source "RocketInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketInterceptor.kt\nru/rocketbank/core/network/RocketInterceptor\n*L\n1#1,24:1\n*E\n"
.end annotation


# instance fields
.field private final headerManager:Lru/rocketbank/core/manager/HeaderManager;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 1

    const-string v0, "headerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/RocketInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method


# virtual methods
.method public final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/RocketInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-object v0
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lru/rocketbank/core/network/RocketInterceptor;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/HeaderManager;->getHeaders()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/RocketInterceptor$intercept$1$1;

    invoke-direct {v2, v0}, Lru/rocketbank/core/network/RocketInterceptor$intercept$1$1;-><init>(Lokhttp3/Request$Builder;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const-string v3, "$receiver"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "action"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1009
    invoke-interface {v2, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
