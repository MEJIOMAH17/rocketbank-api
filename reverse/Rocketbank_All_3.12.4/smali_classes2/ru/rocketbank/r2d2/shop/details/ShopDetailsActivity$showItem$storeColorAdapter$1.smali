.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;
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
        "Lru/rocketbank/core/model/shop/Color;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;->invoke(Lru/rocketbank/core/model/shop/Color;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/Color;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->selectColor(Lru/rocketbank/core/model/shop/Color;)V

    return-void
.end method
