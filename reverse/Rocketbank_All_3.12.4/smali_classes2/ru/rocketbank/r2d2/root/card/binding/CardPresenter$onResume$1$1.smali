.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;->call(Lru/rocketbank/core/model/facade/Account;)Lrx/Observable;
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


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;->$account:Lru/rocketbank/core/model/facade/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;->call(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ")",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$1;->$account:Lru/rocketbank/core/model/facade/Account;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
