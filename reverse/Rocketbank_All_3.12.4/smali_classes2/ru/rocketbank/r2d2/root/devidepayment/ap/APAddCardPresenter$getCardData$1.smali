.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;
.super Ljava/lang/Object;
.source "APAddCardPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getCardData(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/androidpay/OpcResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPAddCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APAddCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1\n*L\n1#1,54:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/network/model/androidpay/OpcResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;->call(Lru/rocketbank/core/network/model/androidpay/OpcResponse;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/androidpay/OpcResponse;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/OpcResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/OpcResponse;->getPostIndex()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/androidpay/OpcResponse;->getOpc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;->onCardDataReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;->hideProgress()V

    .line 35
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->access$getGetOpcSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
