.class final Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopStatusActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->onSuccess(Lru/rocketbank/core/model/shop/ShopOrderResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/shop/Cart;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;->INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lru/rocketbank/core/model/shop/Cart;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;->invoke(Lru/rocketbank/core/model/shop/Cart;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
