.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;
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
    value = "SMAP\nCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPresenter.kt\nru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2\n*L\n1#1,527:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->call(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;"
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->getTur()Ljava/lang/String;

    move-result-object v0

    .line 497
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 498
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->getStatus()Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_WALLET:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    if-eq v0, v1, :cond_4

    .line 499
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getCardAddedPending$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->getPending()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_TUR:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->PENDING_ADD:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    :goto_3
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setStatus(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;)V

    .line 500
    :cond_4
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 501
    :cond_5
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getRxTapAndPay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/pay/google/RxTapAndPay;

    move-result-object v1

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1, v0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->getTokenStatus(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 502
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
