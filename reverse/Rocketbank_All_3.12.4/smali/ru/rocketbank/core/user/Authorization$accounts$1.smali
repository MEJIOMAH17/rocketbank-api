.class final Lru/rocketbank/core/user/Authorization$accounts$1;
.super Ljava/lang/Object;
.source "Authorization.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/Authorization;->getAccounts()Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/core/user/Authorization;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization$accounts$1;->this$0:Lru/rocketbank/core/user/Authorization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    const-string v0, "it"

    .line 1129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/user/Authorization;->getAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
