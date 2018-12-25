.class final Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;
.super Ljava/lang/Object;
.source "SPAddCardPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


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
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/pay/samsung/AddCardResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSPAddCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SPAddCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2\n*L\n1#1,60:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lru/rocketbank/core/pay/samsung/AddCardResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;->call(Lru/rocketbank/core/pay/samsung/AddCardResult;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/pay/samsung/AddCardResult;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->hideProgress()V

    .line 41
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->onCardAdded()V

    return-void

    :cond_0
    return-void
.end method
