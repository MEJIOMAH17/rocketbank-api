.class public final Lcom/mikepenz/materialize/R$id;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/FeedManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorizationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;"
        }
    .end annotation
.end field

.field private final feedLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/loader/FeedLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final module$5773aa63:Lcom/mikepenz/materialize/R$color;

.field private final operationApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/OperationApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialize/R$color;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialize/R$color;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/OperationApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/loader/FeedLoader;",
            ">;)V"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/mikepenz/materialize/R$id;->module$5773aa63:Lcom/mikepenz/materialize/R$color;

    .line 1027
    iput-object p2, p0, Lcom/mikepenz/materialize/R$id;->authorizationProvider:Ljavax/inject/Provider;

    .line 1028
    iput-object p3, p0, Lcom/mikepenz/materialize/R$id;->operationApiProvider:Ljavax/inject/Provider;

    .line 1029
    iput-object p4, p0, Lcom/mikepenz/materialize/R$id;->feedLoaderProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .line 2034
    iget-object v0, p0, Lcom/mikepenz/materialize/R$id;->authorizationProvider:Ljavax/inject/Provider;

    .line 2036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lcom/mikepenz/materialize/R$id;->operationApiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/OperationApi;

    iget-object v2, p0, Lcom/mikepenz/materialize/R$id;->feedLoaderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/manager/loader/FeedLoader;

    const-string v3, "authorization"

    .line 2035
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "operationApi"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "feedLoader"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    new-instance v3, Lru/rocketbank/core/manager/FeedManager;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/manager/FeedManager;-><init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/OperationApi;Lru/rocketbank/core/manager/loader/FeedLoader;)V

    .line 2034
    check-cast v3, Lru/rocketbank/core/manager/FeedManager;

    return-object v3
.end method
