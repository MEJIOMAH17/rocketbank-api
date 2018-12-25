.class public final Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;
.super Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;
.source "APAddCardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$Companion;

.field public static final TAG:Ljava/lang/String; = "APAddCardPresenter"


# instance fields
.field private getOpcSubscription:Lrx/Subscription;

.field private view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;-><init>()V

    .line 16
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getOpcSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getGetOpcSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lrx/Subscription;
    .locals 0

    .line 12
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getOpcSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;
    .locals 0

    .line 12
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    return-object p0
.end method

.method public static final synthetic access$setGetOpcSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;Lrx/Subscription;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getOpcSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    return-void
.end method


# virtual methods
.method public final getCardData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "cardToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lru/rocketbank/core/network/api/AndroidPayApi;->getOpcAndAddress(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object p1

    .line 28
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 29
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 30
    new-instance p2, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)V

    check-cast p2, Lrx/functions/Action1;

    .line 36
    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter$getCardData$2;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;)V

    check-cast v0, Lrx/functions/Action1;

    .line 30
    invoke-virtual {p1, p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->getOpcSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onAttach(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    .line 48
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;->onDestroy()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    return-void
.end method
