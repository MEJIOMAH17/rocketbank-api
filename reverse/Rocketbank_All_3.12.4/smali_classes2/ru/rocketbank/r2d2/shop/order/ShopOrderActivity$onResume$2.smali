.class final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->onResume()V
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
        "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V
    .locals 3

    .line 128
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getArrayAdapter()Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->find(Ljava/lang/String;)Lru/rocketbank/core/network/model/AddressData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;->setAddressData(Lru/rocketbank/core/network/model/AddressData;)V

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getData$p(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;->getAddressData()Lru/rocketbank/core/network/model/AddressData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->setAddressIsValid(Z)V

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getData$p(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddressIsValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->addressProgressBar:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "addressProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->onAddressTyped(Ljava/lang/String;)V

    .line 134
    sget-object p1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;->setAddressData(Lru/rocketbank/core/network/model/AddressData;)V

    return-void

    .line 136
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$checkAddress(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;->call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V

    return-void
.end method
