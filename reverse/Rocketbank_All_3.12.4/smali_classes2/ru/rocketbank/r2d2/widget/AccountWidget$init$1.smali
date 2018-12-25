.class final Lru/rocketbank/r2d2/widget/AccountWidget$init$1;
.super Ljava/lang/Object;
.source "AccountWidget.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widget/AccountWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getAuthorization$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/core/user/Authorization;

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/user/Authorization;->getAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$setAccounts$p(Lru/rocketbank/r2d2/widget/AccountWidget;Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getDefaultFilter$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$filterAccounts(Lru/rocketbank/r2d2/widget/AccountWidget;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
