.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;
.super Ljava/lang/Object;
.source "APAddCardActivity.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->onCardAddClicked(Ljava/lang/String;)V
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
.field final synthetic $cardToken:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;->$cardToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;->call(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final call(Ljava/lang/String;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;->$cardToken:Ljava/lang/String;

    const-string v2, "PROD"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getCardData(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
