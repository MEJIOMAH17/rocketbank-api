.class public final Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;
.super Lru/rocketbank/r2d2/activities/StatusActivity;
.source "ShopStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/StatusActivity<",
        "Lru/rocketbank/core/model/shop/ShopOrderResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;

.field private static final KEY_ADDRESS_OBJECT:Ljava/lang/String; = "KEY_ADDRESS_OBJECT"

.field private static final KEY_ADDRESS_STRING:Ljava/lang/String; = "KEY_ADDRESS_STRING"

.field private static final KEY_CART:Ljava/lang/String; = "KEY_CART"

.field private static final KEY_COMMENT:Ljava/lang/String; = "KEY_COMMENT"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addressObject:Ljava/lang/String;

.field private addressString:Ljava/lang/String;

.field private cart:Lru/rocketbank/core/model/shop/Cart;

.field private final cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

.field private comment:Ljava/lang/String;

.field private final contentView:I

.field private final shopApi:Lru/rocketbank/core/network/api/ShopApi;

.field private final successStatusText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;-><init>()V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    const v0, 0x7f0c005e

    .line 40
    iput v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->contentView:I

    const v0, 0x7f11032e

    .line 42
    iput v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->successStatusText:I

    return-void
.end method

.method public static final synthetic access$getKEY_ADDRESS_OBJECT$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_ADDRESS_OBJECT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ADDRESS_STRING$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_ADDRESS_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CART$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_CART:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_COMMENT$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_COMMENT:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getContentView()I
    .locals 1

    .line 40
    iget v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->contentView:I

    return v0
.end method

.method protected final getOperation()Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/shop/ShopOrderResponse;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->cart:Lru/rocketbank/core/model/shop/Cart;

    if-nez v1, :cond_0

    const-string v2, "cart"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->comment:Ljava/lang/String;

    new-instance v3, Lru/rocketbank/core/model/shop/ShopOrder$Address;

    iget-object v4, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->addressString:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v5, "addressString"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v5, Landroid/support/v7/appcompat/R$attr;

    invoke-direct {v5}, Landroid/support/v7/appcompat/R$attr;-><init>()V

    iget-object v5, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->addressObject:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v6, "addressObject"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1045
    :cond_2
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/support/v7/appcompat/R$attr;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v6, "JsonParser().parse(addressObject)"

    .line 45
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lru/rocketbank/core/model/shop/ShopOrder$Address;-><init>(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/model/shop/Cart;->order(Ljava/lang/String;Lru/rocketbank/core/model/shop/ShopOrder$Address;)Lru/rocketbank/core/model/shop/ShopOrder;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/ShopApi;->order(Lru/rocketbank/core/model/shop/ShopOrder;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected final getSuccessStatusText()I
    .locals 1

    .line 42
    iget v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->successStatusText:I

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_CART:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtra<Cart>(KEY_CART)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/shop/Cart;

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->cart:Lru/rocketbank/core/model/shop/Cart;

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_COMMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->comment:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_ADDRESS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getStringExtra(KEY_ADDRESS_STRING)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->addressString:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->KEY_ADDRESS_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getStringExtra(KEY_ADDRESS_OBJECT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->addressObject:Ljava/lang/String;

    .line 37
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 23
    check-cast p1, Lru/rocketbank/core/model/shop/ShopOrderResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->onNext(Lru/rocketbank/core/model/shop/ShopOrderResponse;)V

    return-void
.end method

.method protected final onNext(Lru/rocketbank/core/model/shop/ShopOrderResponse;)V
    .locals 3

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopOrderResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewLarge:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "textViewLarge"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, -0x1

    .line 50
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->setResult(I)V

    .line 51
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    .line 54
    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "textViewStatus"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 55
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopOrderResponse;->getError()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 57
    :cond_1
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    .line 58
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewLarge:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "textViewLarge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f11041f

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 23
    check-cast p1, Lru/rocketbank/core/model/shop/ShopOrderResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->onSuccess(Lru/rocketbank/core/model/shop/ShopOrderResponse;)V

    return-void
.end method

.method protected final onSuccess(Lru/rocketbank/core/model/shop/ShopOrderResponse;)V
    .locals 6

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    .line 65
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;

    sget-object p1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->cart:Lru/rocketbank/core/model/shop/Cart;

    if-nez p1, :cond_0

    const-string v1, "cart"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-direct {v0, p1, v1}, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;-><init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartStorage;)V

    sget-object p1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;->INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$onSuccess$1;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
