.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;->call(Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic $result:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;->$result:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/network/model/androidpay/TurResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;->call(Lru/rocketbank/core/network/model/androidpay/TurResponse;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/androidpay/TurResponse;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;
    .locals 2

    .line 491
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;->$result:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/TurResponse;->getTur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setTur(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;->$result:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/TurResponse;->getPending()Z

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setPending(Z)V

    .line 493
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1$1;->$result:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    return-object p1
.end method
