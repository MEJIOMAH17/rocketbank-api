.class public final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "ShopOrderActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopOrderActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopOrderActivity.kt\nru/rocketbank/r2d2/shop/order/ShopOrderActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,277:1\n49#2,2:278\n*E\n*S KotlinDebug\n*F\n+ 1 ShopOrderActivity.kt\nru/rocketbank/r2d2/shop/order/ShopOrderActivity\n*L\n67#1,2:278\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

.field private static final KEY_CART:Ljava/lang/String; = "KEY_CART"

.field private static final REQUEST_CODE:I

.field private static addressData:Lru/rocketbank/core/network/model/AddressData;

.field private static commentText:Ljava/lang/String;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

.field private data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

.field private subscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 37
    new-instance v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    return-void
.end method

.method public static final synthetic access$checkAddress(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->checkAddress()V

    return-void
.end method

.method public static final synthetic access$getAddressData$cp()Lru/rocketbank/core/network/model/AddressData;
    .locals 1

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    return-object v0
.end method

.method public static final synthetic access$getCommentText$cp()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getData$p(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    return-object p0
.end method

.method public static final synthetic access$getKEY_CART$cp()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->KEY_CART:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .line 33
    sget v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->REQUEST_CODE:I

    return v0
.end method

.method public static final synthetic access$setAddressData$cp(Lru/rocketbank/core/network/model/AddressData;)V
    .locals 0

    .line 33
    sput-object p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    return-void
.end method

.method public static final synthetic access$setCommentText$cp(Ljava/lang/String;)V
    .locals 0

    .line 33
    sput-object p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->commentText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setData$p(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    return-void
.end method

.method private final checkAddress()V
    .locals 3

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddressIsValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    .line 114
    sget v0, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const v2, 0x7f080297

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 115
    sget v0, Lru/rocketbank/r2d2/R$id;->addressError:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "addressError"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 116
    sget v0, Lru/rocketbank/r2d2/R$id;->addressError:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const v1, 0x7f1104e5

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final back()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->createPresenter()Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;
    .locals 2

    .line 35
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "45ef247a-062b-4194-98fb-e87fc201a5e8"

    const-class v1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/lang/String;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    return-object v0
.end method

.method public final getArrayAdapter()Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez v0, :cond_0

    const-string v1, "arrayAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSubscription()Lrx/Subscription;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    sget p3, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->REQUEST_CODE:I

    if-eq p1, p3, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->onResult(Z)V

    return-void
.end method

.method public final onConfirmed(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 7

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/AddressData;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/AddressData;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/AddressData;->getData()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "addressData!!.data.toString()"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getComment()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/shop/order/ShopStatusActivity$Companion;->createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/shop/Cart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c005d

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026yout.activity_shop_order)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->setData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V

    .line 84
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f110411

    .line 86
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->setTitle(I)V

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/shop/ShopViewInterface;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->setView(Lru/rocketbank/r2d2/shop/ShopViewInterface;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->setData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->KEY_CART:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "intent.getParcelableExtra<Cart>(KEY_CART)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/core/model/shop/Cart;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->init(Lru/rocketbank/core/model/shop/Cart;)V

    .line 90
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonConfirm:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonHaveQuestion:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance p1, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    .line 93
    sget p1, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    sget p1, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    const-string v1, "address"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 102
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez p1, :cond_1

    const-string v1, "arrayAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->setNotifyOnChange(Z)V

    .line 103
    sget p1, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez v1, :cond_2

    const-string v2, "arrayAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    sget-object p1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-eqz p1, :cond_6

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->setAddressIsValid(Z)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 107
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez p1, :cond_4

    const-string v1, "arrayAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-array v0, v0, [Lru/rocketbank/core/network/model/AddressData;

    const/4 v1, 0x0

    sget-object v2, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->addressData:Lru/rocketbank/core/network/model/AddressData;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->setItems([Lru/rocketbank/core/network/model/AddressData;)V

    .line 109
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getComment()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->commentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void

    :cond_7
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->unsubscribe(Lrx/Subscription;)V

    .line 143
    sget v0, Lru/rocketbank/r2d2/R$id;->comment:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "comment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->commentText:Ljava/lang/String;

    .line 144
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 4

    .line 121
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onResume()V

    .line 122
    sget v0, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    .line 124
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 125
    sget-object v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;->INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 126
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 127
    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$2;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->subscription:Lrx/Subscription;

    return-void
.end method

.method public final setArrayAdapter(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    return-void
.end method

.method public final setConfirmButtonEnabled(Z)V
    .locals 2

    .line 59
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonConfirm:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "buttonConfirm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->subscription:Lrx/Subscription;

    return-void
.end method

.method public final showAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/AddressData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addressList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez v0, :cond_0

    const-string v1, "arrayAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 279
    new-array v2, v1, [Lru/rocketbank/core/network/model/AddressData;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [Lru/rocketbank/core/network/model/AddressData;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->setItems([Lru/rocketbank/core/network/model/AddressData;)V

    .line 68
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->arrayAdapter:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;

    if-nez p1, :cond_2

    const-string v0, "arrayAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;->notifyDataSetChanged()V

    .line 69
    sget p1, Lru/rocketbank/r2d2/R$id;->addressProgressBar:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "addressProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    sget p1, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 71
    sget p1, Lru/rocketbank/r2d2/R$id;->addressError:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "addressError"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddressIsValid()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_7

    .line 73
    sget p1, Lru/rocketbank/r2d2/R$id;->address:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    .line 76
    :cond_6
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->checkAddress()V

    :cond_7
    return-void
.end method

.method public final showAmount(D)V
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getPrice()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createCartItemAmountText(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final showShopInfo()V
    .locals 2

    .line 63
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method
