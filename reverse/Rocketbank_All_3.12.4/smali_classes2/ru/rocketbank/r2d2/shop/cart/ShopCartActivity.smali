.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "ShopCartActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;

.field private static final REQUEST_CODE:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

.field public shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    return-void
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .line 29
    sget v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->REQUEST_CODE:I

    return v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->createPresenter()Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;
    .locals 2

    .line 41
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "df346d56-a4d2-48c4-8da8-9f5411566c8f"

    const-class v1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/lang/String;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    return-object v0
.end method

.method public final enableCheckoutButton(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->getEnableCheckoutButton()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final getData()Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    return-object v0
.end method

.method public final getShopCartAdapter()Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;
    .locals 2

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hideDeficit()V
    .locals 3

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->setDeficit(D)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    sget p3, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->REQUEST_CODE:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final onCartLoaded(Lru/rocketbank/core/model/shop/Cart;D)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "cart"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v3, v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    .line 91
    iget-object v10, v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v10, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/shop/Cart;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v12

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->setData(Ljava/util/List;DD)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c005a

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ayout.activity_shop_cart)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    .line 46
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f1100a5

    .line 48
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->setTitle(I)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->setData(Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/shop/ShopViewInterface;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->setView(Lru/rocketbank/r2d2/shop/ShopViewInterface;)V

    .line 53
    new-instance p1, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$3;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    .line 54
    sget p1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    sget p1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_1

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    sget p1, Lru/rocketbank/r2d2/R$id;->checkoutButton:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$onCreate$4;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onItemDeleted(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 2

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->delete(Lru/rocketbank/core/model/shop/CartItem;)V

    return-void
.end method

.method public final onItemsEmpty()V
    .locals 7

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final onItemsLoadingError()V
    .locals 7

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final onLoadingInProgress()V
    .locals 7

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->data:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method protected final onStart()V
    .locals 4

    .line 60
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStart()V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter$DefaultImpls;->load$default(Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter$DefaultImpls;->load$default(Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setShopCartAdapter(Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    return-void
.end method

.method public final showCheckoutActivity(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 2

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/shop/Cart;)Landroid/content/Intent;

    move-result-object p1

    sget v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 2

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->Companion:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void
.end method

.method public final showRocketrublesInfo()V
    .locals 6

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->getInfoButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    .line 124
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_1
    const/4 v3, 0x0

    .line 126
    aget v4, v2, v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    div-int/2addr v5, v1

    add-int/2addr v4, v5

    const/4 v5, 0x1

    .line 127
    aget v2, v2, v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_3
    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 128
    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, v5, v4, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->startActivity(Landroid/content/Context;ZII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final updateAmount(D)V
    .locals 2

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->getAmount()Landroid/databinding/ObservableDouble;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/databinding/ObservableDouble;->set(D)V

    return-void
.end method

.method public final updateDeficit(D)V
    .locals 2

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->shopCartAdapter:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopCartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->setDeficit(D)V

    return-void
.end method
