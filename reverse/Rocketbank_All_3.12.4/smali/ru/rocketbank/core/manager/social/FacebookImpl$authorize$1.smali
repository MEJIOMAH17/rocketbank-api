.class public final Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;
.super Ljava/lang/Object;
.source "FacebookImpl.kt"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/social/FacebookImpl;->authorize(Landroid/support/v4/app/Fragment;Lru/rocketbank/core/manager/social/SocialNetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFacebookImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookImpl.kt\nru/rocketbank/core/manager/social/FacebookImpl$authorize$1\n*L\n1#1,68:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lru/rocketbank/core/manager/social/SocialNetCallback;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/social/SocialNetCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;->$callback:Lru/rocketbank/core/manager/social/SocialNetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;->$callback:Lru/rocketbank/core/manager/social/SocialNetCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/social/SocialNetCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 37
    check-cast p1, Lcom/facebook/login/LoginResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v0, Lru/rocketbank/core/manager/social/SocialUserModel;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "result.accessToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "result.accessToken.token"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const-string v2, "result.accessToken"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "result.accessToken.userId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lru/rocketbank/core/manager/social/SocialUserModel;-><init>(JLjava/lang/String;B)V

    .line 1044
    iget-object p1, p0, Lru/rocketbank/core/manager/social/FacebookImpl$authorize$1;->$callback:Lru/rocketbank/core/manager/social/SocialNetCallback;

    invoke-interface {p1, v0}, Lru/rocketbank/core/manager/social/SocialNetCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
