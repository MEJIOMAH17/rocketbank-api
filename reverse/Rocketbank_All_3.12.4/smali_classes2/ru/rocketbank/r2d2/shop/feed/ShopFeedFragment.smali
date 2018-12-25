.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;
.super Lru/rocketbank/r2d2/fragments/PresenterFragment;
.source "ShopFeedFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/PresenterFragment<",
        "Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;

.field private static items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

.field public shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->Companion:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;-><init>()V

    .line 29
    new-instance v0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    return-void
.end method

.method public static final synthetic access$getItems$cp()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getPresenter$p(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    return-object p0
.end method

.method public static final synthetic access$setItems$cp(Ljava/util/List;)V
    .locals 0

    .line 24
    sput-object p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->createPresenter()Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;
    .locals 2

    .line 32
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "d560c71c-400c-45e3-a40d-d8011ce08409"

    const-class v1, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/lang/String;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    return-object v0
.end method

.method public final getData()Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    return-object v0
.end method

.method public final getShopFeedAdapter()Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopFeedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hideCartButton()V
    .locals 2

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getCartButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/shop/ShopViewInterface;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->setView(Lru/rocketbank/r2d2/shop/ShopViewInterface;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->setData(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;)V

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 44
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    const-string p2, "view"

    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    const p3, 0x7f110421

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 46
    sget p2, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    const-string p3, "view.recyclerView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 47
    sget p2, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    const-string p3, "view.recyclerView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    if-nez p3, :cond_0

    const-string v0, "shopFeedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 48
    sget p2, Lru/rocketbank/r2d2/R$id;->cartButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    new-instance p3, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onItemsEmpty()V
    .locals 7

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final onItemsLoaded(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    .line 63
    sput-object p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->items:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    if-nez v0, :cond_0

    const-string v1, "shopFeedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public final onItemsLoadingError()V
    .locals 7

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

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

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->loadItems()V

    return-void
.end method

.method public final setShopFeedAdapter(Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->shopFeedAdapter:Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;

    return-void
.end method

.method public final showCart()V
    .locals 3

    .line 80
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;->startActivity(Landroid/content/Context;)V

    return-void
.end method

.method public final showCartButton(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getCartSize()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->data:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getCartButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 3

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->Companion:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void
.end method
