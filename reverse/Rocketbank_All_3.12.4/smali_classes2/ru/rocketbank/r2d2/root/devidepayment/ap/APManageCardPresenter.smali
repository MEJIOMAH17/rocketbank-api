.class public final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;
.super Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;
.source "APManageCardPresenter.kt"


# instance fields
.field private tur:Ljava/lang/String;

.field private view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;
    .locals 0

    .line 10
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    return-object p0
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    return-void
.end method


# virtual methods
.method public final deleteTur()V
    .locals 3

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;->showProgress()V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->tur:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v2, "tur"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/AndroidPayApi;->deactivate(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 31
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 32
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 33
    new-instance v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    .line 38
    new-instance v2, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$2;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;)V

    check-cast v2, Lrx/functions/Action1;

    .line 33
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final onAttach(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    return-void
.end method

.method public final onCreate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->tur:Ljava/lang/String;

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    return-void
.end method
