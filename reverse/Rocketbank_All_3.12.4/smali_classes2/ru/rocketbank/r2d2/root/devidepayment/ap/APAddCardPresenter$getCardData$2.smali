.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPAddCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APAddCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2\n*L\n1#1,54:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->access$getGetOpcSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;->hideProgress()V

    const-string v1, "\u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a \u00af\\_(\u30c4)_/\u00af"

    .line 40
    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;->showError(Ljava/lang/String;)V

    .line 42
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
