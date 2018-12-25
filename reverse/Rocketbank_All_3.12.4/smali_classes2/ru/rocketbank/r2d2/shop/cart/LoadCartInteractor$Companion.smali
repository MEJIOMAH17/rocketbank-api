.class public final Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;
.super Ljava/lang/Object;
.source "LoadCartInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCart()Lru/rocketbank/core/model/shop/Cart;
    .locals 1

    .line 19
    invoke-static {}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->access$getCart$cp()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    return-object v0
.end method

.method public final setCart(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->access$setCart$cp(Lru/rocketbank/core/model/shop/Cart;)V

    return-void
.end method
