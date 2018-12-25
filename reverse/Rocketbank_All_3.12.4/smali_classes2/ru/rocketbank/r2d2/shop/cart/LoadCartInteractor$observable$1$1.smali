.class final Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;
.super Ljava/lang/Object;
.source "LoadCartInteractor.kt"

# interfaces
.implements Lrx/functions/Func2;


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
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "TT1;TT2;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;->INSTANCE:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1$1;->call(Ljava/util/List;Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/List;Ljava/util/List;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
