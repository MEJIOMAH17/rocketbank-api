.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;
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

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;->call(Lkotlin/Pair;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lkotlin/Pair;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;)",
            "Lrx/Observable<",
            "Lkotlin/Triple<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    .line 314
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getRxSpay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/pay/samsung/RxSPay;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/AccountModel;->getPan()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    :cond_1
    invoke-virtual {v1, v2}, Lru/rocketbank/core/pay/samsung/RxSPay;->checkCard(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 315
    new-instance v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;

    invoke-direct {v2, v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;-><init>(Lru/rocketbank/core/model/facade/Account;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 316
    new-instance v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;

    invoke-direct {v2, v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;-><init>(Lru/rocketbank/core/model/facade/Account;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
