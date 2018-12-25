.class public final Lru/rocketbank/core/network/image/ImageLoading;
.super Ljava/lang/Object;
.source "ImageLoading.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/network/image/ImageLoading;

.field private static authInterceptor:Lokhttp3/Interceptor;

.field public static headerManager:Lru/rocketbank/core/manager/HeaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lru/rocketbank/core/network/image/ImageLoading;

    invoke-direct {v0}, Lru/rocketbank/core/network/image/ImageLoading;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/image/ImageLoading;->INSTANCE:Lru/rocketbank/core/network/image/ImageLoading;

    .line 18
    sget-object v0, Lru/rocketbank/core/network/image/ImageLoading$authInterceptor$1;->INSTANCE:Lru/rocketbank/core/network/image/ImageLoading$authInterceptor$1;

    check-cast v0, Lokhttp3/Interceptor;

    sput-object v0, Lru/rocketbank/core/network/image/ImageLoading;->authInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthInterceptor()Lokhttp3/Interceptor;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/core/network/image/ImageLoading;->authInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 2

    .line 16
    sget-object v0, Lru/rocketbank/core/network/image/ImageLoading;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    if-nez v0, :cond_0

    const-string v1, "headerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 40
    sget-object v1, Lru/rocketbank/core/network/image/ImageLoading;->authInterceptor:Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    .line 43
    const-class v1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v2, Ljava/io/InputStream;

    new-instance v3, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    invoke-direct {v3, v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    check-cast v3, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    invoke-virtual {p1, v1, v2, v3}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    return-void
.end method

.method public final setAuthInterceptor(Lokhttp3/Interceptor;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sput-object p1, Lru/rocketbank/core/network/image/ImageLoading;->authInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method public final setHeaderManager(Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sput-object p1, Lru/rocketbank/core/network/image/ImageLoading;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method
