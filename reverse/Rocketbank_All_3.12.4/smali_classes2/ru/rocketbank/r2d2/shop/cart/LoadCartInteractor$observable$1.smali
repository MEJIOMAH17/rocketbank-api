.class final Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;
.super Ljava/lang/Object;
.source "LoadCartInteractor.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->getObservable()Lrx/Observable;
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
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;)V"
        }
    .end annotation

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    new-instance v1, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v2

    invoke-direct {v1, v2}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;-><init>(Lru/rocketbank/core/network/api/ShopApi;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->setLoadShopItemsInteractor(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->getLoadShopItemsInteractor()Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->getObservable()Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/shop/CartStorage;->readObservable()Lrx/Observable;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;->INSTANCE:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;

    check-cast v2, Lrx/functions/Func2;

    invoke-static {v0, v1, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    .line 38
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 39
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 40
    new-instance v1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;-><init>(Lrx/Subscriber;)V

    check-cast v1, Lrx/functions/Action1;

    .line 53
    sget-object p1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$3;->INSTANCE:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$3;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    new-instance v2, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$sam$rx_functions_Action1$0;

    invoke-direct {v2, p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v2

    :cond_2
    check-cast p1, Lrx/functions/Action1;

    .line 40
    invoke-virtual {v0, v1, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
