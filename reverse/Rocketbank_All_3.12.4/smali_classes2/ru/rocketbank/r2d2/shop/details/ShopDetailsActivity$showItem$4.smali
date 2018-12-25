.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showItem(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/shop/Size;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Landroid/view/View;

.field final synthetic $shopItem:Lru/rocketbank/core/model/shop/ShopItem;

.field final synthetic $storeColorAdapter:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Lru/rocketbank/core/model/shop/ShopItem;Landroid/view/View;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$colors:Landroid/view/View;

    iput-object p4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$storeColorAdapter:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lru/rocketbank/core/model/shop/Size;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->invoke(Lru/rocketbank/core/model/shop/Size;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/Size;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->selectSize(Lru/rocketbank/core/model/shop/Size;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/shop/ShopItem;->filterColors(Lru/rocketbank/core/model/shop/Size;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$colors:Landroid/view/View;

    const-string v1, "colors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$storeColorAdapter:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->setColors(Ljava/util/List;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$colors:Landroid/view/View;

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;->$storeColorAdapter:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->notifyDataSetChanged()V

    return-void
.end method
