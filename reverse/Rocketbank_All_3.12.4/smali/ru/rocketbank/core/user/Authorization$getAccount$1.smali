.class final Lru/rocketbank/core/user/Authorization$getAccount$1;
.super Ljava/lang/Object;
.source "Authorization.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/Authorization;->getAccount(Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/user/Authorization;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/Authorization;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization$getAccount$1;->this$0:Lru/rocketbank/core/user/Authorization;

    iput-object p2, p0, Lru/rocketbank/core/user/Authorization$getAccount$1;->$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 29
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    .line 1099
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization$getAccount$1;->this$0:Lru/rocketbank/core/user/Authorization;

    const-string v1, "userModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/user/Authorization$getAccount$1;->$token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/core/user/Authorization;->getAccountImmediate(Lru/rocketbank/core/model/UserModel;Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lru/rocketbank/core/exceptions/NoAccountException;

    iget-object v0, p0, Lru/rocketbank/core/user/Authorization$getAccount$1;->$token:Ljava/lang/String;

    invoke-direct {p1, v0}, Lru/rocketbank/core/exceptions/NoAccountException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_0
    return-object p1
.end method
