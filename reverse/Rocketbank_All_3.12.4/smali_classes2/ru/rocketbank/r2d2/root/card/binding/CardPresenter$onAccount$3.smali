.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CardPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onAccount(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->createAndroidPayPWallet()V

    :cond_0
    return-void
.end method
