.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;
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
        "Ljava/lang/Throwable;",
        "Lkotlin/Pair<",
        "+",
        "Lru/rocketbank/core/model/facade/Account;",
        "+",
        "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $account:Lru/rocketbank/core/model/facade/Account;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;->$account:Lru/rocketbank/core/model/facade/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;->call(Ljava/lang/Throwable;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1$2;->$account:Lru/rocketbank/core/model/facade/Account;

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

    invoke-direct {p1, v0, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
