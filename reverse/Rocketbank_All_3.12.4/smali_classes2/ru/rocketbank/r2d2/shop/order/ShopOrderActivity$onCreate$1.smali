.class final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->confirm()V

    return-void
.end method
