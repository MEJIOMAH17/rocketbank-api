.class final Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopOrderActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;->invoke(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddressIsValid()Z

    move-result p1

    return p1
.end method
