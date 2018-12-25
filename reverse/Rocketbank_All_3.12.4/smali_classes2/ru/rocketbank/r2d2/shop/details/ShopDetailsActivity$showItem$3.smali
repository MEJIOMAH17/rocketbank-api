.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;
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

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;->$shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes_table_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
