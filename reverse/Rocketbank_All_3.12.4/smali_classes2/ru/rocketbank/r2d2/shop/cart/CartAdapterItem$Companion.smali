.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;
.super Ljava/lang/Object;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getITEM_TYPE_AMOUNT()I
    .locals 1

    .line 124
    invoke-static {}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->access$getITEM_TYPE_AMOUNT$cp()I

    move-result v0

    return v0
.end method

.method public final getITEM_TYPE_CART_ITEM()I
    .locals 1

    .line 125
    invoke-static {}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->access$getITEM_TYPE_CART_ITEM$cp()I

    move-result v0

    return v0
.end method

.method public final getITEM_TYPE_DEFICIT()I
    .locals 1

    .line 126
    invoke-static {}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->access$getITEM_TYPE_DEFICIT$cp()I

    move-result v0

    return v0
.end method
