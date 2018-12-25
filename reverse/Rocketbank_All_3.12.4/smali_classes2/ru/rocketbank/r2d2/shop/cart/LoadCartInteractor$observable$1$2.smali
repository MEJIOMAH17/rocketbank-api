.class final Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;
.super Ljava/lang/Object;
.source "LoadCartInteractor.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;->call(Lrx/Subscriber;)V
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/shop/ShopItem;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/realm/RealmCartItem;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadCartInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadCartInteractor.kt\nru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1246#2:58\n1315#2,3:59\n*E\n*S KotlinDebug\n*F\n+ 1 LoadCartInteractor.kt\nru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2\n*L\n44#1:58\n44#1,3:59\n*E\n"
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;->call(Lkotlin/Pair;)V

    return-void
.end method

.method public final call(Lkotlin/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;+",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v1, "realmCartItems"

    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lru/rocketbank/core/realm/RealmCartItem;

    .line 1013
    invoke-virtual {v2}, Lru/rocketbank/core/realm/RealmCartItem;->realmGet$storeItemId()J

    move-result-wide v3

    const-string v5, "storeItems"

    .line 46
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {v8}, Lru/rocketbank/core/model/shop/ShopItem;->getId()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_0

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    check-cast v6, Lru/rocketbank/core/model/shop/ShopItem;

    if-eqz v6, :cond_5

    .line 47
    new-instance v3, Lru/rocketbank/core/model/shop/CartItem;

    .line 2012
    invoke-virtual {v2}, Lru/rocketbank/core/realm/RealmCartItem;->realmGet$id()J

    move-result-wide v4

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2014
    invoke-virtual {v2}, Lru/rocketbank/core/realm/RealmCartItem;->realmGet$sizeID()Lru/rocketbank/core/realm/RealmString;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2026
    invoke-virtual {v5}, Lru/rocketbank/core/realm/RealmString;->realmGet$string()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v7

    .line 47
    :goto_3
    invoke-virtual {v6, v5}, Lru/rocketbank/core/model/shop/ShopItem;->findSize(Ljava/lang/String;)Lru/rocketbank/core/model/shop/Size;

    move-result-object v5

    .line 3015
    invoke-virtual {v2}, Lru/rocketbank/core/realm/RealmCartItem;->realmGet$colorID()Lru/rocketbank/core/realm/RealmString;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3026
    invoke-virtual {v2}, Lru/rocketbank/core/realm/RealmString;->realmGet$string()Ljava/lang/String;

    move-result-object v7

    .line 47
    :cond_4
    invoke-virtual {v6, v7}, Lru/rocketbank/core/model/shop/ShopItem;->findColor(Ljava/lang/String;)Lru/rocketbank/core/model/shop/Color;

    move-result-object v2

    invoke-direct {v3, v6, v4, v5, v2}, Lru/rocketbank/core/model/shop/CartItem;-><init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V

    goto :goto_4

    :cond_5
    move-object v3, v7

    :goto_4
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_6
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 50
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    new-instance v1, Lru/rocketbank/core/model/shop/Cart;

    invoke-direct {v1, p1}, Lru/rocketbank/core/model/shop/Cart;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->setCart(Lru/rocketbank/core/model/shop/Cart;)V

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;->$subscriber:Lrx/Subscriber;

    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$2;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
