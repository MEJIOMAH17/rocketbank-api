.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $account:Lru/rocketbank/core/model/facade/Account;

.field final synthetic $apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/facade/Account;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;->$account:Lru/rocketbank/core/model/facade/Account;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;->$apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;->call(Lru/rocketbank/core/pay/samsung/RxSPay$Status;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/pay/samsung/RxSPay$Status;)Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/pay/samsung/RxSPay$Status;",
            ")",
            "Lkotlin/Triple<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Lkotlin/Triple;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;->$account:Lru/rocketbank/core/model/facade/Account;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2$1;->$apCheckResult:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    new-instance v3, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;

    const-string v4, "it"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay$Status;)V

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
