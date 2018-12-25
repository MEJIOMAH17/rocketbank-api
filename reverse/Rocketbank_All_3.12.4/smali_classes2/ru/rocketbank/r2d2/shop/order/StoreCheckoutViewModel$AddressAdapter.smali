.class public final Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShopOrderActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopOrderActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopOrderActivity.kt\nru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,277:1\n25#2,2:278\n25#2,2:280\n*E\n*S KotlinDebug\n*F\n+ 1 ShopOrderActivity.kt\nru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter\n*L\n207#1,2:278\n213#1,2:280\n*E\n"
.end annotation


# instance fields
.field private final TYPE_ADDRESS:I

.field private final TYPE_HOMEADDRESS:I

.field private final TYPE_NOT_FOUND:I

.field private items:[Lru/rocketbank/core/network/model/AddressData;

.field private final valueFilter:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f0c01a8

    .line 207
    invoke-direct {p0, p1, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 209
    iput p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_ADDRESS:I

    const/4 p1, 0x2

    .line 210
    iput p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_HOMEADDRESS:I

    .line 281
    new-array p1, v0, [Lru/rocketbank/core/network/model/AddressData;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    .line 249
    new-instance p1, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter$valueFilter$1;-><init>(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;)V

    check-cast p1, Landroid/widget/Filter;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->valueFilter:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public final find(Ljava/lang/String;)Lru/rocketbank/core/network/model/AddressData;
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/AddressData;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCount()I
    .locals 2

    .line 222
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    const/4 v1, 0x1

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    array-length v0, v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->valueFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_NOT_FOUND:I

    return p1

    :cond_1
    iget p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_ADDRESS:I

    return p1
.end method

.method public final getItems()[Lru/rocketbank/core/network/model/AddressData;
    .locals 1

    .line 213
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    return-object v0
.end method

.method public final getTYPE_ADDRESS()I
    .locals 1

    .line 209
    iget v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_ADDRESS:I

    return v0
.end method

.method public final getTYPE_HOMEADDRESS()I
    .locals 1

    .line 210
    iget v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_HOMEADDRESS:I

    return v0
.end method

.method public final getTYPE_NOT_FOUND()I
    .locals 1

    .line 208
    iget v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_NOT_FOUND:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 228
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->getItemViewType(I)I

    move-result v0

    .line 231
    iget v1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_NOT_FOUND:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 232
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01a9

    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p1, "LayoutInflater.from(cont\u2026not_found, parent, false)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p2

    .line 234
    :cond_1
    iget v1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_ADDRESS:I

    if-eq v0, v1, :cond_4

    iget v1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->TYPE_HOMEADDRESS:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 242
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    if-nez p2, :cond_5

    .line 235
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c01a8

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "LayoutInflater.from(cont\u2026ress_item, parent, false)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    :cond_5
    iget-object p3, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    aget-object p1, p3, p1

    .line 237
    sget p3, Lru/rocketbank/r2d2/R$id;->textAddress:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.textAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/AddressData;->getValue()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    sget p3, Lru/rocketbank/r2d2/R$id;->textCity:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.textCity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/AddressData;->getCity()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length p1, p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final setItems([Lru/rocketbank/core/network/model/AddressData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->items:[Lru/rocketbank/core/network/model/AddressData;

    return-void
.end method
