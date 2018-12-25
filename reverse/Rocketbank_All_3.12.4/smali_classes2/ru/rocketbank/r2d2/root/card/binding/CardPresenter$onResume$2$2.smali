.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;->call(Lkotlin/Pair;)Lrx/Observable;
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
        "Ljava/lang/Throwable;",
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


# instance fields
.field final synthetic $account:Lru/rocketbank/core/model/facade/Account;

.field final synthetic $apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/facade/Account;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;->$account:Lru/rocketbank/core/model/facade/Account;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;->$apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;->call(Ljava/lang/Throwable;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Lkotlin/Triple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lkotlin/Triple<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance p1, Lkotlin/Triple;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;->$account:Lru/rocketbank/core/model/facade/Account;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$2;->$apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    new-instance v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;

    sget-object v3, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-direct {v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay$Status;)V

    invoke-direct {p1, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
