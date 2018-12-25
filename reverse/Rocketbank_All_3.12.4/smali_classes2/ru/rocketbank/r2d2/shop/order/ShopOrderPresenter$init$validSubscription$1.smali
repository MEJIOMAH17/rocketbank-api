.class final Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;
.super Ljava/lang/Object;
.source "ShopOrderPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->init(Lru/rocketbank/core/model/shop/Cart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->access$updateConfirmButton(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;Z)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
