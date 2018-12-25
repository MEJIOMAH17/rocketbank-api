.class public final Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private final optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

.field private final requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

.field private final treeNode$18af5158:Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/support/v4/os/BuildCompat;

    invoke-direct {v0}, Landroid/support/v4/os/BuildCompat;-><init>()V

    new-instance v1, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Landroid/support/v4/content/Loader$OnLoadCompleteListener;Landroid/support/v4/os/BuildCompat;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Landroid/support/v4/content/Loader$OnLoadCompleteListener;Landroid/support/v4/os/BuildCompat;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->treeNode$18af5158:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 63
    iput-object p0, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    .line 65
    new-instance p3, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p3, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Landroid/support/v4/os/BuildCompat;)V

    invoke-static {p1, p3}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 72
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {p4, p0, p2}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 81
    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    return-object p0
.end method

.method static synthetic access$300$19e0be56(Lcom/bumptech/glide/RequestManager;)Landroid/support/v4/os/BuildCompat;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    return-object p0
.end method

.method static synthetic access$500$3040749e(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    return-object p0
.end method

.method private loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    if-eqz p1, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v7, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    iget-object v8, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v9, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroid/support/v4/os/BuildCompat;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager;)V

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method


# virtual methods
.method public final load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2339
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public final load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public final load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    .line 466
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 598
    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public final load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    invoke-virtual {v0}, Landroid/support/v4/os/BuildCompat;->clearRequests()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1179
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 1180
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    invoke-virtual {v0}, Landroid/support/v4/os/BuildCompat;->resumeRequests()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 2147
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 2148
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    invoke-virtual {v0}, Landroid/support/v4/os/BuildCompat;->pauseRequests()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public final using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method
