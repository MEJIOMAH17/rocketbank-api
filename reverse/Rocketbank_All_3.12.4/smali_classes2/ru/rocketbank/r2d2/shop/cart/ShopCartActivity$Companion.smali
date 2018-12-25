.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;
.super Ljava/lang/Object;
.source "ShopCartActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getREQUEST_CODE()I
    .locals 1

    .line 35
    invoke-static {}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->access$getREQUEST_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final startActivity(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
