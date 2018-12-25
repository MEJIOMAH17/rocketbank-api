.class public final Lru/rocketbank/core/manager/social/FacebookImpl;
.super Ljava/lang/Object;
.source "FacebookImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/social/SocialNet;


# instance fields
.field private final callbackMan:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    const-string v1, "CallbackManager.Factory.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/social/FacebookImpl;->callbackMan:Lcom/facebook/CallbackManager;

    .line 23
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final authorize(Landroid/support/v4/app/Fragment;Lru/rocketbank/core/manager/social/SocialNetCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lru/rocketbank/core/manager/social/SocialNetCallback<",
            "Lru/rocketbank/core/manager/social/SocialUserModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/social/FacebookImpl;->callbackMan:Lcom/facebook/CallbackManager;

    new-instance v2, Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;

    invoke-direct {v2, p2}, Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;-><init>(Lru/rocketbank/core/manager/social/SocialNetCallback;)V

    check-cast v2, Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 51
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "public_profile"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    return-void
.end method

.method public final getAvatarID()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/manager/social/FacebookImpl;->callbackMan:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method
