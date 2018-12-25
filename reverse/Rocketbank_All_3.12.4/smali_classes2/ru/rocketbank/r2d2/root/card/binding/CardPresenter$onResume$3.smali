.class public final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;
.super Lrx/Subscriber;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lkotlin/Triple<",
        "+",
        "Lru/rocketbank/core/model/facade/Account;",
        "+",
        "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
        "+",
        "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPresenter.kt\nru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3\n*L\n1#1,527:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CardPresenter"

    .line 335
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->hideLoader()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 320
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->onNext(Lkotlin/Triple;)V

    return-void
.end method

.method public final onNext(Lkotlin/Triple;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v2, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$setLastAccountModel$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/core/model/AccountModel;)V

    .line 329
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v2, v0, v1, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$onAccount(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V

    .line 331
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->hideLoader()V

    return-void

    :cond_1
    return-void
.end method
