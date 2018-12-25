.class public final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Lru/rocketbank/core/model/shop/Cart;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;->getKEY_CART()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final getAddressData()Lru/rocketbank/core/network/model/AddressData;
    .locals 1

    .line 44
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getAddressData$cp()Lru/rocketbank/core/network/model/AddressData;

    move-result-object v0

    return-object v0
.end method

.method public final getCommentText()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getCommentText$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_CART()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getKEY_CART$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getREQUEST_CODE()I
    .locals 1

    .line 43
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getREQUEST_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final setAddressData(Lru/rocketbank/core/network/model/AddressData;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$setAddressData$cp(Lru/rocketbank/core/network/model/AddressData;)V

    return-void
.end method

.method public final setCommentText(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$setCommentText$cp(Ljava/lang/String;)V

    return-void
.end method
