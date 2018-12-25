.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreateOptionsMenu$1;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreateOptionsMenu$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 254
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreateOptionsMenu$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreateOptionsMenu$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->access$getCurrentToolbarColor$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreateOptionsMenu$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->colorizeToolbar(Landroid/support/v7/widget/Toolbar;ILandroid/app/Activity;)V

    return-void
.end method
