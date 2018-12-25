.class final Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;
.super Ljava/lang/Object;
.source "LoadShopItemsInteractor.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->getObservable()Lrx/Observable;
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


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;->INSTANCE:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;->call(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
