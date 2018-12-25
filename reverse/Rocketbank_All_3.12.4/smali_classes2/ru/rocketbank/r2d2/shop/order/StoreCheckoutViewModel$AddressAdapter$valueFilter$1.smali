.class public final Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;
.super Landroid/widget/Filter;
.source "ShopOrderActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "resultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 255
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->getItems()[Lru/rocketbank/core/network/model/AddressData;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 258
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->getItems()[Lru/rocketbank/core/network/model/AddressData;

    move-result-object p1

    array-length p1, p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :cond_0
    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 264
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 265
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->notifyDataSetChanged()V

    return-void

    .line 267
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;->this$0:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
