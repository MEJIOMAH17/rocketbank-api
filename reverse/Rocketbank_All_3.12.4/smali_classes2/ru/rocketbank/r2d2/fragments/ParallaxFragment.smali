.class public Lru/rocketbank/r2d2/fragments/ParallaxFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ParallaxFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private headerHeight:I

.field private headerLayout:Landroid/view/View;

.field private observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

.field private parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

.field private parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

.field private parallaxSize:I

.field private toolbarHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic createParallax$default(Lru/rocketbank/r2d2/fragments/ParallaxFragment;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;IILjava/lang/Object;)V
    .locals 0

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createParallax"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 33
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->createParallax(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final addFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 4

    const-string v0, "fab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v2, :cond_0

    iget v3, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->windowWidth:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->addFab(ILandroid/support/design/widget/FloatingActionButton;II)V

    return-void

    :cond_0
    return-void
.end method

.method protected final createParallax(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;I)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parallaxData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p4, :cond_0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f07015f

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 37
    :cond_0
    iput p4, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxSize:I

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-nez p1, :cond_1

    .line 45
    new-instance p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    const/4 v1, 0x0

    .line 46
    iget v2, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    .line 47
    iget v3, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxSize:I

    .line 49
    iget v5, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->toolbarHeight:I

    move-object v0, p1

    move-object v4, p2

    .line 45
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;-><init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->update(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_3

    const-string p4, "observableRecyclerView"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_5

    .line 55
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-direct {p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object p4, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p4, :cond_4

    const-string v0, "observableRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p4, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-nez p1, :cond_6

    .line 60
    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->newAdaperInstance(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    goto :goto_1

    .line 62
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz p1, :cond_8

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerLayout:Landroid/view/View;

    if-nez p3, :cond_7

    const-string p4, "headerLayout"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->setAppBarLayout(Landroid/view/View;)V

    .line 63
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->setParallaxData(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V

    .line 66
    :cond_9
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_a

    const-string p2, "observableRecyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast p1, Landroid/view/WindowManager;

    .line 69
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 71
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 73
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->windowWidth:I

    return-void
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 24
    iget v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    return v0
.end method

.method public final getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-object v0
.end method

.method public final getParallaxSize()I
    .locals 1

    .line 26
    iget v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxSize:I

    return v0
.end method

.method public final getToolbarHeight()I
    .locals 1

    .line 25
    iget v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->toolbarHeight:I

    return v0
.end method

.method public newAdaperInstance(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
    .locals 4

    if-nez p1, :cond_2

    .line 77
    new-instance p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    if-nez v0, :cond_0

    const-string v1, "parallaxData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    .line 79
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerLayout:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v3, "headerLayout"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-direct {p1, v0, v2, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    :cond_2
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 133
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "observableRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 125
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "observableRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemChanged(I)V

    return-void

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onRestore(Landroid/os/Bundle;)V

    return-void

    :cond_0
    return-void
.end method

.method protected final parallaxHeightToView(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    return-void
.end method

.method public final setParallaxAdapter(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-void
.end method

.method public final setParallaxSize(I)V
    .locals 0

    .line 26
    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->parallaxSize:I

    return-void
.end method

.method public final setToolbarHeight(I)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->toolbarHeight:I

    return-void
.end method

.method protected final setupView(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V
    .locals 2

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realToolbar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->getStatusBarHeight()I

    move-result v0

    .line 84
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 85
    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 88
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v1, p1

    int-to-float v1, v1

    .line 89
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 91
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 92
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 95
    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->toolbarHeight:I

    .line 96
    iget p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerHeight:I

    .line 97
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->headerLayout:Landroid/view/View;

    return-void
.end method
