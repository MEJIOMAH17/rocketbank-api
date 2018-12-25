.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showItem(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $shopItem:Lru/rocketbank/core/model/shop/ShopItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    const-string v1, "shopItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->addToCart(Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void
.end method
