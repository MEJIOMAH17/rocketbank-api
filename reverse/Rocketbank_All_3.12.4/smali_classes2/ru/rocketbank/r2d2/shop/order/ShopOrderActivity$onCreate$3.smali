.class final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopOrderActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopOrderActivity.kt\nru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3\n*L\n1#1,277:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_3

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$getData$p(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_3

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    sget p2, Lru/rocketbank/r2d2/R$id;->addressError:I

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "addressError"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    sget p2, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    .line 98
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->access$checkAddress(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    return-void
.end method
