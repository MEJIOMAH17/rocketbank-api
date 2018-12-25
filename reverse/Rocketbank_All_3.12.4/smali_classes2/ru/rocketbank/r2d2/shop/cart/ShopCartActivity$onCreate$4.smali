.class final Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$4;
.super Ljava/lang/Object;
.source "ShopCartActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$4;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$4;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->checkout()V

    return-void
.end method
