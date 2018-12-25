.class public final Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "NewSafeFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

.field private safeAccountsAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;

.field private tabs:Landroid/support/design/widget/TabLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method private final setupToolbar()V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->getStatusBarHeight()I

    move-result v0

    .line 82
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez v1, :cond_0

    const-string v2, "fragmentNewSafeBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->appBar:Landroid/support/design/widget/AppBarLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 83
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez v2, :cond_1

    const-string v3, "fragmentNewSafeBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->appBar:Landroid/support/design/widget/AppBarLayout;

    const-string v3, "fragmentNewSafeBinding.appBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/support/design/widget/AppBarLayout;->setMinimumHeight(I)V

    .line 85
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez v1, :cond_2

    const-string v2, "fragmentNewSafeBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f080143

    .line 87
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    const v2, 0x7f110337

    .line 88
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const v3, 0x7f060228

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 90
    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 91
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$setupToolbar$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$setupToolbar$1;-><init>(Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 28
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    move-result-object p1

    const-string p2, "FragmentNewSafeBinding.i\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    .line 30
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez p1, :cond_0

    const-string p2, "fragmentNewSafeBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->slidingTabs:Landroid/support/design/widget/TabLayout;

    const-string p2, "fragmentNewSafeBinding.slidingTabs"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->tabs:Landroid/support/design/widget/TabLayout;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez p1, :cond_1

    const-string p2, "fragmentNewSafeBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->viewpager:Landroid/support/v4/view/ViewPager;

    const-string p2, "fragmentNewSafeBinding.viewpager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->tabs:Landroid/support/design/widget/TabLayout;

    if-nez p1, :cond_2

    const-string p2, "tabs"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez p2, :cond_3

    const-string p3, "viewPager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 33
    new-instance p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string p3, "childFragmentManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->safeAccountsAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez p1, :cond_4

    const-string p2, "fragmentNewSafeBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->viewpager:Landroid/support/v4/view/ViewPager;

    const-string p2, "fragmentNewSafeBinding.viewpager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->safeAccountsAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;

    if-nez p2, :cond_5

    const-string p3, "safeAccountsAdapter"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast p2, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez p1, :cond_6

    const-string p2, "fragmentNewSafeBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 98
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->fragmentNewSafeBinding:Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    if-nez v0, :cond_0

    const-string v1, "fragmentNewSafeBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110337

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 4

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 46
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAvailableAccounts()Ljava/util/ArrayList;

    move-result-object p1

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->tabs:Landroid/support/design/widget/TabLayout;

    if-nez v1, :cond_0

    const-string v2, "tabs"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    .line 75
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->safeAccountsAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;

    if-nez v2, :cond_1

    const-string v3, "safeAccountsAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v3, "accounts"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->swap(Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_2

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->setupToolbar()V

    return-void
.end method
