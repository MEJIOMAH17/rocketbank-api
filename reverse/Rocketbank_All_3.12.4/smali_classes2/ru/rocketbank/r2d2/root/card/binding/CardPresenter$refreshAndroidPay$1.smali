.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshAndroidPay()Lrx/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPresenter.kt\nru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1\n*L\n1#1,527:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v8, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    sget-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    const-string v0, "walletId"

    .line 486
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 487
    sget-object p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_WALLET:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v8, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setStatus(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;)V

    .line 488
    invoke-static {v8}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 489
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getAndroidPayApi$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/network/api/AndroidPayApi;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getPlasticToken$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/AndroidPayApi;->getTokenByWalletId(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 490
    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;

    invoke-direct {v0, v8}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
