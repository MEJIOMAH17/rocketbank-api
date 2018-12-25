.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_STORE_ITEM()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->access$getKEY_STORE_ITEM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startActivity(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shopItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;->getKEY_STORE_ITEM()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
