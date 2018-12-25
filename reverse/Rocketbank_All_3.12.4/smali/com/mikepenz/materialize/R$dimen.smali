.class public final Lcom/mikepenz/materialize/R$dimen;
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
    name = "dimen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/loader/FeedLoader;",
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
.method public constructor <init>(Lcom/mikepenz/materialize/R$color;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lcom/mikepenz/materialize/R$dimen;->module$5773aa63:Lcom/mikepenz/materialize/R$color;

    .line 1023
    iput-object p2, p0, Lcom/mikepenz/materialize/R$dimen;->authorizationProvider:Ljavax/inject/Provider;

    .line 1024
    iput-object p3, p0, Lcom/mikepenz/materialize/R$dimen;->operationApiProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    .line 2029
    iget-object v0, p0, Lcom/mikepenz/materialize/R$dimen;->authorizationProvider:Ljavax/inject/Provider;

    .line 2030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lcom/mikepenz/materialize/R$dimen;->operationApiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/OperationApi;

    const-string v2, "authorization"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operationApi"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3023
    new-instance v2, Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/manager/loader/FeedLoader;-><init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/OperationApi;)V

    .line 2029
    check-cast v2, Lru/rocketbank/core/manager/loader/FeedLoader;

    return-object v2
.end method
