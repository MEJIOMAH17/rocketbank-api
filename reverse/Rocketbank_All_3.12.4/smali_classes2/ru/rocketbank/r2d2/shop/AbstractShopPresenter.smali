.class public Lru/rocketbank/r2d2/shop/AbstractShopPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "AbstractShopPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopPresenterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lru/rocketbank/r2d2/shop/ShopViewInterface;",
        ">",
        "Lru/rocketbank/core/utils/presenter/Presenter;",
        "Lru/rocketbank/r2d2/shop/ShopPresenterInterface;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractShopPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractShopPresenter.kt\nru/rocketbank/r2d2/shop/AbstractShopPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1519#2,2:46\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractShopPresenter.kt\nru/rocketbank/r2d2/shop/AbstractShopPresenter\n*L\n31#1,2:46\n*E\n"
.end annotation


# instance fields
.field private final cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

.field private final interactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/utils/Interactor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final shopApi:Lru/rocketbank/core/network/api/ShopApi;

.field private final subscriptions:Lrx/subscriptions/CompositeSubscription;

.field private view:Lru/rocketbank/r2d2/shop/ShopViewInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 15
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    .line 17
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->interactors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addInteractor(Lru/rocketbank/core/utils/Interactor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/utils/Interactor<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "interactor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->interactors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final addSubscription(Lrx/Subscription;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method protected final getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    return-object v0
.end method

.method protected final getShopApi()Lru/rocketbank/core/network/api/ShopApi;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    return-object v0
.end method

.method public final getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->view:Lru/rocketbank/r2d2/shop/ShopViewInterface;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 36
    invoke-super {p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroy()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->view:Lru/rocketbank/r2d2/shop/ShopViewInterface;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 29
    invoke-super {p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onPause()V

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->interactors:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/utils/Interactor;

    .line 31
    invoke-virtual {v1}, Lru/rocketbank/core/utils/Interactor;->unsubscribe()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->interactors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setView(Lru/rocketbank/r2d2/shop/ShopViewInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->view:Lru/rocketbank/r2d2/shop/ShopViewInterface;

    return-void
.end method

.method protected final unsubscribe(Lru/rocketbank/core/utils/Interactor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/utils/Interactor<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lru/rocketbank/core/utils/Interactor;->unsubscribe()V

    .line 25
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->interactors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unsubscribe(Lrx/Subscription;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
