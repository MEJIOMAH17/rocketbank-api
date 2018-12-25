.class final Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopCartActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->onInfoClick()V

    return-void
.end method
