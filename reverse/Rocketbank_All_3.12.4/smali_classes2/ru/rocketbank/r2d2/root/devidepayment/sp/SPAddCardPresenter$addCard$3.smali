.class final Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSPAddCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SPAddCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3\n*L\n1#1,60:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;->this$0:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->hideProgress()V

    .line 46
    instance-of p1, p1, Lru/rocketbank/core/pay/samsung/SamsungPayException;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->onUserCancelled()V

    return-void

    :cond_0
    const-string p1, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    .line 49
    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->onErrorAddCard(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method
