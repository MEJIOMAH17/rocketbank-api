.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;
.super Ljava/lang/Object;
.source "OkHttpUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile internalClient:Lokhttp3/Call$Factory;


# instance fields
.field private client:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->getInternalClient()Lokhttp3/Call$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->client:Lokhttp3/Call$Factory;

    return-void
.end method

.method private static getInternalClient()Lokhttp3/Call$Factory;
    .locals 2

    .line 55
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    return-object v0
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;

    iget-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->client:Lokhttp3/Call$Factory;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;-><init>(Lokhttp3/Call$Factory;)V

    return-object p1
.end method
