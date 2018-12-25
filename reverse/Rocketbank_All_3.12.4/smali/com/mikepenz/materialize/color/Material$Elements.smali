.class public final Lcom/mikepenz/materialize/color/Material$Elements;
.super Ljava/lang/Object;
.source "Material.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/color/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elements"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialize/color/Material$Elements$Dark;,
        Lcom/mikepenz/materialize/color/Material$Elements$Light;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/FireCMManager;",
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

.field private final headerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module$11baabfc:Lcom/mikepenz/materialize/color/Material;

.field private final rocketAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialize/color/Material;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialize/color/Material;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;)V"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/mikepenz/materialize/color/Material$Elements;->module$11baabfc:Lcom/mikepenz/materialize/color/Material;

    .line 1027
    iput-object p2, p0, Lcom/mikepenz/materialize/color/Material$Elements;->authorizationProvider:Ljavax/inject/Provider;

    .line 1028
    iput-object p3, p0, Lcom/mikepenz/materialize/color/Material$Elements;->rocketAPIProvider:Ljavax/inject/Provider;

    .line 1029
    iput-object p4, p0, Lcom/mikepenz/materialize/color/Material$Elements;->headerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 5

    .line 2034
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Elements;->authorizationProvider:Ljavax/inject/Provider;

    .line 2036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lcom/mikepenz/materialize/color/Material$Elements;->rocketAPIProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v2, p0, Lcom/mikepenz/materialize/color/Material$Elements;->headerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/manager/HeaderManager;

    const-string v3, "authorization"

    .line 2035
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rocketAPI"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headerManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MessageModule"

    const-string v4, "Creating FireCMManager"

    .line 3021
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    new-instance v3, Lru/rocketbank/core/manager/FireCMManager;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/manager/FireCMManager;-><init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/RocketAPI;Lru/rocketbank/core/manager/HeaderManager;)V

    .line 2034
    check-cast v3, Lru/rocketbank/core/manager/FireCMManager;

    return-object v3
.end method
