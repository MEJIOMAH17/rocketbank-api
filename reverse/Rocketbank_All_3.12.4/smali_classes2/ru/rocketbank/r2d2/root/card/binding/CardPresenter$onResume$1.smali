.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onResume()V
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
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;->call(Lru/rocketbank/core/model/facade/Account;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/facade/Account;)Lrx/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/facade/Account;",
            ")",
            "Lrx/Observable<",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getAndroidPayWorks()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getPan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getCanUseAndroidPay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$refreshAndroidPay(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;-><init>(Lru/rocketbank/core/model/facade/Account;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 309
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;-><init>(Lru/rocketbank/core/model/facade/Account;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 310
    :cond_1
    new-instance v0, Lkotlin/Pair;

    new-instance v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    sget-object v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_WORKS:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    invoke-direct {v0, p1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
