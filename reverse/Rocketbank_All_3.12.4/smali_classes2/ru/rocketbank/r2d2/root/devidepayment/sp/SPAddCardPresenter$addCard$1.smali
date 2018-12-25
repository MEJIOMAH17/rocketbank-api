.class final Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;
.super Ljava/lang/Object;
.source "SPAddCardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCard(Ljava/lang/String;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lru/rocketbank/core/network/model/androidpay/OpcResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;->call(Lru/rocketbank/core/network/model/androidpay/OpcResponse;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/androidpay/OpcResponse;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/androidpay/OpcResponse;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/pay/samsung/AddCardResult;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->access$getSpay$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)Lru/rocketbank/core/pay/samsung/RxSPay;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/OpcResponse;->getOpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/pay/samsung/RxSPay;->addCard(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
