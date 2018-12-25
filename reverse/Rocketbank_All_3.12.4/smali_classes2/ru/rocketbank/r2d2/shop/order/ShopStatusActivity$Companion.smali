.class public final Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;
.super Ljava/lang/Object;
.source "ShopStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/shop/Cart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressObject"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lru/rocketbank/r2d2/activities/StatusActivity;->Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    check-cast p1, Landroid/content/Context;

    const-class v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;

    const v2, 0x7f110421

    invoke-virtual {v0, p1, v1, v2}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p1

    .line 76
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->access$getKEY_CART$cp()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->access$getKEY_ADDRESS_STRING$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->access$getKEY_ADDRESS_OBJECT$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->access$getKEY_COMMENT$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
